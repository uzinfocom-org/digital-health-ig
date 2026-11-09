> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение складской позиции по серверному id и её предыдущих версий**

```
GET [base]/InventoryItem/[id]
GET [base]/InventoryItem/[id]/_history
```

**Поиск**

```
GET [base]/InventoryItem?_lastUpdated=ge2026-10-01
GET [base]/InventoryItem?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem
GET [base]/InventoryItem?_id=[id1],[id2]
```

**Регистрация предмета на складе**

```
POST [base]/InventoryItem
{
  "resourceType": "InventoryItem",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "..." } ],
  "status": "active",
  "inventoryStatus": [ { "coding": [ { "system": "...", "code": "accepted" } ] } ],
  "instance": { "location": { "reference": "Location/[id]" }, ... },
  "productReference": { "reference": "BiologicallyDerivedProduct/[id]" },
  ...
}
```

**Обновление существующей позиции** (например, перевести `inventoryStatus` из `accepted` в `available`, `reserved` или `issued`)

```
PUT [base]/InventoryItem/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "InventoryItem",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem" ] },
  "status": "active",
  "inventoryStatus": [ { "coding": [ { "system": "...", "code": "reserved" } ] } ],
  ...
}
```

`system` складского статуса - `https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs`. Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные разделы

- [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) &middot; [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
