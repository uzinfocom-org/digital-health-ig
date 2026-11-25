> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение ответа по серверному id и его предыдущих версий**

```
GET [base]/ClaimResponse/[id]
GET [base]/ClaimResponse/[id]/_history
```

**Поиск**

```
GET [base]/ClaimResponse?identifier=[system]%7C[value]
GET [base]/ClaimResponse?request=Claim/[id]
GET [base]/ClaimResponse?patient=Patient/[id]&use=preauthorization&status=active
GET [base]/ClaimResponse?patient=Patient/[id]&outcome=complete
GET [base]/ClaimResponse?insurer=Organization/[id]&created=ge2026-01-01
```

**Запись ответа плательщика**

```
POST [base]/ClaimResponse
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response" ] },
  "status": "active",
  "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ] },
  "use": "preauthorization",
  "patient": { "reference": "Patient/[id]" },
  "created": "2026-10-05",
  "insurer": { "reference": "Organization/[id]" },
  "request": { "reference": "Claim/[id]" },
  "outcome": "complete",
  "decision": { "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ] },
  ...
}
```

**Обновление существующего ответа** (например, установить `status` в `cancelled` и добавить причину отмены, когда истекает срок предварительного разрешения)

```
PUT [base]/ClaimResponse/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ClaimResponse",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/claim-response-cancellation-reason",
      "valueCodeableConcept": { ... }
    }
  ],
  "status": "cancelled",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#ClaimResponse1-26).

### Связанные разделы

- [UZ Core Claim](StructureDefinition-uz-core-claim.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)
- [Идентификация плательщиков](payor-identification.html) &middot; [Компоненты: Реимбурсация](components.html#reimbursement) &middot; [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
