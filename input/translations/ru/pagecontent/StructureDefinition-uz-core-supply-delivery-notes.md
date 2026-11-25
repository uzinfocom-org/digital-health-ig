> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение поставки по серверному id и её предыдущих версий**

```
GET [base]/SupplyDelivery/[id]
GET [base]/SupplyDelivery/[id]/_history
```

**Поиск**

```
GET [base]/SupplyDelivery?_lastUpdated=ge2026-10-01
GET [base]/SupplyDelivery?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery
GET [base]/SupplyDelivery?_id=[id1],[id2]
```

**Регистрация поставки**

```
POST [base]/SupplyDelivery
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
      "valueReference": { "reference": "Location/[id]" }
    }
  ],
  "status": "in-progress",
  "type": { "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ] },
  "suppliedItem": [ ... ],
  "supplier": { "reference": "Organization/[id]" },
  "destination": { "reference": "Location/[id]" },
  ...
}
```

**Обновление существующей поставки** (например, установить `status` в `completed` после передачи предметов)

```
PUT [base]/SupplyDelivery/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SupplyDelivery",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery" ] },
  "status": "completed",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#SupplyDelivery1-61).

### Связанные разделы

- [UZ Core SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
