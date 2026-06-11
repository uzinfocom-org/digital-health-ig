> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему от значения и должен быть закодирован в URL как `%7C`.

**Чтение по идентификатору сервера**

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

**Обновление** (например, отметить `resolved` или подтвердить ранее `unconfirmed` аллергию) - выполните PUT всего ресурса обратно с новым статусом:

```
PUT [base]/AllergyIntolerance/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для всех поддерживаемых параметров поиска.

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
