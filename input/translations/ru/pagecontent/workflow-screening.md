В этом рабочем процессе показано, как определяется национальная программа скрининга, как платформа оценивает соответствие пациента критериям скрининга, как находится или создаётся план скрининга пациента (приглашение), как в ходе скринингового визита ответы на опросники и результаты регистрируются в рамках этого плана и как положительная находка приводит к дальнейшему наблюдению. Это общая схема. Правила конкретных программ - коды программ, профили результатов и то, какая система закрывает план, - описаны в [DHP Integrations IG](https://dhp.uz/fhir/integrations/ru/cervical-breast-cancer-screening.html) на странице скрининга рака шейки матки и молочной железы.

Участники: руководитель программы скрининга (ведёт определение программы); DHP (оценивает соответствие критериям и формирует национальные приглашения); медицинская информационная система (МИС) клиники и её медицинские работники, проводящие скрининг; медицинская организация, выполняющая дальнейшее обследование.

Главное правило одной строкой:

> Программа - это [PlanDefinition](StructureDefinition-uz-core-plan-definition.html). План скрининга или приглашение пациента - это [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) с `intent = plan`. Всё, что регистрируется в ходе скрининга, ссылается на этот план через `basedOn`.

<div>{% include screening-sequence.svg %}</div><br clear="all"/>

### 1. Программа в виде кода

Программа скрининга публикуется как PlanDefinition ровно с одним контекстом использования `focus`, равным SNOMED CT `360156006` (Screening intent - цель скрининга). Контексты использования `jurisdiction` указывают, где программа применяется: на национальном уровне (`UZ`) или в отдельных регионах. `subjectReference` указывает на целевую группу населения - [Group](StructureDefinition-uz-core-group.html) с кодом `group-0001-00001` (Целевая группа скрининга), записи `characteristic` которой описывают, кто включается и кто исключается. Каждое скрининговое мероприятие - это `action` со своим `timing[x]` (например, анализ HbA1c раз в три года), условием применимости `condition` и `participant`.

```
# активные программы скрининга
GET [base]/PlanDefinition?status=active&context=http://snomed.info/sct|360156006

# одна программа по коду программы (здесь скрининг сахарного диабета)
GET [base]/PlanDefinition?status=active&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004
```

```
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition"] },
  "url": "...", "name": "...", "description": "...",
  "status": "active",
  "subjectReference": { "reference": "Group/[target-group-id]" },
  "useContext": [{
    "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
    "valueCodeableConcept": { "coding": [{ "system": "http://snomed.info/sct", "code": "360156006", "display": "Screening intent" }] }
  }],
  "action": [{
    "linkId": "action-1",
    "title": "Glycated haemoglobin test",
    "code": { "coding": [{ "system": "http://hl7.org/fhir/action-code", "code": "order-service", "display": "Order a service" }] },
    "timingTiming": { "repeat": { "frequency": 1, "period": 3, "periodUnit": "a" } },
    "participant": [{ "type": "practitioner" }]
  }]
}
```

DHP Integrations IG добавляет к определению программы два элемента. Программный `identifier` с системой `https://dhp.uz/fhir/core/sid/prg/uz/program` и кодом из [типов программ скрининга](ValueSet-screening-program-type-vs.html) указывает программу. `action.definitionCanonical` ссылается на [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html), который служит шаблоном приглашения (`kind = ServiceRequest`, `intent = plan`). Контексты использования, целевая Group и периодичность показаны в [примере регионального скрининга](PlanDefinition-example-uz-core-regional-screening-plan-definition.html), а идентификатор и шаблон приглашения - в [примере программы скрининга ВПЧ и рака шейки матки](https://dhp.uz/fhir/integrations/ru/PlanDefinition-example-hpv-cervical-plan.html) из DHP Integrations IG.

> Для каждой области применения или юрисдикции одновременно может быть активна только одна версия календаря. Правила валидации описаны на странице [PlanDefinition](StructureDefinition-uz-core-plan-definition.html).

### 2. Оценка соответствия критериям скрининга

Платформа оценивает соответствие пациента критериям скрининга с помощью операции Patient `$screening-evaluate`, объявленной в CapabilityStatement рабочего и тестового [серверов](api-access.html#endpoints) с каноническим адресом `https://dhp.uz/fhir/core/OperationDefinition/patient-screening-evaluate`.

> OperationDefinition пока не опубликован в этом руководстве. Его параметры, уровень вызова - на типе (`Patient/$screening-evaluate`) или на экземпляре (`Patient/[id]/$screening-evaluate`) - и структура результата будут описаны позже. До этого читайте открытые планы пациента напрямую (шаг 3).

### 3. План скрининга пациента

Для каждого пациента и каждой программы существует один открытый план: ServiceRequest с `intent = plan`, `category` SNOMED CT `310422005` (Приглашение на профилактику/скрининг) и программным `identifier`. Национальное приглашение - это план, который DHP создаёт со `status = draft` и `instantiatesCanonical`, равным точному `PlanDefinition.url|version`. Если приглашения нет, МИС создаёт собственный план со статусом `active` без `instantiatesCanonical`.

```
POST [base]/ServiceRequest
If-None-Exist: [полная идентификация плана]
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "status": "active",
  "intent": "plan",
  "category": [{ "coding": [{ "system": "http://snomed.info/sct", "code": "310422005", "display": "Prevention/screening invitation" }] }],
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" }] } },
  "subject": { "reference": "Patient/[id]" },
  "authoredOn": "2026-10-09T09:00:00+05:00",
  "performer": [{ "reference": "Organization/[clinic]" }]
}
```

Перед сохранением любых данных скрининга МИС ищет открытый план для конкретной программы:

```
GET [base]/ServiceRequest?subject=Patient/[id]&intent=plan&status=draft,active&category=http://snomed.info/sct|310422005&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004&_sort=-_lastUpdated
```

| Результат поиска | Действие |
|---------------|--------|
| Найден один план | Использовать его; национальное приглашение принимается изменением `draft` на `active` через `PUT` с `If-Match`, остальные поля сохраняются |
| Открытого плана нет | Создать план МИС со статусом `active`, как показано выше |
| Найдено несколько планов | Устранить дубликаты до привязки результатов |

Создавайте план условным созданием (`If-None-Exist`) с полной идентификацией плана, чтобы повторный запрос не создал дубликат.

Для национального приглашения также сравните `instantiatesCanonical` с текущей версией программы: приглашение к более старому определению повторно не используется. Более новое приглашение ссылается на заменяемое через `replaces`.

| Состояние плана | `ServiceRequest.status` | `instantiatesCanonical` |
|------------|-------------------------|-------------------------|
| Национальное приглашение, ещё не принято | `draft` | <code>PlanDefinition.url&#124;version</code> |
| Приглашение принято или используется собственный план МИС | `active` | сохраняется в приглашении, отсутствует в плане МИС |
| Скрининг завершён | `completed` | без изменений |

Статус плана меняет МИС; DHP не делает вывод о завершении на основании полученных результатов. Момент завершения плана зависит от программы: одна программа сохраняет план в статусе `active` на протяжении повторных обследований, другая завершает его после заполненного опросника. См. разделы [Планы скрининга и приглашения](https://dhp.uz/fhir/integrations/ru/cervical-breast-cancer-screening.html#планы-скрининга-и-приглашения), [Заполнение плана пациента](https://dhp.uz/fhir/integrations/ru/cervical-breast-cancer-screening.html#заполнение-плана-пациента) и [Поиск, активация и создание плана](https://dhp.uz/fhir/integrations/ru/cervical-breast-cancer-screening.html#поиск-активация-и-создание-плана).

### 4. Скрининговый визит: опросники

Визит представлен ресурсом [Encounter](StructureDefinition-uz-core-encounter.html). Для оценки риска используется скрининговый [Questionnaire](StructureDefinition-uz-core-questionnaire.html); ответы фиксируются в [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html), который указывает опросник по его каноническому адресу и ссылается на план в `basedOn`. Новые ответы принимаются только для опросников со статусом `active`. Ряд опросников вычисляет по ответам суммарный балл и уровень риска (например, `diabetes-total-score` и `diabetes-risk-category` в опроснике по диабету).

```
# опросник программы
GET [base]/Questionnaire?status=active&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004

POST [base]/QuestionnaireResponse
{
  "resourceType": "QuestionnaireResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response"] },
  "questionnaire": "https://dhp.uz/fhir/integrations/Questionnaire/DiabetesScreeningQuestionnaire",
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "basedOn": [{ "reference": "ServiceRequest/[plan-id]" }],
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  "authored": "2026-10-09T09:15:00+05:00",
  "item": [ ... ]
}
```

Скрининговые опросники опубликованы в DHP Integrations IG:

| Опросник | Идентификатор программы | Статус |
|---------------|--------------------|--------|
| [Риск сердечно-сосудистых заболеваний](https://dhp.uz/fhir/integrations/ru/Questionnaire-CVDRiskScreeningQuestionnaire.html) | `300007000` (Скрининг заболеваний сердечно-сосудистой системы) | `draft` |
| [Сахарный диабет](https://dhp.uz/fhir/integrations/ru/Questionnaire-DiabetesScreeningQuestionnaire.html) | `171183004` (Скрининг сахарного диабета) | `active` |
| [Цереброваскулярные заболевания](https://dhp.uz/fhir/integrations/ru/Questionnaire-CerebrovascularScreeningQuestionnaire.html) | `mserv-0007-00003` (Опросник по раннему выявлению цереброваскулярной патологии) | `draft` |
| [Рак шейки матки](https://dhp.uz/fhir/integrations/ru/Questionnaire-CervicalCancerScreeningQuestionnaire.html) | `mserv-0007-00009` (Программа DMED по скринингу рака шейки матки) | `active` |
| [Рак молочной железы](https://dhp.uz/fhir/integrations/ru/Questionnaire-BreastCancerScreeningQuestionnaire.html) | `mserv-0007-00007` (Программа DMED по скринингу рака молочной железы) | `active` |
| [Гельминтозы](https://dhp.uz/fhir/integrations/ru/Questionnaire-HelminthScreeningQuestionnaire.html) | `171147008` (Скрининг кишечных гельминтозов) | `draft` |
| [Предтестовая вероятность ишемической болезни сердца](https://dhp.uz/fhir/integrations/ru/Questionnaire-IhdPretestQuestionnaire.html) | `171223006` (Скрининг ишемической болезни сердца) | `draft` |
| [Онкогематология](https://dhp.uz/fhir/integrations/ru/Questionnaire-OncohematologyScreeningQuestionnaire.html) | `762445000` (Скрининг гематологических заболеваний) | `active` |
| [Фертильность](https://dhp.uz/fhir/integrations/ru/Questionnaire-FertilityQuestionnaire.html) | `408961002` (Оценка фертильности) | `active` |

Опросники в статусе `draft` пока не используются для сбора ответов; запрос `status=active` их не возвращает.

> QuestionnaireResponse, заполненный пациентом, носит информационный характер. Он не преобразуется в Condition или Observation автоматически; для этого необходимо действие медицинского работника в рамках Encounter.

### 5. Результаты

Исследования и обследования, назначенные в ходе скрининга, проводятся по [лабораторному процессу](workflow-lab.html): ServiceRequest-назначение, затем [Observation](StructureDefinition-uz-core-observation.html) и [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). Каждый результат сохраняет reference на своё назначение и дополнительно ссылается на план:

| Ресурс | Связь с планом |
|----------|------------------|
| QuestionnaireResponse, Observation, DiagnosticReport, Procedure, ServiceRequest-назначение | `basedOn` |
| Specimen | `request` |
| Condition | расширение [event-basedOn](https://hl7.org/fhir/extensions/StructureDefinition-event-basedOn.html) |

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "basedOn": [
    { "reference": "ServiceRequest/[order-id]" },
    { "reference": "ServiceRequest/[plan-id]" }
  ],
  "status": "final",
  "category": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory", "display": "Laboratory" }] }],
  "code": { "coding": [{ "system": "http://loinc.org", "code": "4548-4", "display": "Hemoglobin A1c/Hemoglobin.total in Blood" }] },
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  "effectiveDateTime": "2026-10-09T10:00:00+05:00",
  "valueQuantity": { "value": 6.1, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
}
```

Получить всё, что зарегистрировано в рамках плана:

```
GET [base]/QuestionnaireResponse?based-on=ServiceRequest/[plan-id]
GET [base]/Observation?based-on=ServiceRequest/[plan-id]
GET [base]/DiagnosticReport?based-on=ServiceRequest/[plan-id]
```

Для результатов конкретных программ (цитология, тест на ВПЧ, кольпоскопия, маммография, гистология) в DHP Integrations IG определены собственные профили; см. раздел [Связи клинических ресурсов и изменение статуса](https://dhp.uz/fhir/integrations/ru/cervical-breast-cancer-screening.html#связи-клинических-ресурсов-и-изменение-статуса).

### 6. Дальнейшее наблюдение при положительном результате

Если результат отклоняется от нормы или опросник показывает высокий уровень риска, медицинский работник регистрирует диагноз как [Condition](StructureDefinition-uz-core-condition.html), если он установлен, и оформляет дальнейшее обследование как ServiceRequest с `intent = order`. Он ссылается на план в `basedOn` и указывает находку в `reason`. Направление к специалисту далее проходит [жизненный цикл электронного направления](workflow-referral.html).

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "306206005", "display": "Referral to service" }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "basedOn": [{ "reference": "ServiceRequest/[plan-id]" }],
  "reason": [{ "reference": { "reference": "Observation/[id]" } }]
}
```

Целевой показатель здоровья, согласованный с пациентом (например, целевой уровень HbA1c), - это [Goal](StructureDefinition-uz-core-goal.html), который в `addresses` ссылается на Condition или Observation.

### Связанные материалы

- Профили: [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) &middot; [Group](StructureDefinition-uz-core-group.html) &middot; [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Questionnaire](StructureDefinition-uz-core-questionnaire.html) &middot; [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Goal](StructureDefinition-uz-core-goal.html)
- Компонент: [Управление графиками скрининга](components.html#screening-schedules-management) &middot; [Опросники](forms.html)
- DHP Integrations IG: [Скрининг рака шейки матки и молочной железы](https://dhp.uz/fhir/integrations/ru/cervical-breast-cancer-screening.html)
- [Обзор рабочих процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
