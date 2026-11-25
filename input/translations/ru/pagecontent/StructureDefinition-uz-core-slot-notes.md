> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/Slot/[id]
```

**Поиск слотов**

```
GET [base]/Slot?schedule=Schedule/[id]&status=free&start=ge2026-11-02&start=lt2026-11-03
GET [base]/Slot?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs%7C394814009&status=free
GET [base]/Slot?service-category=https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs%7C270
GET [base]/Slot?identifier=[system]%7C[value]
```

Первый запрос выводит свободные слоты одного расписания за один день; второй находит свободные слоты у врача общей практики.

**Создание**

```
POST [base]/Slot
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "schedule": { "reference": "Schedule/[id]" },
  "status": "free",
  "start": "2026-11-02T09:00:00+05:00",
  "end": "2026-11-02T09:30:00+05:00"
}
```

**Обновление** (например, чтобы отметить слот как занятый): отправьте полный ресурс через `PUT [base]/Slot/[id]`, установите `status` в `busy` и добавьте заголовок `If-Match` с прочитанной версией, чтобы два пациента не могли одновременно занять один и тот же слот.

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Slot1-36).

### Связанные разделы

- [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
