> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые взаимодействия с API для этого профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему идентификатора и его значение и должен быть закодирован в URL как `%7C`.

**Получить медицинского работника по идентификатору сервера**

```
GET [base]/Practitioner/[id]
```

**Найти медицинского работника перед регистрацией (обычно первый шаг)**

```
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uz/argos|9876543210
GET [base]/Practitioner?family=Karimov&given=Ahmed
GET [base]/Practitioner?qualification-code=DIP&active=true
```

**Зарегистрировать нового медицинского работника** (только после подтверждения отсутствия совпадений)

```
POST [base]/Practitioner
{
  "resourceType": "Practitioner",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  ...
}
```

**Обновить существующего медицинского работника**

```
PUT [base]/Practitioner/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Practitioner",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  ...
}
```

Полный перечень поддерживаемых поисковых параметров см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html), а URI систем идентификаторов медицинских работников - в разделе [Системы идентификаторов](identifiers.html).

### Связанные материалы

- [Системы идентификаторов](identifiers.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
