### Быстрый старт

Типовые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); символ `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Получение по идентификатору сервера**

```
GET [base]/Condition/[id]
```

**Поиск диагнозов и клинических состояний**

```
GET [base]/Condition?patient=Patient/[id]
GET [base]/Condition?patient=Patient/[id]&category=problem-list-item
GET [base]/Condition?patient=Patient/[id]&clinical-status=active&verification-status=confirmed
GET [base]/Condition?patient=Patient/[id]&code=http://hl7.org/fhir/sid/icd-10%7CG43.9
GET [base]/Condition?encounter=Encounter/[id]
GET [base]/Condition?patient=Patient/[id]&onset-date=ge2025-01-01
GET [base]/Condition?patient=Patient/[id]&recorded-date=ge2025-01-01
```

**Создание**

```
POST [base]/Condition
{
  "resourceType": "Condition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "clinicalStatus": { "coding": [ { "code": "active" } ] },
  "code": { ... },
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Обновление** (например, перевод проблемы в разрешившееся состояние): отправьте полный ресурс с новым значением `clinicalStatus` / `abatement[x]` с помощью PUT:

```
PUT [base]/Condition/[id]
If-Match: W/"3"   # ETag из последнего ответа; 412, если ресурс с тех пор изменился
```

Полный перечень поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
