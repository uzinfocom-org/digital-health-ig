> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для этого профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему от значения и должен быть закодирован для URL как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Condition/[id]
```

**Поиск состояний**

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

**Обновление** (например, отметить проблему как разрешённую) - выполните PUT с полным ресурсом, содержащим новые значения `clinicalStatus` / `abatement[x]`:

```
PUT [base]/Condition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для получения всех поддерживаемых параметров поиска.

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
