> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему идентификатора от его значения и должен быть URL-кодирован как `%7C`.

**Чтение записи по серверному id**

```
GET [base]/MedicationKnowledge/[id]
```

**Поиск записи перед созданием (обычный первый шаг)**

```
# by DHP identifier - the reliable match
GET [base]/MedicationKnowledge?identifier=https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge|MK-2026-000123

# by product - the entry for a Medication you already have
GET [base]/MedicationKnowledge?associated-medication=Medication/[id]
```

**Другие полезные поиски**

```
GET [base]/MedicationKnowledge?status=active
GET [base]/MedicationKnowledge?source-cost=DTSJ
```

**Создание новой записи** (только после того, как вы убедились, что записи нет)

```
POST [base]/MedicationKnowledge
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge" ] },
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/[id]" } ],
  "cost": [ { "effectiveDate": [ { "start": "..." } ], "type": { ... }, "costMoney": { ... } } ],
  ...
}
```

**Обновление существующей записи** (например, утверждена новая цена или препарат снят с обращения) - отправьте ресурс целиком через PUT с изменёнными записями `cost` или `status`:

```
PUT [base]/MedicationKnowledge/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "MedicationKnowledge",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge" ] },
  ...
}
```

Запись, созданная по ошибке, не удаляется: установите её `status` в `entered-in-error`.

MedicationKnowledge пока не указан в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); `identifier`, `status` и `source-cost` - стандартные параметры поиска MedicationKnowledge из FHIR R5, а `associated-medication` - [параметр поиска UZ Core](SearchParameter-uz-core-medicationknowledge-associated-medication.html). См. таблицу [среза идентификатора](#identifier-slices) выше для URI системы идентификатора.

### Связанные материалы

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html)
- [Электронный рецепт и отпуск](workflow-prescription.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
