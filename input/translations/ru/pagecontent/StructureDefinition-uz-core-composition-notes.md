> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение Composition по серверному id и его предыдущих версий**

```
GET [base]/Composition/[id]
GET [base]/Composition/[id]/_history
```

**Поиск**

```
GET [base]/Composition?patient=Patient/[id]
GET [base]/Composition?patient=Patient/[id]&type=https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs%7Cemdoc-0010-0003
GET [base]/Composition?patient=Patient/[id]&category=https://terminology.dhp.uz/fhir/core/CodeSystem/composition-category-cs%7CComp-001-0001
GET [base]/Composition?patient=Patient/[id]&status=final&date=ge2026-01-01
GET [base]/Composition?author=PractitionerRole/[id]
GET [base]/Composition?encounter=Encounter/[id]
GET [base]/Composition?entry=Condition/[id]
GET [base]/Composition?section=http://loinc.org%7C48765-2
GET [base]/Composition?patient=Patient/[id]&_include=Composition:entry
```

Последний запрос возвращает Composition вместе с ресурсами, на которые ссылаются их разделы.

**Создание Composition**

```
POST [base]/Composition
{
  "resourceType": "Composition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition" ] },
  "language": "uz",
  "status": "preliminary",
  "type": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs", "code": "..." } ] },
  "subject": [ { "reference": "Patient/[id]" } ],
  "date": "...",
  "author": [ { "reference": "PractitionerRole/[id]" } ],
  "title": "...",
  "section": [ ... ]
}
```

**Обновление существующего Composition** (например, установить `status` в `final`, когда документ завершён, или в `amended` после изменения)

```
PUT [base]/Composition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Composition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition" ] },
  "status": "final",
  ...
}
```

Обновляйте `date` при каждом изменении. Сборка и подписание окончательных документов описаны в [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/).

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Composition1-41).

### Связанные разделы

- [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Рабочие процессы](workflows.html) &middot; [Bundle: document, transaction и searchset](general-guidance.html#bundles-document-vs-transaction-vs-searchset)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
