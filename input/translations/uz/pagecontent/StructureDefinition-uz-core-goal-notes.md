> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro aloqalari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` ko'rinishida URL kodlangan bo'lishi kerak.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Goal/[id]
```

**Maqsadlarni topish**

```
GET [base]/Goal?patient=Patient/[id]
GET [base]/Goal?patient=Patient/[id]&lifecycle-status=active
GET [base]/Goal?patient=Patient/[id]&category=dietary
GET [base]/Goal?patient=Patient/[id]&achievement-status=in-progress
GET [base]/Goal?patient=Patient/[id]&target-date=ge2025-01-01
GET [base]/Goal?patient=Patient/[id]&description=http://snomed.info/sct%7C1201005
```

**Yaratish**

```
POST [base]/Goal
{
  "resourceType": "Goal",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal" ] },
  "lifecycleStatus": "active",
  "description": { ... },
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Maqsadni bekor qilish** - Goal hech qachon qattiq o'chirilmaydi. `DELETE` ni chaqirish o'rniga yangilangan `lifecycleStatus` (masalan, `cancelled` yoki `completed`) bilan to'liq resursni qaytarib PUT qiling:

```
PUT [base]/Goal/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Barcha qo'llab-quvvatlanadigan qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Aloqador materiallar

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
