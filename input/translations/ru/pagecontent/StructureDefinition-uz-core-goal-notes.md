> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему от значения и должен быть закодирован в URL как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Goal/[id]
```

**Поиск целей**

```
GET [base]/Goal?patient=Patient/[id]
GET [base]/Goal?patient=Patient/[id]&lifecycle-status=active
GET [base]/Goal?patient=Patient/[id]&category=dietary
GET [base]/Goal?patient=Patient/[id]&achievement-status=in-progress
GET [base]/Goal?patient=Patient/[id]&target-date=ge2025-01-01
GET [base]/Goal?patient=Patient/[id]&description=http://snomed.info/sct%7C1201005
```

**Создание**

```
POST [base]/Goal
{
  "resourceType": "Goal",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal" ] },
  "lifecycleStatus": "active",
  "description": { ... },
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Отмена цели** - ресурс Goal никогда не удаляется физически. Вместо вызова `DELETE` выполните PUT полного ресурса обратно с обновлённым значением `lifecycleStatus` (например, `cancelled` или `completed`):

```
PUT [base]/Goal/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Полный перечень поддерживаемых поисковых параметров см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
