> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` shaklida URL-kodlangan bo'lishi kerak.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Observation/[id]
```

**Kuzatuvlarni topish**

```
GET [base]/Observation?patient=Patient/[id]
GET [base]/Observation?patient=Patient/[id]&category=laboratory
GET [base]/Observation?patient=Patient/[id]&code=http://loinc.org%7C8867-4
GET [base]/Observation?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Observation?patient=Patient/[id]&status=final
GET [base]/Observation?encounter=Encounter/[id]
GET [base]/Observation?based-on=ServiceRequest/[id]
GET [base]/Observation?specimen=Specimen/[id]
GET [base]/Observation?performer=Practitioner/[id]
GET [base]/Observation?patient=Patient/[id]&value-concept=http://snomed.info/sct%7C260385009
```

**Yaratish**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [ ... ],
  "code": { ... },
  "subject": { "reference": "Patient/[id]" },
  "valueQuantity": { ... }
}
```

**Yangilash** (masalan, `preliminary` holatini `final` holatiga yoki `final` holatini `amended` holatiga o'tkazish) - yangi `status` bilan to'liq resursni qaytarib PUT qiling:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Hayotiy ko'rsatkichlar](vital-signs.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Laboratoriya buyurtmasidan natijagacha](workflow-lab.html)
