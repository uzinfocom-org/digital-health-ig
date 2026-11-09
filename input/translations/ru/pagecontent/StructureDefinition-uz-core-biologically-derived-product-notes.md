> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему идентификаторов или кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение продукта по серверному id и его предыдущих версий**

```
GET [base]/BiologicallyDerivedProduct/[id]
GET [base]/BiologicallyDerivedProduct/[id]/_history
```

**Поиск продукта перед созданием (обычный первый шаг)**

```
# by unit number
GET [base]/BiologicallyDerivedProduct?identifier=https://dhp.uz/fhir/core/sid/prd/uz/blood/unit|BB-COMP-2026-0001

# by donation number - the donated unit and every component prepared from it
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation|DON-2025-0088231
```

**Другие полезные запросы**

```
GET [base]/BiologicallyDerivedProduct?code=http://snomed.info/sct|431069006&product-status=available
GET [base]/BiologicallyDerivedProduct?product-category=fluid
GET [base]/BiologicallyDerivedProduct?request=ServiceRequest/[id]
GET [base]/BiologicallyDerivedProduct?collector=Practitioner/[id]
GET [base]/BiologicallyDerivedProduct?_lastUpdated=ge2026-10-01
```

**Создание продукта** (только после того, как вы убедились, что совпадений нет)

```
POST [base]/BiologicallyDerivedProduct
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "..." } ],
  "biologicalSourceEvent": { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation", "value": "..." },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "cells" },
  "productCode": { "coding": [ { "system": "http://snomed.info/sct", "code": "126251004" } ] },
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  ...
}
```

**Обновление существующего продукта** (например, установить `productStatus` в `unavailable` после трансфузии или утилизации единицы)

```
PUT [base]/BiologicallyDerivedProduct/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "BiologicallyDerivedProduct",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product" ] },
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html), а URI систем номеров единицы и донации - в таблице [срезов идентификаторов](#identifier-slices) выше.

### Связанные разделы

- [UZ Core InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [UZ Core SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
