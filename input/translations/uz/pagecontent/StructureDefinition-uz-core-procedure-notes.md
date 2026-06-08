> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` sifatida URL-kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Procedure/[id]
```

**Protseduralarni topish**

```
GET [base]/Procedure?patient=Patient/[id]
GET [base]/Procedure?patient=Patient/[id]&code=http://snomed.info/sct%7C386438000
GET [base]/Procedure?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Procedure?encounter=Encounter/[id]
GET [base]/Procedure?patient=Patient/[id]&status=completed
GET [base]/Procedure?based-on=ServiceRequest/[id]
GET [base]/Procedure?performer=Practitioner/[id]
```

**Yaratish**

```
POST [base]/Procedure
{
  "resourceType": "Procedure",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure" ] },
  "status": "completed",
  "code": { ... },
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  ...
}
```

**Yangilash** (masalan, `in-progress` holatidan `completed` holatiga o'tkazish yoki `outcome` qayd etish) - yangi qiymatlar bilan to'liq resursni qaytarib PUT qiling:

```
PUT [base]/Procedure/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
