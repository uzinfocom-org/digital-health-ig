> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Questionnaire - это шаблон, а не данные пациента, поэтому поиск выполняется по метаданным формы, а не по пациенту. `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему и значение и должен быть закодирован для URL как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Questionnaire/[id]
```

**Поиск анкет**

```
GET [base]/Questionnaire?status=active
GET [base]/Questionnaire?name=PatientHealthDeclaration
GET [base]/Questionnaire?title=Health
GET [base]/Questionnaire?url=https://dhp.uz/fhir/core/Questionnaire/health-declaration
GET [base]/Questionnaire?version=1.0.0
GET [base]/Questionnaire?date=ge2025-01-01
GET [base]/Questionnaire?context=...
```

**Создание**

```
POST [base]/Questionnaire
{
  "resourceType": "Questionnaire",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire" ] },
  "status": "draft",
  "title": "...",
  "item": [ ... ],
  ...
}
```

**Обновление** (например, опубликовать черновик, установив `status` в `active`, или вывести из использования старый шаблон) - выполните PUT полного ресурса обратно с новым `status`:

```
PUT [base]/Questionnaire/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для всех поддерживаемых параметров поиска.

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
