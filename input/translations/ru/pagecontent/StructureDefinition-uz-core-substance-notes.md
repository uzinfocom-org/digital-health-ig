> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему идентификатора от его значения и должен быть URL-кодирован как `%7C`.

**Чтение образца по серверному id**

```
GET [base]/Substance/[id]
```

**Поиск образца**

```
# by sample identifier - the reliable match
GET [base]/Substance?identifier=https://dhp.uz/fhir/core/sid/prd/uz/substance-sample|NMN-2026-000123

# by batch number
GET [base]/Substance?identifier=https://dhp.uz/fhir/core/sid/prd/uz/substance-lot|SER-2611-15

# by national code, by SNOMED CT code - which also finds the narrower national names -
# or by the SubstanceDefinition entry
GET [base]/Substance?code=https://terminology.dhp.uz/fhir/core/CodeSystem/substance-names-cs|sbnam-0008-00013
GET [base]/Substance?code=http://snomed.info/sct|3718001
GET [base]/Substance?code-reference=SubstanceDefinition/[id]
```

**Другие полезные поиски**

```
GET [base]/Substance?category=http://snomed.info/sct|255620007&status=active
GET [base]/Substance?expiry=lt2027-01-01
```

**Создание нового образца**

```
POST [base]/Substance
{
  "resourceType": "Substance",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance" ] },
  "instance": true,
  "status": "active",
  "code": { "reference": { "reference": "SubstanceDefinition/[id]" } },
  ...
}
```

**Обновление существующего образца** - отправьте ресурс целиком через PUT с изменёнными элементами:

```
PUT [base]/Substance/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Substance",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance" ] },
  ...
}
```

Образец, зарегистрированный по ошибке или акт отбора которого отменён, не удаляется: установите его `status` в `entered-in-error`.

Substance пока не указан в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); в запросах выше используются стандартные параметры поиска FHIR R5.

### Связанные материалы

- [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
