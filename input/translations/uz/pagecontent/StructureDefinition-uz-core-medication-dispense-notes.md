> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Berishni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/MedicationDispense/[id]
GET [base]/MedicationDispense/[id]/_history
```

**Berishlarni topish**

```
# every dispense against a prescription
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]

# by dispense number
GET [base]/MedicationDispense?identifier=MD-2026-00002

# by medication, as a catalogue reference or a code
GET [base]/MedicationDispense?medication=Medication/[id]
GET [base]/MedicationDispense?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
```

**Boshqa foydali qidiruvlar**

```
GET [base]/MedicationDispense?patient=Patient/[id]&status=completed
GET [base]/MedicationDispense?patient=Patient/[id]&whenhandedover=ge2026-01-01
GET [base]/MedicationDispense?performer=Organization/[id]&whenhandedover=ge2026-03-01
GET [base]/MedicationDispense?receiver=RelatedPerson/[id]
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]&_include=MedicationDispense:prescription
```

**Berishni qayd etish**

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

**Mavjud berishni yangilash** (masalan, dori topshirilgandan keyin `status` ni `completed` ga o'rnatish)

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

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#MedicationDispense1-44) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) &middot; [UZ Core MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html)
- [Elektron retsept va dori vositasini berish](workflow-prescription.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
