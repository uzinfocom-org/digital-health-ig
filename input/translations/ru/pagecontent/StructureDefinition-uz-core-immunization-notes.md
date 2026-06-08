> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для этого профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему токена и его значение и должен кодироваться в URL как `%7C`. В этих взаимодействиях используются стандартные параметры поиска FHIR R5; см. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) по мере его финализации для данного ресурса.

**Чтение записи об иммунизации по идентификатору сервера**

```
GET [base]/Immunization/[id]
```

**Полезные поисковые запросы**

```
# all immunizations for a patient
GET [base]/Immunization?patient=Patient/[id]

# a patient's vaccination history for one vaccine, most recent first
GET [base]/Immunization?patient=Patient/[id]&vaccine-code=http://hl7.org/fhir/sid/cvx%7C19&_sort=-date

# completed doses only
GET [base]/Immunization?patient=Patient/[id]&status=completed

# by date, lot number, or performer
GET [base]/Immunization?patient=Patient/[id]&date=ge2026-01-01
GET [base]/Immunization?lot-number=LOT-BCG-2026-01
GET [base]/Immunization?performer=Practitioner/[id]
```

**Регистрация новой иммунизации**

```
POST [base]/Immunization
{
  "resourceType": "Immunization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  ...
}
```

Перед созданием проверьте, что для одной и той же комбинации пациента + кода вакцины + момента введения + номера партии ещё не существует записи, чтобы доза не была зарегистрирована дважды.

**Обновление записи об иммунизации** (например, исправить номер партии, добавить реакцию или пометить запись как `entered-in-error`)

```
PUT [base]/Immunization/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Immunization",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  ...
}
```

### Связанные материалы

- [Рабочий процесс иммунизации](workflow-immunization.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
