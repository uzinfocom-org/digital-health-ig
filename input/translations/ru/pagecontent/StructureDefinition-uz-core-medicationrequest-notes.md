> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение рецепта по серверному id и его предыдущих версий**

```
GET [base]/MedicationRequest/[id]
GET [base]/MedicationRequest/[id]/_history
```

**Поиск рецепта**

```
# by prescription number, for example after scanning the QR code
GET [base]/MedicationRequest?identifier=12345678

# by medication, as a catalogue reference or a code
GET [base]/MedicationRequest?medication=Medication/[id]
GET [base]/MedicationRequest?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
```

**Другие полезные запросы**

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationRequest?patient=Patient/[id]&authoredon=ge2026-01-01
GET [base]/MedicationRequest?patient=Patient/[id]&category=rembr-0001-00001
GET [base]/MedicationRequest?requester=PractitionerRole/[id]
GET [base]/MedicationRequest?encounter=Encounter/[id]
GET [base]/MedicationRequest?intended-dispenser=Organization/[id]
GET [base]/MedicationRequest?patient=Patient/[id]&_revinclude=MedicationDispense:prescription
```

Последний запрос возвращает рецепты пациента вместе с отпусками, которые их выполняют.

**Создание рецепта**

```
POST [base]/MedicationRequest
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest" ] },
  "status": "active",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "dosageInstruction": [ ... ],
  "dispenseRequest": { ... },
  ...
}
```

**Обновление существующего рецепта** (например, установить `status` в `cancelled` с указанием `statusReason`)

```
PUT [base]/MedicationRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "MedicationRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest" ] },
  "status": "cancelled",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#MedicationRequest1-39).

### Связанные разделы

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) &middot; [UZ Core MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html)
- [Электронный рецепт и отпуск лекарственного средства](workflow-prescription.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
