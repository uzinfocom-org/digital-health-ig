> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение запроса изделия по серверному id и его предыдущих версий**

```
GET [base]/DeviceRequest/[id]
GET [base]/DeviceRequest/[id]/_history
```

**Поиск**

```
GET [base]/DeviceRequest?identifier=[system]%7C[value]
GET [base]/DeviceRequest?code=http://snomed.info/sct%7C268460000
GET [base]/DeviceRequest?device=Device/[id]
GET [base]/DeviceRequest?patient=Patient/[id]&status=active
GET [base]/DeviceRequest?_lastUpdated=ge2026-11-01
GET [base]/DeviceRequest?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest
GET [base]/DeviceRequest?_id=[id1],[id2]
```

**Создание запроса изделия**

```
POST [base]/DeviceRequest
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "reference": { "reference": "Device/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  ...
}
```

**Обновление существующего запроса изделия** (например, установить `status` в `completed` после выдачи изделия)

```
PUT [base]/DeviceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DeviceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest" ] },
  "status": "completed",
  ...
}
```

DeviceRequest пока не указан в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); запросы выше используют стандартные параметры поиска FHIR R5.

### Связанные разделы

- [UZ Core Device](StructureDefinition-uz-core-device.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Параметры запроса изделия](ValueSet-device-request-parameter-code-vs.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
