> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Этот профиль основан на Observation, поэтому используйте конечную точку Observation. `[base]` — это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему и значение и должен быть закодирован в URL как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Observation/[id]
```

**Поиск социально-экономических наблюдений**

```
GET [base]/Observation?patient=Patient/[id]&category=social-history
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C1303306008
GET [base]/Observation?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Observation?patient=Patient/[id]&status=final
```

**Создание**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "1303306008",
        "display": "Eligible for benefit"
      }
    ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2025-06-11",
  ...
}
```

**Обновление** (например, исправить записанное значение, установив `status` в `corrected`) — отправьте PUT с полным ресурсом и новым `status` / `value[x]`:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Все поддерживаемые поисковые параметры см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
