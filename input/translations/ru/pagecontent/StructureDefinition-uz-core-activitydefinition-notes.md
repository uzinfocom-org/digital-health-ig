> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение определения по серверному id и его предыдущих версий**

```
GET [base]/ActivityDefinition/[id]
GET [base]/ActivityDefinition/[id]/_history
```

**Поиск определения по его каноническому url**

```
GET [base]/ActivityDefinition?url=https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition
GET [base]/ActivityDefinition?url=[canonical url]&version=1.0.0
```

**Поиск**

```
GET [base]/ActivityDefinition?status=active&kind=ServiceRequest
GET [base]/ActivityDefinition?name=ChildhoodVaccinationActivity
GET [base]/ActivityDefinition?title=Childhood%20Vaccination
GET [base]/ActivityDefinition?publisher=Ministry%20of%20Health
GET [base]/ActivityDefinition?effective=ge2026-01-01
```

**Получение календарей, которые используют определение**

```
GET [base]/PlanDefinition?definition=https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition
```

**Создание определения**

```
POST [base]/ActivityDefinition
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition" ] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/[name]",
  "name": "[Name]",
  "status": "draft",
  "kind": "ServiceRequest",
  ...
}
```

**Обновление существующего определения** (например, установить `status` в `retired`, когда его заменяет более новая версия)

```
PUT [base]/ActivityDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ActivityDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition" ] },
  "status": "retired",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные разделы

- [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html)
- [Рабочий процесс иммунизации](workflow-immunization.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
