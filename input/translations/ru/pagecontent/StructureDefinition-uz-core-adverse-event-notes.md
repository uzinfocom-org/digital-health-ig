### Быстрый старт

Распространённые операции API для этого профиля. Для запросов требуется JWT-токен доступа - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); символ `|` разделяет систему токенов и её значение и должен быть URL-кодирован как `%7C`. В этих операциях используются стандартные параметры поиска FHIR R5; по мере окончательной настройки этого ресурса сверяйтесь с [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

**Чтение нежелательного явления по серверному идентификатору**

```
GET [base]/AdverseEvent/[id]
```

**Полезные поисковые запросы**

```
# все нежелательные явления пациента
GET [base]/AdverseEvent?subject=Patient/[id]

# только серьёзные события, сначала самые недавние
GET [base]/AdverseEvent?subject=Patient/[id]&seriousness=http://terminology.hl7.org/CodeSystem/adverse-event-seriousness%7Cserious&_sort=-date

# поиск по дате, статусу или коду события
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

**Обновление нежелательного явления** (например, добавление исхода или возникшего Condition после получения соответствующих данных)

```
PUT [base]/AdverseEvent/[id]
If-Match: W/"3"   # ETag, полученный при последнем чтении; 412, если ресурс с тех пор изменился
{
  "resourceType": "AdverseEvent",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

### Связанные материалы

- [Рабочий процесс Immunization](workflow-immunization.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
