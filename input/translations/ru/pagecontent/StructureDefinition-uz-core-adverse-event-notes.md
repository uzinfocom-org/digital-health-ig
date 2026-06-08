> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему токена от его значения и должен быть URL-кодирован как `%7C`. Эти взаимодействия используют стандартные параметры поиска FHIR R5; см. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) по мере его финализации для данного ресурса.

**Чтение нежелательного явления по серверному id**

```
GET [base]/AdverseEvent/[id]
```

**Полезные поисковые запросы**

```
# all adverse events for a patient
GET [base]/AdverseEvent?subject=Patient/[id]

# serious events only, most recent first
GET [base]/AdverseEvent?subject=Patient/[id]&seriousness=http://terminology.hl7.org/CodeSystem/adverse-event-seriousness%7Cserious&_sort=-date

# by date, status, or event code
GET [base]/AdverseEvent?subject=Patient/[id]&date=ge2026-01-01
GET [base]/AdverseEvent?status=completed
GET [base]/AdverseEvent?code=http://snomed.info/sct%7C39579001
```

**Регистрация нового нежелательного явления**

```
POST [base]/AdverseEvent
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

**Обновление нежелательного явления** (например, добавление исхода или результирующего состояния, когда оно станет известно)

```
PUT [base]/AdverseEvent/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "AdverseEvent",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

### Связанные материалы

- [Рабочий процесс иммунизации](workflow-immunization.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
