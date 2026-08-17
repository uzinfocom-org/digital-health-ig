### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT access token talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` system ni qiymatdan ajratadi va URL da `%7C` ko'rinishida URL-kodlanishi kerak.

**Server identifikatori bo'yicha olish**

```
GET [base]/EpisodeOfCare/[id]
```

**EpisodeOfCare resurslarini qidirish**

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
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episode-of-care" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "managingOrganization": { "reference": "Organization/[id]" },
  ...
}
```

**Yangilash** (masalan, EpisodeOfCare ni yakunlash uchun `status` qiymatini `finished` qilib, `period.end` ni to'ldirish, yoki EpisodeOfCare ni boshqa `managingOrganization` ga o'tkazish uchun) - to'liq resursni PUT orqali qayta yuboring:

```
PUT [base]/EpisodeOfCare/[id]
If-Match: W/"3"   # oxirgi o'qishda olingan ETag; shundan keyin o'zgargan bo'lsa 412 qaytariladi
```

Barcha qo'llab-quvvatlanadigan qidiruv parametrlarini [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'ring.

### Bog'liq materiallar

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
