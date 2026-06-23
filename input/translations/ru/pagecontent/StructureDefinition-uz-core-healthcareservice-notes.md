> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типичные варианты взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от её значения и должен быть закодирован в URL как `%7C`.

**Чтение медицинской услуги по серверному id**

```
GET [base]/HealthcareService/[id]
```

**Поиск услуг - для маршрутизации направлений или в качестве каталога лабораторных исследований**

```
GET [base]/HealthcareService?organization=Organization/[id]&active=true
GET [base]/HealthcareService?location=Location/[id]
GET [base]/HealthcareService?service-category=[category-code]&service-type=[type-code]
GET [base]/HealthcareService?specialty=[specialty-code]
```

**Создание новой медицинской услуги**

```
POST [base]/HealthcareService
{
  "resourceType": "HealthcareService",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice" ]
  },
  ...
}
```

**Обновление существующей медицинской услуги**

```
PUT [base]/HealthcareService/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "HealthcareService",
  "id": "[id]",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice" ]
  },
  ...
}
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для полного списка поддерживаемых поисковых параметров.

### Связанные материалы

- [Лабораторный заказ и результат](workflow-lab.html)
- [Как читать данное руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
