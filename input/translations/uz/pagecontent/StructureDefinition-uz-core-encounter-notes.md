> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR serverining bazaviy URL manzili](api-access.html#endpoints); `|` belgisi system va value qiymatlarini ajratadi va URL kodlashda `%7C` ko'rinishida yozilishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Encounter/[id]
```

**Murojaatlarni topish**

```
GET [base]/Encounter?patient=Patient/[id]
GET [base]/Encounter?patient=Patient/[id]&status=in-progress
GET [base]/Encounter?patient=Patient/[id]&class=IMP
GET [base]/Encounter?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Encounter?patient=Patient/[id]&type=http://terminology.dhp.uz/...%7C...
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]
GET [base]/Encounter?service-provider=Organization/[id]
GET [base]/Encounter?practitioner=Practitioner/[id]
GET [base]/Encounter?location=Location/[id]
```

**Yaratish**

```
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] },
  "status": "in-progress",
  "class": [ { "coding": [ { "code": "IMP" } ] } ],
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Yangilash** (masalan, `status` qiymatini `completed` ga o'rnatib va `actualPeriod.end` ni to'ldirib tashrifni yopish) - to'liq resursni qaytarib PUT qiling:

```
PUT [base]/Encounter/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Barcha qo'llab-quvvatlanadigan qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
