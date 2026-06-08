> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типичные взаимодействия с API для этого профиля. Запросы требуют JWT-токен доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему токена от его значения и должен быть закодирован в URL как `%7C`. Эти взаимодействия используют стандартные параметры поиска FHIR R5; см. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) по мере его доработки для этого ресурса.

**Чтение рекомендации по идентификатору на сервере**

```
GET [base]/ImmunizationRecommendation/[id]
```

**Полезные запросы поиска**

```
# the current forecast for a patient
GET [base]/ImmunizationRecommendation?patient=Patient/[id]

# most recent forecast first
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# what a patient is due for, by status, target disease or vaccine type
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&status=due
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&target-disease=http://snomed.info/sct%7C14189004
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&vaccine-type=http://hl7.org/fhir/sid/cvx%7C03
```

**Создание рекомендации**

```
POST [base]/ImmunizationRecommendation
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"
    ]
  },
  ...
}
```

Этот ресурс обычно генерируется механизмом рекомендаций на основе действующего календаря прививок и истории иммунизации пациента, а не заполняется вручную.

**Обновление рекомендации** (механизм заменяет прогноз по мере поступления новой истории)

```
PUT [base]/ImmunizationRecommendation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ImmunizationRecommendation",
  "id": "[id]",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"
    ]
  },
  ...
}
```

### Связанные материалы

- [Рабочий процесс иммунизации](workflow-immunization.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
