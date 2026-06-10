> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro aloqalari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlangan bo'lishi kerak.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Condition/[id]
```

**Holatlarni topish**

```
GET [base]/Condition?patient=Patient/[id]
GET [base]/Condition?patient=Patient/[id]&category=problem-list-item
GET [base]/Condition?patient=Patient/[id]&clinical-status=active&verification-status=confirmed
GET [base]/Condition?patient=Patient/[id]&code=http://hl7.org/fhir/sid/icd-10%7CG43.9
GET [base]/Condition?encounter=Encounter/[id]
GET [base]/Condition?patient=Patient/[id]&onset-date=ge2025-01-01
GET [base]/Condition?patient=Patient/[id]&recorded-date=ge2025-01-01
```

**Yaratish**

```
POST [base]/Condition
{
  "resourceType": "Condition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "clinicalStatus": { "coding": [ { "code": "active" } ] },
  "code": { ... },
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Yangilash** (masalan, muammoni hal qilingan deb belgilash) - to'liq resursni yangi `clinicalStatus` / `abatement[x]` bilan PUT orqali qaytaring:

```
PUT [base]/Condition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Aloqador materiallar

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
