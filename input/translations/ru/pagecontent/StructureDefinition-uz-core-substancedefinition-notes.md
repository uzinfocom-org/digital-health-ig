> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему идентификатора от его значения и должен быть URL-кодирован как `%7C`.

**Чтение записи по серверному id**

```
GET [base]/SubstanceDefinition/[id]
```

**Поиск записи перед созданием (обычный первый шаг)**

```
# by reference list number - the reliable match
GET [base]/SubstanceDefinition?identifier=https://dhp.uz/fhir/core/sid/doc/uz/substance-definition|1368

# by SNOMED CT or national code
GET [base]/SubstanceDefinition?code=http://snomed.info/sct|3718001
```

**Другие полезные поиски**

```
GET [base]/SubstanceDefinition?name=Sigir
GET [base]/SubstanceDefinition?classification=http://snomed.info/sct|255620007
```

**Создание новой записи** (только после того, как вы убедились, что записи нет)

```
POST [base]/SubstanceDefinition
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition" ] },
  "code": [ { "code": { "coding": [ { "system": "...", "code": "..." } ] } } ],
  "name": [ { "name": "...", "preferred": true } ],
  ...
}
```

**Обновление существующей записи** (например, запись изменена в справочнике) - отправьте ресурс целиком через PUT с изменёнными элементами и увеличенной `version`:

```
PUT [base]/SubstanceDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SubstanceDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition" ] },
  ...
}
```

Запись, удалённая из справочника, не удаляется: установите её `status` в `retired`.

SubstanceDefinition пока не указан в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); в запросах выше используются стандартные параметры поиска FHIR R5.

### Связанные материалы

- [UZ Core Substance](StructureDefinition-uz-core-substance.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
