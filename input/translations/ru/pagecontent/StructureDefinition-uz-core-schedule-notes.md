> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/Schedule/[id]
```

**Поиск расписаний**

```
GET [base]/Schedule?actor=PractitionerRole/[id]&active=true
GET [base]/Schedule?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs%7C408443003
GET [base]/Schedule?service-category=https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs%7C270
GET [base]/Schedule?date=2026-11-02
GET [base]/Schedule?identifier=[system]%7C[value]
```

Первый запрос находит используемые расписания одной роли медицинского работника; четвёртый - расписания, горизонт планирования которых охватывает заданный день.

**Создание**

```
POST [base]/Schedule
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "active": true,
  "actor": [{ "reference": "PractitionerRole/[id]" }],
  "planningHorizon": {
    "start": "2026-11-02T08:00:00+05:00",
    "end": "2026-11-02T18:00:00+05:00"
  }
}
```

**Обновление** (например, чтобы прекратить использование расписания): отправьте полный ресурс через `PUT [base]/Schedule/[id]`, установите `active` в `false` и добавьте заголовок `If-Match` с прочитанной версией, чтобы не перезаписать параллельное изменение.

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Schedule1-35).

### Связанные разделы

- [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
