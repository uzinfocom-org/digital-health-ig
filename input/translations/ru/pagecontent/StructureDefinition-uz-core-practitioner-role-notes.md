> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодов от её значения и должен быть закодирован в URL как `%7C`.

**Чтение роли медработника по идентификатору сервера**

```
GET [base]/PractitionerRole/[id]
```

**Поиск ролей, которые занимает медработник, или того, кто работает в организации**

```
GET [base]/PractitionerRole?practitioner=Practitioner/[id]&active=true
GET [base]/PractitionerRole?organization=Organization/[id]
GET [base]/PractitionerRole?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs|394585009
GET [base]/PractitionerRole?role=https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs|2212.14&location=Location/[id]
```

**Создание новой роли медработника**

```
POST [base]/PractitionerRole
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ]
  },
  ...
}
```

**Обновление существующей роли медработника**

```
PUT [base]/PractitionerRole/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "PractitionerRole",
  "id": "[id]",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ]
  },
  ...
}
```

Полный список поддерживаемых поисковых параметров см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
