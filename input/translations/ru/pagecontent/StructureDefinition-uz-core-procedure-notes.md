> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типичные взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему от значения и должен быть закодирован в URL как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Procedure/[id]
```

**Поиск процедур**

```
GET [base]/Procedure?patient=Patient/[id]
GET [base]/Procedure?patient=Patient/[id]&code=http://snomed.info/sct%7C386438000
GET [base]/Procedure?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Procedure?encounter=Encounter/[id]
GET [base]/Procedure?patient=Patient/[id]&status=completed
GET [base]/Procedure?based-on=ServiceRequest/[id]
GET [base]/Procedure?performer=Practitioner/[id]
```

**Создание**

```
POST [base]/Procedure
{
  "resourceType": "Procedure",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure" ] },
  "status": "completed",
  "code": { ... },
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  ...
}
```

**Обновление** (например, переход из `in-progress` в `completed` или запись `outcome`) - отправьте обратно весь ресурс с новыми значениями методом PUT:

```
PUT [base]/Procedure/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для всех поддерживаемых параметров поиска.

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
