> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Этот рабочий процесс показывает, как назначается лабораторное исследование и как возвращается его результат. Это каноническая диагностическая цепочка FHIR с явно прописанной связкой ссылок - таблица профиля сообщает вам, что `Observation.specimen` *существует*, но эта страница говорит вам, что он должен указывать на образец, полученный по данному назначению.

Действующие лица: назначающий клиницист; лаборатория (ЛИС); платформа (DHP).

Последовательность взаимодействий:

<div>{% include lab-sequence.svg %}</div><br clear="all"/>

Цепочка и её ссылки:

<div>{% include lab-references.svg %}</div><br clear="all"/>

> Статус профилей: [Specimen](StructureDefinition-uz-core-specimen.html) и [Observation](StructureDefinition-uz-core-observation.html) спрофилированы в UZ Core. Профили ServiceRequest и DiagnosticReport находятся в разработке - до их публикации используйте базовые ресурсы FHIR R5 с пропущенным `meta.profile` или установленным на базовый ресурс, и следуйте связке, описанной ниже.

### 1. Назначение исследования

Клиницист создаёт `ServiceRequest` с `intent = order`, исследованием или панелью в `code`, пациентом в `subject`, заказчиком (requester) и `reasonCode`/`reasonReference` (исследуемое состояние Condition). Назначаемые исследования публикуются как записи [HealthcareService](StructureDefinition-uz-core-healthcareservice.html); `priority` имеет значение `routine`, `urgent` или `asap`.

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest", "status": "active", "intent": "order",
  "code": { "coding": [{ "system": "http://loinc.org", "code": "58410-2" }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "priority": "routine" }
```

Повтор ранее проведённого исследования устанавливает `ServiceRequest.basedOn` на исходное назначение.

### 2. Забор образца

Лаборатория регистрирует [Specimen](StructureDefinition-uz-core-specimen.html) с его `type`, датой/временем забора и идентификатором, пациентом в `subject` и, что особенно важно, с `Specimen.request`, указывающим обратно на ServiceRequest.

```
POST [base]/Specimen
{ "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "subject": { "reference": "Patient/[id]" },
  "request": [{ "reference": "ServiceRequest/[id]" }],
  "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }] } }
```

### 3. Возврат результатов

Каждый аналит представлен как [Observation](StructureDefinition-uz-core-observation.html) с LOINC-кодом в `code`, `value[x]`, `interpretation` (норма / повышено / понижено / критическое) и `referenceRange`. Каждый Observation устанавливает `basedOn` на ServiceRequest и `specimen` на Specimen. Набор обобщается в `DiagnosticReport`, у которого `basedOn` указывает на ServiceRequest, а `result` перечисляет Observation. 

```
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/Observation?patient=Patient/[id]&category=laboratory&_sort=-date
```

Весь набор лучше всего возвращать как один транзакционный Bundle, чтобы назначение, образец, наблюдения и отчёт поступали атомарно. Финализированный, подписанный отчёт собирается как document Bundle (заголовок `Composition`, ссылающийся на результаты, подписанный через [Provenance](StructureDefinition-uz-core-provenance.html)) - `Composition` ссылается на ресурсы, а не дублирует их. См. [Общее руководство &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

### Статус и параллелизм

`ServiceRequest.status` следует жизненному циклу назначения (draft &rarr; active &rarr; completed, либо revoked); `entered-in-error`/`unknown` зарезервированы для исправлений. Отмена переводит активное назначение в `revoked` (с примечанием), а завершённое назначение не может быть изменено. Параллельные правки используют оптимистичный контроль параллелизма - отправляйте `ETag` из вашего последнего чтения как `If-Match`; устаревшая версия отклоняется с `412 Precondition Failed`. Перечитайте и повторите - см. [Параллелизм](api-access.html#concurrency).

### Связанное

- Профили: [Specimen](StructureDefinition-uz-core-specimen.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Обзор рабочих процессов](workflows.html) &middot; [Общее руководство](general-guidance.html) &middot; [Витальные показатели](vital-signs.html)
