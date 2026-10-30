> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодов от кода и должен быть URL-кодирован как `%7C`.

**Чтение по серверному id**

```
GET [base]/DeviceUsage/[id]
```

**Поиск изделий пациента**

```
GET [base]/DeviceUsage?patient=Patient/[id]
GET [base]/DeviceUsage?patient=Patient/[id]&status=active
GET [base]/DeviceUsage?patient=Patient/[id]&device=http://snomed.info/sct%7C69805005
```

`device` ищет по закодированному концепту в `device.concept`. DeviceUsage пока не указан в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); приведённые выше запросы используют стандартные параметры поиска DeviceUsage из FHIR R5 (`patient`, `status`, `device`, `identifier`).

**Создание**

```
POST [base]/DeviceUsage
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "device": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "69805005" } ] } },
  ...
}
```

**Обновление** (например, пациент перестал использовать изделие) - отправьте PUT с полным ресурсом, установив `status` в `completed` или `stopped` и добавив `end` в `timingPeriod`:

```
PUT [base]/DeviceUsage/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DeviceUsage",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage" ] },
  ...
}
```

Ошибочно записанное утверждение не удаляется: установите его `status` в `entered-in-error`.

### Связанные материалы

- [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Condition](StructureDefinition-uz-core-condition.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
