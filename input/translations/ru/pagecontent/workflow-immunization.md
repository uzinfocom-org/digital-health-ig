> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Этот рабочий процесс показывает, как национальный календарь иммунизации формирует персонализированную рекомендацию и как регистрируется введённая доза вакцины. Все четыре ресурса, используемые здесь, профилированы в UZ Core.

Участники: менеджер программы иммунизации / распорядитель данных (поддерживает календарь); пациент или родитель/опекун (просматривает рекомендации); врач и медсестра (оценивают показания и проводят вакцинацию).

Цепочка:

<div>{% include immunization-flow.svg %}</div><br clear="all"/>

### 1. Календарь как код

Национальный календарь публикуется один раз в виде [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html). Каждая рекомендованная доза — это `PlanDefinition.action`; вакцина и сведения о дозировании переносятся в действие через `definitionCanonical`, ссылающийся на `ActivityDefinition`, либо через национальные расширения (`doseSequence`, `maximumInterval`, `gracePeriod`). Минимальные интервалы между дозами используют `action.relatedAction.offsetDuration`; показания используют `action.condition`.

```
GET [base]/PlanDefinition?status=active&context-type-value=focus$vaccination
```

> Для данной области/юрисдикции одновременно может быть активна только одна версия календаря, и календарь должен удовлетворять правилам валидации (отсутствие пропусков в последовательности доз, отсутствие невозможных временных окон, отсутствие двух перекрывающихся активных версий). См. страницу [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html).

### 2. Формирование рекомендации

Механизм рекомендаций считывает активный PlanDefinition, существующую историю [Immunization](StructureDefinition-uz-core-immunization.html) пациента и демографические данные пациента и формирует [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html). Каждая запись содержит `vaccineCode` и/или `targetDisease`, `doseNumber`, `forecastStatus` (предстоит, просрочено, …) и `dateCriterion` (самая ранняя/рекомендованная/самая поздняя даты).

```
# read what a patient is due for
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# read the doses already given
GET [base]/Immunization?patient=Patient/[id]&status=completed
```

Рекомендация *вычисляется*, а не вводится вручную — клиенты её отображают, но не создают.

### 3. Оценка показаний и введение вакцины

Врач изучает рекомендацию и историю и решает, есть ли у пациента показания. Медсестра вводит вакцину, а система регистрирует `Immunization`. `status` отражает исход:

| Исход | `Immunization.status` | Также устанавливается |
|---------|------------------------|----------|
| Вакцина введена | `completed` | `occurrence`, `vaccineCode`, `administeredProduct`, `lotNumber`, `doseQuantity`, `performer` |
| Медицинский отвод | `not-done` | `statusReason` = `MEDPREC` (медицинская предосторожность) или `IMMUNE` (иммунитет) |
| Отказ | `not-done` | `statusReason` = `PATOBJ` (возражение пациента) |
| Продукт недоступен | `not-done` | `statusReason` = `OSTOCK` (продукт отсутствует на складе) |
| Зарегистрировано ошибочно | `entered-in-error` | - |

`statusReason` связан (required) с [набором значений причин статуса иммунизации](ValueSet-immunization-status-reason-vs.html); четыре приведённых выше кода из HL7 v3 ActReason являются единственными допустимыми значениями.

```
POST [base]/Immunization
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03" }] },
  "patient": { "reference": "Patient/[id]" },
  "occurrenceDateTime": "2026-05-30",
  "lotNumber": "AB-2231",
  "performer": [{ "actor": { "reference": "PractitionerRole/[id]" } }],
  "protocolApplied": [{ "doseNumberPositiveInt": 1 }]
}
```

> Доза уникально идентифицируется по сочетанию пациент + vaccineCode + occurrence + lotNumber — не отправляйте одну и ту же комбинацию дважды.

### 4. Регистрация реакции (при наличии)

Если у пациента возникает поствакцинальная реакция, зарегистрируйте [AdverseEvent](StructureDefinition-uz-core-adverse-event.html), чей `suspectEntity` ссылается на Immunization, при необходимости с [Observation](StructureDefinition-uz-core-observation.html), описывающим реакцию.

### Связанные материалы

- Профили: [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) &middot; [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) &middot; [Immunization](StructureDefinition-uz-core-immunization.html) &middot; [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)
- [Обзор рабочих процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
