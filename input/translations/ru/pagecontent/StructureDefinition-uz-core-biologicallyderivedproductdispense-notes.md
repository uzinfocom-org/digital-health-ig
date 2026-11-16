> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типовые API-взаимодействия для этого профиля. Запросы требуют JWT-токен доступа - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); символ `|` отделяет систему от значения и должен быть закодирован в URL как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/BiologicallyDerivedProductDispense/[id]
```

**Поиск выдач**

```
GET [base]/BiologicallyDerivedProductDispense?identifier=https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense%7CISS-2026-0002
GET [base]/BiologicallyDerivedProductDispense?_lastUpdated=ge2026-01-01
GET [base]/BiologicallyDerivedProductDispense?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense
GET [base]/BiologicallyDerivedProductDispense?_id=[id1],[id2]
```

**Запись выдачи**

```
POST [base]/BiologicallyDerivedProductDispense
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense", "value": "ISS-2026-0002" } ],
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/[id]" },
  "patient": { "reference": "Patient/[id]" },
  "performer": [ { "actor": { "reference": "Practitioner/[id]" } } ],
  "whenHandedOver": "2026-09-20T10:30:00+05:00"
}
```

**Обновление** (например, чтобы установить `status` в `returned`, когда единица возвращена) - отправьте полный ресурс с новыми значениями методом PUT:

```
PUT [base]/BiologicallyDerivedProductDispense/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

BiologicallyDerivedProductDispense пока не указан в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); запросы выше используют стандартные параметры поиска FHIR R5.

### Связанные материалы

- [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) · [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) · [UZ Core Procedure](StructureDefinition-uz-core-procedure.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) · [Must Support](must-support.html) · [Общие рекомендации](general-guidance.html)
