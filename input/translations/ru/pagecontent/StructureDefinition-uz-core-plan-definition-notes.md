> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для данного профиля. Для запросов требуется токен доступа JWT - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему токена от его значения и должен быть закодирован в URL как `%7C`. Эти взаимодействия используют стандартные поисковые параметры FHIR R5; см. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) по мере его финализации для данного ресурса.

**Чтение расписания по идентификатору на сервере**

```
GET [base]/PlanDefinition/[id]
```

**Полезные запросы**

```
# the active national schedule
GET [base]/PlanDefinition?status=active

# by machine name, title, or version
GET [base]/PlanDefinition?name=NationalImmunizationSchedule
GET [base]/PlanDefinition?title=National%20Immunization%20Schedule
GET [base]/PlanDefinition?version=1.0.0

# by publication date, jurisdiction, or use-context value
GET [base]/PlanDefinition?date=ge2026-01-01
GET [base]/PlanDefinition?jurisdiction=urn:iso:std:iso:3166%7CUZ
GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct%7C14189004
```

**Создание расписания**

```
POST [base]/PlanDefinition
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition" ] },
  ...
}
```

Перед активацией убедитесь, что расписание проходит валидацию (отсутствуют пропуски в последовательности доз, отсутствуют невозможные интервалы времени) и что для той же области применения нет другой уже активной версии.

**Обновление расписания** (например, публикация новой версии или вывод из эксплуатации старой)

```
PUT [base]/PlanDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "PlanDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition" ] },
  ...
}
```

### Связанные материалы

- [Рабочий процесс иммунизации](workflow-immunization.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
