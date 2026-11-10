> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение заявки по серверному id и её предыдущих версий**

```
GET [base]/Claim/[id]
GET [base]/Claim/[id]/_history
```

**Поиск**

```
GET [base]/Claim?identifier=[system]%7C[value]
GET [base]/Claim?patient=Patient/[id]
GET [base]/Claim?patient=Patient/[id]&use=preauthorization&status=active
GET [base]/Claim?provider=Organization/[id]&created=ge2026-01-01
GET [base]/Claim?insurer=Organization/[id]
GET [base]/Claim?facility=Location/[id]
```

**Поиск заявки вместе с ответом плательщика**

```
GET [base]/Claim?patient=Patient/[id]&_revinclude=ClaimResponse:request
```

**Подача заявки**

```
POST [base]/Claim
{
  "resourceType": "Claim",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim" ] },
  "status": "active",
  "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ] },
  "use": "preauthorization",
  "patient": { "reference": "Patient/[id]" },
  "created": "2026-03-06",
  "insurer": { "reference": "Organization/[id]" },
  "provider": { "reference": "Organization/[id]" },
  "referral": { "reference": "ServiceRequest/[id]" },
  "insurance": [ { "sequence": 1, "focal": true, "coverage": { "reference": "Coverage/[id]" } } ],
  ...
}
```

**Обновление существующей заявки** (например, установить `status` в `cancelled`, когда помощь больше не требует одобрения)

```
PUT [base]/Claim/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Claim",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim" ] },
  "status": "cancelled",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Claim1-25).

### Связанные разделы

- [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)
- [Идентификация плательщиков](payor-identification.html) &middot; [Компоненты: Реимбурсация](components.html#reimbursement) &middot; [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
