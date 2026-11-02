### Быстрый старт {#quick-start}

Для запросов требуется JWT-токен доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); разделитель `|` между системой и кодом нужно кодировать как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/MedicationAdministration/[id]
```

**Поиск введений**

```
GET [base]/MedicationAdministration?patient=Patient/[id]
GET [base]/MedicationAdministration?subject=Patient/[id]&status=completed
GET [base]/MedicationAdministration?encounter=Encounter/[id]
GET [base]/MedicationAdministration?date=ge2026-01-01&date=le2026-12-31
GET [base]/MedicationAdministration?medication=Medication/[id]
GET [base]/MedicationAdministration?request=MedicationRequest/[id]
GET [base]/MedicationAdministration?identifier=https://example.org/administration-id%7CMA-123
```

**Создание**

```
POST [base]/MedicationAdministration
{
  "resourceType": "MedicationAdministration",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationadministration"] },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "occurenceDateTime": "2026-08-28",
  "recorded": "2026-08-28",
  "dosage": { "dose": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
}
```

Это сокращённый пример структуры; передавайте обязательные элементы базового ресурса и все применимые сведения. Если лекарство введено для лечения аллергии, укажите показание в `reason`. Если введение вызвало реакцию, внесите её в [AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) пациента и свяжите `reaction` с данным ресурсом через `openEHR-administration`.

**Обновление** (например, исправление события или изменение статуса): отправьте полный ресурс методом `PUT [base]/MedicationAdministration/[id]`. Используйте версионное обновление сервера, если оно поддерживается.

Поддерживаемые параметры поиска перечислены в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html): `patient`, `subject`, `date`, `medication`, `request`, `encounter`, `performer`, `status` и `identifier`.

### Связанные материалы

- [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html)
- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) &middot; [UZ Core MedicationDispense](StructureDefinition-uz-core-medication-dispense.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
