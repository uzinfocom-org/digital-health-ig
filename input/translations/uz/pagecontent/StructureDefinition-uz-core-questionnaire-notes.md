> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Questionnaire bu shablon boʻlib, bemor maʼlumotlari emas, shuning uchun qidiruv bemor boʻyicha emas, balki forma metamaʼlumotlari boʻyicha amalga oshiriladi. `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va URL kodlashda `%7C` koʻrinishida boʻlishi kerak.

**Server identifikatori boʻyicha oʻqish**

```
GET [base]/Questionnaire/[id]
```

**Soʻrovnomalarni topish**

```
GET [base]/Questionnaire?status=active
GET [base]/Questionnaire?name=PatientHealthDeclaration
GET [base]/Questionnaire?title=Health
GET [base]/Questionnaire?url=https://dhp.uz/fhir/core/Questionnaire/health-declaration
GET [base]/Questionnaire?version=1.0.0
GET [base]/Questionnaire?date=ge2025-01-01
GET [base]/Questionnaire?context=...
```

**Yaratish**

```
POST [base]/Questionnaire
{
  "resourceType": "Questionnaire",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire" ] },
  "status": "draft",
  "title": "...",
  "item": [ ... ],
  ...
}
```

**Yangilash** (masalan, `status` ni `active` ga oʻrnatib qoralamani eʼlon qilish yoki eski shablonni iste'moldan chiqarish) - toʻliq resursni yangi `status` bilan PUT orqali qaytaring:

```
PUT [base]/Questionnaire/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Barcha qoʻllab-quvvatlanadigan qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Ushbu qoʻllanmani qanday oʻqish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy koʻrsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
