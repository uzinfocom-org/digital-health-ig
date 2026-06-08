> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типичные взаимодействия с API для этого профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Encounter/[id]
```

**Поиск обращений**

```
GET [base]/Encounter?patient=Patient/[id]
GET [base]/Encounter?patient=Patient/[id]&status=in-progress
GET [base]/Encounter?patient=Patient/[id]&class=IMP
GET [base]/Encounter?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Encounter?patient=Patient/[id]&type=http://terminology.dhp.uz/...%7C...
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]
GET [base]/Encounter?service-provider=Organization/[id]
GET [base]/Encounter?practitioner=Practitioner/[id]
GET [base]/Encounter?location=Location/[id]
```

**Создание**

```
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] },
  "status": "in-progress",
  "class": [ { "coding": [ { "code": "IMP" } ] } ],
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Обновление** (например, завершение визита путём установки `status` в `completed` и заполнения `actualPeriod.end`) - выполните PUT полного ресурса обратно:

```
PUT [base]/Encounter/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для всех поддерживаемых поисковых параметров.

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
