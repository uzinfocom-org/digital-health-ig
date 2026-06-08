> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему идентификатора от его значения и должен быть URL-кодирован как `%7C`.

**Чтение организации по серверному id**

```
GET [base]/Organization/[id]
```

**Поиск организации перед регистрацией (обычно первый шаг)**

```
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
GET [base]/Organization?name=onkologiya&active=true
GET [base]/Organization?type=https://terminology.dhp.uz/fhir/core/CodeSystem/organization-types-uz-cs|I&address-city=22070022
```

**Поиск подразделений вышестоящей организации**

```
GET [base]/Organization?partof=Organization/[id]
```

**Регистрация новой организации** (только после подтверждения отсутствия совпадений)

```
POST [base]/Organization
{
  "resourceType": "Organization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  ...
}
```

**Обновление существующей организации**

```
PUT [base]/Organization/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Organization",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  ...
}
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для полного списка поддерживаемых параметров поиска и [Системы идентификаторов](identifiers.html) для URI системы идентификаторов организации.

### Связанные материалы

- [Системы идентификаторов](identifiers.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
