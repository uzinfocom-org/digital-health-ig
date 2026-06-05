> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR serverining bazaviy URL manzili](api-access.html#endpoints); `|` belgisi system va value qiymatlarini ajratadi va URL kodlashda `%7C` ko'rinishida yozilishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/EpisodeOfCare/[id]
```

**Tibbiy yordam epizodlarini topish**

```
GET [base]/EpisodeOfCare?patient=Patient/[id]
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/EpisodeOfCare?patient=Patient/[id]&type=http://terminology.dhp.uz/...%7C...
GET [base]/EpisodeOfCare?patient=Patient/[id]&date=ge2025-01-01
GET [base]/EpisodeOfCare?organization=Organization/[id]
GET [base]/EpisodeOfCare?care-manager=Practitioner/[id]
```

**Yaratish**

```
POST [base]/EpisodeOfCare
{
  "resourceType": "EpisodeOfCare",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "managingOrganization": { "reference": "Organization/[id]" },
  ...
}
```

**Yangilash** (masalan, `status` qiymatini `finished` ga va `period.end` ni o'rnatib epizodni yopish, yoki uni boshqa `managingOrganization` ga o'tkazish) - to'liq resursni qaytarib PUT qiling:

```
PUT [base]/EpisodeOfCare/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Barcha qo'llab-quvvatlanadigan qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
