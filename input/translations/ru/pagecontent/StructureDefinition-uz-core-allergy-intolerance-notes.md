### Быстрый старт

Распространённые операции API для этого профиля. Для запросов требуется JWT-токен доступа - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); символ `|` разделяет систему и значение и должен быть URL-кодирован как `%7C`.

**Получение по идентификатору сервера**

```
GET [base]/AllergyIntolerance/[id]
```

**Поиск аллергий и непереносимостей**

```
GET [base]/AllergyIntolerance?patient=Patient/[id]
GET [base]/AllergyIntolerance?patient=Patient/[id]&clinical-status=active
GET [base]/AllergyIntolerance?patient=Patient/[id]&category=medication
GET [base]/AllergyIntolerance?patient=Patient/[id]&criticality=high
GET [base]/AllergyIntolerance?patient=Patient/[id]&verification-status=confirmed
GET [base]/AllergyIntolerance?patient=Patient/[id]&code=http://snomed.info/sct%7C256277009
```

**Создание**

```
POST [base]/AllergyIntolerance
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance" ]
  },
  "clinicalStatus": { ... },
  "verificationStatus": { ... },
  "type": { "coding": [ { "code": "allergy" } ] },
  "category": [ "environment" ],
  "code": { ... },
  "patient": { "reference": "Patient/[id]" }
}
```

**Обновление** (например, перевод в `resolved` или подтверждение ранее `unconfirmed` аллергии): отправьте полный ресурс методом PUT с новым статусом:

```
PUT [base]/AllergyIntolerance/[id]
If-Match: W/"3"   # ETag, полученный при последнем чтении; 412, если ресурс с тех пор изменился
```

Все поддерживаемые параметры поиска приведены в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
