> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Retseptni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/MedicationRequest/[id]
GET [base]/MedicationRequest/[id]/_history
```

**Retseptni topish**

```
# by prescription number, for example after scanning the QR code
GET [base]/MedicationRequest?identifier=12345678

# by medication, as a catalogue reference or a code
GET [base]/MedicationRequest?medication=Medication/[id]
GET [base]/MedicationRequest?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
```

**Boshqa foydali qidiruvlar**

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationRequest?patient=Patient/[id]&authoredon=ge2026-01-01
GET [base]/MedicationRequest?patient=Patient/[id]&category=rembr-0001-00001
GET [base]/MedicationRequest?requester=PractitionerRole/[id]
GET [base]/MedicationRequest?encounter=Encounter/[id]
GET [base]/MedicationRequest?intended-dispenser=Organization/[id]
GET [base]/MedicationRequest?patient=Patient/[id]&_revinclude=MedicationDispense:prescription
```

Oxirgi qidiruv bemorning retseptlarini ularni bajaradigan berishlar bilan birga qaytaradi.

**Retsept yaratish**

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

**Mavjud retseptni yangilash** (masalan, `statusReason` bilan `status` ni `cancelled` ga o'rnatish)

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

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#MedicationRequest1-39) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) &middot; [UZ Core MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html)
- [Elektron retsept va dori vositasini berish](workflow-prescription.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
