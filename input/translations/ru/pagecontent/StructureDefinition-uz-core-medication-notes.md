> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему идентификатора от его значения и должен быть URL-кодирован как `%7C`.

**Чтение препарата по серверному id**

```
GET [base]/Medication/[id]
```

**Поиск препарата перед регистрацией (обычно первый шаг)**

```
# by national identifier - any of the five identifier slices
GET [base]/Medication?identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/gtin|04780123456789
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/marking|010478012345678921AbC9xQ
GET [base]/Medication?identifier=https://uzpharminfo.uz/icps|02804001001000000

# by code - INN (substance) or ATC (classification)
GET [base]/Medication?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?code=http://www.whocc.no/atc|A06AH03
```

**Другие полезные поисковые запросы**

```
GET [base]/Medication?lot-number=LOT20241201
GET [base]/Medication?expiration-date=le2026-12-31
GET [base]/Medication?status=active&form=https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs|TAB101
GET [base]/Medication?ingredient-code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?marketingauthorizationholder=Organization/[id]
```

**Регистрация нового препарата** (только после подтверждения отсутствия совпадений)

```
POST [base]/Medication
{
  "resourceType": "Medication",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication" ] },
  "identifier": [ { "use": "official", "system": "https://uzpharminfo.uz/registration_number", "value": "..." } ],
  "code": { ... },
  "status": "active",
  ...
}
```

**Обновление существующего препарата** (например, установить `status` в `inactive`, когда регистрация истекла, или записать новую серию)

```
PUT [base]/Medication/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Medication",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication" ] },
  ...
}
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для полного списка поддерживаемых параметров поиска и таблицу [срезов идентификаторов](#identifier-slices) выше для URI систем идентификаторов препарата.

### Связанные материалы

- [Электронный рецепт и отпуск](workflow-prescription.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
