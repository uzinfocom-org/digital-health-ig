> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro aloqalari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlangan bo'lishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/AllergyIntolerance/[id]
```

**Allergiyalar va intoleranslarni topish**

```
GET [base]/AllergyIntolerance?patient=Patient/[id]
GET [base]/AllergyIntolerance?patient=Patient/[id]&clinical-status=active
GET [base]/AllergyIntolerance?patient=Patient/[id]&category=medication
GET [base]/AllergyIntolerance?patient=Patient/[id]&criticality=high
GET [base]/AllergyIntolerance?patient=Patient/[id]&verification-status=confirmed
GET [base]/AllergyIntolerance?patient=Patient/[id]&code=http://snomed.info/sct%7C256277009
```

**Yaratish**

```
POST [base]/AllergyIntolerance
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance" ]
  },
  "clinicalStatus": { ... },
  "verificationStatus": { ... },
  "type": { "coding": [ { "code": "allergy" } ] },
  "category": [ "environment" ],
  "code": { ... },
  "patient": { "reference": "Patient/[id]" }
}
```

**Yangilash** (masalan, `resolved` deb belgilash yoki avval `unconfirmed` bo'lgan allergiyani tasdiqlash) - yangi status bilan to'liq resursni qaytarib PUT qiling:

```
PUT [base]/AllergyIntolerance/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
