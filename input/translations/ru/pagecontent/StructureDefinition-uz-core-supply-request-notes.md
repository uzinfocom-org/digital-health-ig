> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение запроса по серверному id и его предыдущих версий**

```
GET [base]/SupplyRequest/[id]
GET [base]/SupplyRequest/[id]/_history
```

**Поиск**

```
GET [base]/SupplyRequest?_lastUpdated=ge2026-10-01
GET [base]/SupplyRequest?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request
GET [base]/SupplyRequest?_id=[id1],[id2]
```

**Создание запроса**

```
POST [base]/SupplyRequest
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "..." } ],
  "status": "active",
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/[id]" },
  "item": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006" } ] } },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "supplier": [ { "reference": "Organization/[id]" } ],
  ...
}
```

**Обновление существующего запроса** (например, установить `status` в `completed` после доставки предметов или в `cancelled`, если они больше не нужны)

```
PUT [base]/SupplyRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SupplyRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request" ] },
  "status": "completed",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные разделы

- [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
