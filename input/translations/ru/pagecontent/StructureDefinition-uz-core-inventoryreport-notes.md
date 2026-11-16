> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типовые API-взаимодействия для этого профиля. Для запросов требуется JWT-токен доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); разделитель `|` между системой и кодом нужно кодировать как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/InventoryReport/[id]
```

**Создание**

```
POST [base]/InventoryReport
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00",
  "inventoryListing": [{
    "location": { "reference": "Location/[id]" },
    "item": [{
      "quantity": {
        "value": 100,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/[id]" } }
    }]
  }]
}
```

**Обновление** (например, чтобы пометить отчёт как `entered-in-error`): отправьте полный ресурс методом `PUT [base]/InventoryReport/[id]` с заголовком `If-Match`, содержащим прочитанную версию, чтобы не перезаписать параллельное изменение.

[CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) пока не включает InventoryReport; поддерживаемые взаимодействия и параметры поиска будут описаны здесь, когда сервер его добавит.

### Связанные материалы

- [UZ Core InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
