> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему от значения и должен быть закодирован в URL как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/QuestionnaireResponse/[id]
```

**Поиск ответов**

```
GET [base]/QuestionnaireResponse?patient=Patient/[id]
GET [base]/QuestionnaireResponse?patient=Patient/[id]&status=completed
GET [base]/QuestionnaireResponse?questionnaire=https://dhp.uz/fhir/core/Questionnaire/health-declaration
GET [base]/QuestionnaireResponse?patient=Patient/[id]&authored=ge2025-01-01
GET [base]/QuestionnaireResponse?author=Practitioner/[id]
GET [base]/QuestionnaireResponse?encounter=Encounter/[id]
GET [base]/QuestionnaireResponse?based-on=ServiceRequest/[id]
```

**Создание**

```
POST [base]/QuestionnaireResponse
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response" ]
  },
  "questionnaire": "https://dhp.uz/fhir/core/Questionnaire/health-declaration",
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "item": [ ... ],
  ...
}
```

**Обновление** (например, внесение поправок в отправленный ответ или завершение частично сохранённого) - отправьте PUT с полным ресурсом, указав новый `status` и ответы:

```
PUT [base]/QuestionnaireResponse/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для всех поддерживаемых параметров поиска.

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
