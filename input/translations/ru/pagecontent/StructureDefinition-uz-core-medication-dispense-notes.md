> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение отпуска по серверному id и его предыдущих версий**

```
GET [base]/MedicationDispense/[id]
GET [base]/MedicationDispense/[id]/_history
```

**Поиск отпусков**

```
# every dispense against a prescription
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]

# by dispense number
GET [base]/MedicationDispense?identifier=MD-2026-00002

# by medication, as a catalogue reference or a code
GET [base]/MedicationDispense?medication=Medication/[id]
GET [base]/MedicationDispense?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
```

**Другие полезные запросы**

```
GET [base]/MedicationDispense?patient=Patient/[id]&status=completed
GET [base]/MedicationDispense?patient=Patient/[id]&whenhandedover=ge2026-01-01
GET [base]/MedicationDispense?performer=Organization/[id]&whenhandedover=ge2026-03-01
GET [base]/MedicationDispense?receiver=RelatedPerson/[id]
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]&_include=MedicationDispense:prescription
```

**Регистрация отпуска**

```
POST [base]/MedicationDispense
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense" ] },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "authorizingPrescription": [ { "reference": "MedicationRequest/[id]" } ],
  "quantity": { ... },
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  ...
}
```

**Обновление существующего отпуска** (например, установить `status` в `completed` после выдачи лекарства)

```
PUT [base]/MedicationDispense/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "MedicationDispense",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense" ] },
  "status": "completed",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#MedicationDispense1-44).

### Связанные разделы

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) &middot; [UZ Core MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html)
- [Электронный рецепт и отпуск лекарственного средства](workflow-prescription.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
