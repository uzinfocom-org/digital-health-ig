> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение запроса по серверному id и его предыдущих версий**

```
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
```

**Поиск**

```
GET [base]/ServiceRequest?identifier=https://mis.dmed.uz%7CLAB-2026-004512
GET [base]/ServiceRequest?requisition=https://mis.dmed.uz%7CREQ-2026-001877
GET [base]/ServiceRequest?code-concept=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-E
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/ServiceRequest?patient=Patient/[id]&category=http://snomed.info/sct%7C32485007
GET [base]/ServiceRequest?encounter=Encounter/[id]
GET [base]/ServiceRequest?requester=PractitionerRole/[id]&authored=ge2026-01-01
GET [base]/ServiceRequest?specimen=Specimen/[id]
```

**Получение направления вместе с его Task согласования или назначения вместе с результатами**

```
GET [base]/ServiceRequest?_id=[id]&_revinclude=Task:focus
GET [base]/ServiceRequest?_id=[id]&_revinclude=DiagnosticReport:based-on
```

**Создание запроса**

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [ { "system": "...", "code": "..." } ] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "authoredOn": "2026-01-16T09:10:00+05:00",
  ...
}
```

**Обновление существующего запроса** (например, установить `status` в `revoked`, чтобы отменить его)

```
PUT [base]/ServiceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ServiceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest" ] },
  "status": "revoked",
  ...
}
```

Выполненный запрос изменить нельзя, а отменённый нельзя выполнить. Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13).

### Связанные разделы

- [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [UZ Core Procedure](StructureDefinition-uz-core-procedure.html)
- [Рабочий процесс лабораторного исследования](workflow-lab.html) &middot; [Рабочий процесс направления](workflow-referral.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
