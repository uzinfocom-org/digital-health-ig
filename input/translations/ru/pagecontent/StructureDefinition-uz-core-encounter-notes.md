### Быстрый старт

Типовые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); символ `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Получение по идентификатору сервера**

```
GET [base]/Encounter/[id]
```

**Поиск Encounter**

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

**Обновление** (например, закрытие визита путём изменения `status` на `completed` и заполнения `actualPeriod.end`) - отправьте полный ресурс методом PUT:

```
PUT [base]/Encounter/[id]
If-Match: W/"3"   # ETag из последнего чтения; если с тех пор ресурс изменился, возвращается 412
```

Полный перечень поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные разделы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
