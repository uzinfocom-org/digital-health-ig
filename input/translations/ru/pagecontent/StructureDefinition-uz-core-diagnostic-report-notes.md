> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение отчёта по серверному id и его предыдущих версий**

```
GET [base]/DiagnosticReport/[id]
GET [base]/DiagnosticReport/[id]/_history
```

**Поиск**

```
GET [base]/DiagnosticReport?identifier=https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id%7CDR-2026-0001
GET [base]/DiagnosticReport?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs%7Clab-rep-01
GET [base]/DiagnosticReport?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/v2-0074%7CHM
GET [base]/DiagnosticReport?patient=Patient/[id]&status=final&date=ge2026-01-01
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/DiagnosticReport?encounter=Encounter/[id]
GET [base]/DiagnosticReport?specimen=Specimen/[id]
GET [base]/DiagnosticReport?performer=Organization/[id]&issued=ge2026-02-01
```

**Создание отчёта**

```
POST [base]/DiagnosticReport
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report" ] },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "preliminary",
  "code": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "..." } ] },
  "subject": { "reference": "Patient/[id]" },
  "result": [ { "reference": "Observation/[id]" } ],
  ...
}
```

Отправляйте отчёт вместе с его Observation (и Specimen, если он новый) в одном транзакционном Bundle, чтобы они поступили атомарно - см. раздел [Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

**Обновление существующего отчёта** (например, установить `status` в `final`, когда получены все результаты, или в `amended` после исправления)

```
PUT [base]/DiagnosticReport/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DiagnosticReport",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report" ] },
  "status": "final",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные разделы

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [От назначения лабораторного исследования до получения результата](workflow-lab.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
