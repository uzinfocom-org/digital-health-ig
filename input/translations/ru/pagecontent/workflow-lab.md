В этом процессе показано, как назначается лабораторное исследование и как возвращается его результат. Это каноническая диагностическая цепочка FHIR, в которой явно описана структура references - таблица профиля указывает, что элемент `Observation.specimen` *существует*, а на этой странице поясняется, что он должен содержать reference на образец, полученный в рамках данного назначения.

Участники: клиницист, назначающий исследование; лаборатория (LIS - Laboratory Information System, лабораторная информационная система); платформа DHP (Digital Health Platform - Цифровая платформа здравоохранения).

Последовательность взаимодействий:

<div>{% include lab-sequence.svg %}</div><br clear="all"/>

Цепочка ресурсов и её references:

<div>{% include lab-references.svg %}</div><br clear="all"/>

> Статус профилирования: все четыре ресурса профилированы в UZ Core - [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) (лабораторный профиль) и [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). В элементе `meta.profile` каждого ресурса укажите соответствующий профиль и настройте связи, как показано ниже.

### 1. Назначение исследования

Клиницист создаёт [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html), указывая `intent = order`, исследование или панель в `code`, пациента в `subject`, инициатора запроса и `reasonCode`/`reasonReference` (состояние Condition, по поводу которого проводится исследование). Доступные для назначения исследования публикуются как записи [HealthcareService](StructureDefinition-uz-core-healthcareservice.html); в `priority` указывается `routine`, `urgent` или `asap`.

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest-laboratory"] },
  "status": "active", "intent": "order",
  "code": { "coding": [{ "system": "http://loinc.org", "code": "58410-2" }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "priority": "routine" }
```

При повторном выполнении ранее назначенного исследования в `ServiceRequest.basedOn` указывается reference на исходное назначение.

### 2. Взятие образца

Лаборатория регистрирует [Specimen](StructureDefinition-uz-core-specimen.html), указывая `type`, дату и время взятия образца, идентификатор и пациента в `subject`. Важно, чтобы `Specimen.request` содержал reference на ServiceRequest.

```
POST [base]/Specimen
{ "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "subject": { "reference": "Patient/[id]" },
  "request": [{ "reference": "ServiceRequest/[id]" }],
  "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }] } }
```

### 3. Возврат результатов

Каждый определяемый показатель представляется ресурсом [Observation](StructureDefinition-uz-core-observation.html), в котором указываются код LOINC в `code`, значение в `value[x]`, интерпретация в `interpretation` (normal / high / low / critical) и референсный диапазон в `referenceRange`. В каждом Observation в `basedOn` указывается reference на ServiceRequest, а в `specimen` - reference на Specimen. Набор результатов обобщается в [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html): его `basedOn` содержит reference на ServiceRequest, а `result` - references на ресурсы Observation.

```
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/Observation?patient=Patient/[id]&category=laboratory&_sort=-date
```

Весь набор рекомендуется возвращать в одном транзакционном Bundle, чтобы назначение, образец, ресурсы Observation и отчёт передавались атомарно. Завершённый и подписанный отчёт формируется как документный Bundle (`Composition` используется в качестве заголовка и содержит references на результаты, а подписание выполняется с помощью [Provenance](StructureDefinition-uz-core-provenance.html)) - `Composition` содержит references на ресурсы, а не дублирует их. См. [Общие рекомендации &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

### Статусы и параллельное редактирование

`ServiceRequest.status` изменяется в соответствии с жизненным циклом назначения (draft &rarr; active &rarr; completed либо revoked); `entered-in-error`/`unknown` предназначены для исправлений. При отмене активное назначение переводится в статус `revoked` с указанием примечания, а завершённое назначение изменять нельзя. При одновременном редактировании используется оптимистический контроль версий - передайте значение `ETag`, полученное при последнем чтении, в заголовке `If-Match`; запрос с устаревшей версией отклоняется с ошибкой `412 Precondition Failed`. Повторно получите актуальную версию ресурса и отправьте запрос ещё раз - см. [Параллельное редактирование](api-access.html#concurrency).

### Связанные материалы

- Профили: [Specimen](StructureDefinition-uz-core-specimen.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [ServiceRequest](StructureDefinition-uz-core-servicerequest-laboratory.html) &middot; [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html) &middot; [Жизненные показатели](vital-signs.html)
