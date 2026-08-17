### Быстрый старт

Типовые операции API для этого профиля. Для запросов требуется JWT-токен доступа - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему и значение и должен быть URL-кодирован как `%7C`.

**Получение по идентификатору сервера**

```
GET [base]/EpisodeOfCare/[id]
```

**Поиск EpisodeOfCare**

```
GET [base]/EpisodeOfCare?patient=Patient/[id]
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/EpisodeOfCare?patient=Patient/[id]&type=http://terminology.dhp.uz/...%7C...
GET [base]/EpisodeOfCare?patient=Patient/[id]&date=ge2025-01-01
GET [base]/EpisodeOfCare?organization=Organization/[id]
GET [base]/EpisodeOfCare?care-manager=Practitioner/[id]
```

**Создание**

```
POST [base]/EpisodeOfCare
{
  "resourceType": "EpisodeOfCare",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episode-of-care" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "managingOrganization": { "reference": "Organization/[id]" },
  ...
}
```

**Обновление** (например, закрытие EpisodeOfCare путём изменения `status` на `finished` и заполнения `period.end`, либо передача его другой `managingOrganization`) - отправьте полный ресурс с помощью PUT:

```
PUT [base]/EpisodeOfCare/[id]
If-Match: W/"3"   # ETag из последнего чтения; 412, если ресурс с тех пор изменился
```

Все поддерживаемые параметры поиска приведены в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
