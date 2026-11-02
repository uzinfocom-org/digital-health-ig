> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Для запросов требуется JWT-токен доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); разделитель `|` между системой и кодом нужно кодировать как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/CarePlan/[id]
```

**Поиск планов**

```
GET [base]/CarePlan?identifier=https://mis.dmed.uz%7CCP-2015-000123
GET [base]/CarePlan?patient=Patient/[id]&status=active
GET [base]/CarePlan?patient=Patient/[id]&category=http://snomed.info/sct%7C773130005
GET [base]/CarePlan?encounter=Encounter/[id]
GET [base]/CarePlan?activity-reference=ServiceRequest/[id]
GET [base]/CarePlan?date=ge2026-01-01
```

**Создание**

```
POST [base]/CarePlan
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "status": "active",
  "intent": "plan",
  "subject": { "reference": "Patient/[id]" },
  "activity": [{ "plannedActivityReference": { "reference": "ServiceRequest/[id]" } }]
}
```

**Обновление** (например, добавление мероприятия или завершение плана): отправьте полный ресурс методом `PUT [base]/CarePlan/[id]` с заголовком `If-Match`, содержащим прочитанную версию, чтобы не перезаписать параллельное изменение.

Поддерживаемые параметры поиска перечислены в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html), в том числе `based-on`, `part-of`, `custodian`, `care-team`, `condition`, `goal`, `intent` и `instantiates-canonical`.

### Связанные материалы

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Procedure](StructureDefinition-uz-core-procedure.html) &middot; [UZ Core Goal](StructureDefinition-uz-core-goal.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
