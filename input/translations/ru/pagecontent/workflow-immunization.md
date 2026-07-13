В этом рабочем процессе показано, как национальный календарь вакцинации используется для формирования персонализированной рекомендации, как пациент проходит этапы записи, консультации и визита для вакцинации и как регистрируется введённая доза вакцины. Все используемые здесь ресурсы профилированы в UZ Core.

Участники: руководитель программы вакцинации / ответственный за управление данными (ведёт календарь); медицинский регистратор (записывает пациента); пациент или родитель/законный представитель (просматривает рекомендации); врач и медсестра (оценивают возможность проведения вакцинации и вводят вакцину). Клинические визиты представлены в FHIR ресурсами [Encounter](StructureDefinition-uz-core-encounter.html): один Encounter для консультации и отдельный Encounter для вакцинации.

Последовательность процесса:

<div>{% include immunization-flow.svg %}</div><br clear="all"/>

### 1. Календарь вакцинации в виде кода

Национальный календарь вакцинации публикуется в виде одного ресурса [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html). Каждая рекомендуемая доза представлена отдельным `PlanDefinition.action`; сведения о вакцине и дозировании задаются в action через `definitionCanonical`, содержащий reference на `ActivityDefinition`. Целевой возраст или расписание задаётся в `action.timing[x]` (`Age` или `Timing`); минимальные интервалы между дозами задаются в `action.relatedAction.offsetDuration`; критерии применимости - в `action.condition`.

```
GET [base]/PlanDefinition?status=active&context-type-value=focus$http://snomed.info/sct|33879002
```

> Для каждой области применения или юрисдикции одновременно может быть активна только одна версия календаря. Календарь должен соответствовать правилам валидации: без пропусков в последовательности доз, недопустимых временных интервалов и двух пересекающихся активных версий. См. страницу [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html).

### 2. Формирование рекомендации

Механизм формирования рекомендаций анализирует активный PlanDefinition, имеющуюся историю [Immunization](StructureDefinition-uz-core-immunization.html) пациента и его демографические данные, после чего формирует [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html). Каждая запись содержит `vaccineCode` и/или `targetDisease`, `doseNumber`, `forecastStatus` (due, overdue, …) и `dateCriterion` (наиболее ранняя, рекомендуемая и наиболее поздняя даты).

```
# получить актуальные рекомендации для пациента
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# получить уже введённые дозы
GET [base]/Immunization?patient=Patient/[id]&status=completed
```

Рекомендация обычно *рассчитывается* механизмом на основе календаря и истории пациента - клиентские системы отображают её. Во время консультации медицинский работник также может просмотреть рекомендацию или создать её, если механизм её не сформировал.

### 3. Консультация в рамках Encounter

Медицинская помощь оказывается в рамках [Encounter](StructureDefinition-uz-core-encounter.html). Запись пациента и консультация проводятся в рамках одного консультационного Encounter, который сохраняется на протяжении всего визита и чей `status` меняется по мере прохождения его этапов. Для каждого медицинского работника новый Encounter не создаётся:

- Медицинский регистратор записывает пациента и создаёт Encounter со `status = planned`. `subject` указывает на пациента, `serviceProvider` - на клинику, а `participant` содержит регистратора и назначенную медсестру. После этого пациент появляется в рабочем списке этой медсестры.
- Медсестра открывает визит для первичного приёма и переводит тот же Encounter в `status = in-progress`, указывая `reason` визита и `actualPeriod`.
- Семейный врач осматривает пациента в рамках того же Encounter, просматривает или создаёт [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) и связывает её с Encounter, установив в `Encounter.reason` reference на эту рекомендацию. По завершении консультации Encounter переводится в `status = completed`.

```
# регистратор записывает пациента (консультационный Encounter)
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "planned",
  "subject": { "reference": "Patient/[id]" },
  "serviceProvider": { "reference": "Organization/[clinic]" },
  "participant": [{ "actor": { "reference": "Practitioner/[nurse]" } }]
}

# медсестра открывает визит
PUT [base]/Encounter/[id]    # status -> in-progress, заполнить reason и actualPeriod

# врач связывает рекомендацию и завершает консультацию
PUT [base]/Encounter/[id]    # reason -> ImmunizationRecommendation, status -> completed
```

### 4. Введение дозы

Вакцинация обычно проводится в другом учреждении и в другой день, чем консультация, поэтому она регистрируется в отдельном Encounter, а не в консультационном. Для введения вакцины медсестра открывает этот Encounter для вакцинации (`status = in-progress`), а затем регистрирует ресурс [Immunization](StructureDefinition-uz-core-immunization.html), который ссылается на него через `Immunization.encounter` и на рекомендацию через `Immunization.basedOn`. Исход указывается в `status`:

| Исход | `Immunization.status` | Также заполнить |
|---------|------------------------|----------|
| Вакцина введена | `completed` | `occurrence`, `vaccineCode`, `administeredProduct`, `lotNumber`, `doseQuantity`, `performer` |
| Медицинский отвод | `not-done` | `statusReason` = `MEDPREC` (медицинское противопоказание) или `IMMUNE` (наличие иммунитета) |
| Отказ | `not-done` | `statusReason` = `PATOBJ` (отказ пациента) |
| Препарат отсутствует | `not-done` | `statusReason` = `OSTOCK` (препарат отсутствует в наличии) |
| Запись создана ошибочно | `entered-in-error` | - |

`statusReason` имеет обязательную привязку (required) к [ValueSet причин статуса Immunization](ValueSet-immunization-status-reason-vs.html); перечисленные выше четыре кода из HL7 v3 ActReason являются единственными допустимыми значениями.

```
POST [base]/Immunization
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03" }] },
  "patient": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[vaccination-encounter-id]" },
  "basedOn": [{ "reference": "ImmunizationRecommendation/[id]" }],
  "occurrenceDateTime": "2026-05-30",
  "lotNumber": "AB-2231",
  "performer": [{ "actor": { "reference": "PractitionerRole/[id]" } }],
  "protocolApplied": [{ "doseNumberPositiveInt": 1 }]
}
```

> Доза однозначно идентифицируется комбинацией patient + vaccineCode + occurrence + lotNumber. Не отправляйте одну и ту же комбинацию повторно.

### 5. Регистрация реакции при её наличии

Если у пациента возникла реакция после вакцинации, зарегистрируйте ресурс [AdverseEvent](StructureDefinition-uz-core-adverse-event.html), в котором `suspectEntity` содержит reference на Immunization, и при необходимости добавьте [Observation](StructureDefinition-uz-core-observation.html) с описанием реакции.

### Связанные материалы

- Профили: [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) &middot; [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Immunization](StructureDefinition-uz-core-immunization.html) &middot; [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)
- [Обзор рабочих процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
