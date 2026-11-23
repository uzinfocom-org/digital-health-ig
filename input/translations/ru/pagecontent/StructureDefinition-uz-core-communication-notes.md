> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/Communication/[id]
```

**Поиск оповещений**

```
GET [base]/Communication?recipient=Patient/[id]&status=completed
GET [base]/Communication?category=https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs%7Ccomcat-0001-00001
GET [base]/Communication?recipient=Patient/[id]&sent=ge2026-11-01
GET [base]/Communication?identifier=[system]%7C[value]
```

Первый запрос возвращает оповещения, которые пациент видит в Портале пациента; второй находит все оповещения жителей зон.

**Создание**

```
POST [base]/Communication
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00002"
    }]
  }],
  "sent": "2026-11-18T11:00:00+05:00",
  "recipient": [{ "reference": "Patient/[id]" }],
  "payload": [{
    "contentCodeableConcept": { "text": "[alert text]" }
  }]
}
```

**Обновление** (например, чтобы отметить оповещение, созданное по ошибке): отправьте полный ресурс через `PUT [base]/Communication/[id]`, установите `status` в `entered-in-error` и добавьте заголовок `If-Match` с прочитанной версией, чтобы не перезаписать параллельное изменение.

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Communication1-57).

### Связанные разделы

- [UZ Core Location](StructureDefinition-uz-core-location.html) &middot; [UZ Core Group](StructureDefinition-uz-core-group.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
