> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Этот профиль использует стандартные поисковые параметры FHIR R5. `[base]` — это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему и значение и должен быть URL-закодирован как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Specimen/[id]
```

**Поиск образцов**

```
GET [base]/Specimen?patient=Patient/[id]
GET [base]/Specimen?patient=Patient/[id]&type=http://terminology.hl7.org/CodeSystem/v2-0487%7CBLD
GET [base]/Specimen?patient=Patient/[id]&status=available
GET [base]/Specimen?patient=Patient/[id]&collected=ge2025-01-01
GET [base]/Specimen?accession=ACC-2025-000045
```

**Создание**

```
POST [base]/Specimen
{
  "resourceType": "Specimen",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen" ] },
  "status": "available",
  "type": { ... },
  "subject": { "reference": "Patient/[id]" },
  "request": [ { "reference": "ServiceRequest/[id]" } ],
  ...
}
```

**Обновление** (например, пометить образец как `unavailable` или записать его `receivedTime`) - выполните PUT всего ресурса заново с новым `status`:

```
PUT [base]/Specimen/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Полный перечень поддерживаемых поисковых параметров см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Заказ лабораторного исследования и результат](workflow-lab.html)
