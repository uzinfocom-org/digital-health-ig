### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` tizimni qiymatdan ajratadi va URL da `%7C` ko'rinishida kodlanishi shart.

**Server identifikatori bo'yicha olish**

```
GET [base]/Encounter/[id]
```

**Encounter resurslarini qidirish**

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

**Yangilash** (masalan, `status` qiymatini `completed` ga o'zgartirish va `actualPeriod.end` ni to'ldirish orqali tashrifni yakunlash) - to'liq resursni PUT orqali qayta yuboring:

```
PUT [base]/Encounter/[id]
If-Match: W/"3"   # oxirgi o'qishdan olingan ETag; agar shundan keyin resurs o'zgargan bo'lsa, 412 qaytariladi
```

Barcha qo'llab-quvvatlanadigan qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Bog'liq bo'limlar

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
