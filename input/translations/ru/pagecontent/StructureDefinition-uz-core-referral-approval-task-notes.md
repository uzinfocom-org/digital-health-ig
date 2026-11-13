> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение задачи по серверному id и её предыдущих версий**

```
GET [base]/Task/[id]
GET [base]/Task/[id]/_history
```

**Поиск**

```
GET [base]/Task?focus=ServiceRequest/[id]
GET [base]/Task?based-on=ServiceRequest/[id]&status=requested,in-progress,on-hold
GET [base]/Task?patient=Patient/[id]
GET [base]/Task?owner=Organization/[id]&status=requested
GET [base]/Task?code=https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs%7Capprove-regional-commission
GET [base]/Task?business-status=https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs%7Coverdue
GET [base]/Task?period=ge2026-03-01
GET [base]/Task?modified=ge2026-03-01
```

**Получение задачи вместе с её направлением**

```
GET [base]/Task?_id=[id]&_include=Task:focus
```

**Создание задачи**

```
POST [base]/Task
{
  "resourceType": "Task",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task" ] },
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs", "code": "approve-family-doctor" }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "requested",
  "intent": "order",
  "focus": { "reference": "ServiceRequest/[id]" },
  "for": { "reference": "Patient/[id]" },
  "owner": { "reference": "Organization/[id]" },
  ...
}
```

**Обновление существующей задачи** (например, установить `status` в `completed` и `businessStatus` в `confirmed`, когда этап согласован)

```
PUT [base]/Task/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Task",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task" ] },
  "status": "completed",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Task1-37).

### Связанные разделы

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html) &middot; [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Рабочий процесс направления](workflow-referral.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
