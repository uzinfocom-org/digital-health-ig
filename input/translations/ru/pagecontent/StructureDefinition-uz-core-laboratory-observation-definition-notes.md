> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение определения по серверному id и его предыдущих версий**

```
GET [base]/ObservationDefinition/[id]
GET [base]/ObservationDefinition/[id]/_history
```

**Поиск**

```
GET [base]/ObservationDefinition?code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-74
GET [base]/ObservationDefinition?identifier=[system]%7C[value]
GET [base]/ObservationDefinition?url=[canonical-url]
GET [base]/ObservationDefinition?category=laboratory&status=active
GET [base]/ObservationDefinition?method=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-methods-cs%7Clab-method-6
GET [base]/ObservationDefinition?title=Gemoglobin
GET [base]/ObservationDefinition?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition
```

Последний запрос возвращает только лабораторные определения, поскольку каждое из них объявляет этот профиль.

**Создание определения**

```
POST [base]/ObservationDefinition
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition" ] },
  "url": "[canonical-url]",
  "status": "draft",
  "useContext": [ { "code": { ... "focus" }, "valueCodeableConcept": { ... "108252007" } } ],
  "code": { "coding": [ { "system": "http://loinc.org", "code": "..." } ] },
  ...
}
```

**Обновление существующего определения** (например, установить `status` в `active` после проверки или в `retired`, когда исследование выводится из употребления)

```
PUT [base]/ObservationDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ObservationDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition" ] },
  "status": "active",
  ...
}
```

При обновлении не меняйте `url`: записи HealthcareService ссылаются на определение по нему.

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#ObservationDefinition1-32).

### Связанные разделы

- [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [От назначения лабораторного исследования до получения результата](workflow-lab.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
