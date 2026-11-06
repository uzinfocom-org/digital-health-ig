> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR serverining bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` sifatida URL-kodlanishi kerak.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/ChargeItem/[id]
```

**Hisob yozuvlarini qidirish**

```
GET [base]/ChargeItem?subject=Patient/[id]
GET [base]/ChargeItem?code=http://snomed.info/sct%7C373784005
GET [base]/ChargeItem?performer=PractitionerRole/[id]
GET [base]/ChargeItem?entered-date=ge2026-01-01
```

**Yaratish**

UZ Core ChargeItem profili belgilagan tizim bilan ChargeItem identifikatorini yuboring:

```
POST [base]/ChargeItem
{
  "resourceType": "ChargeItem",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item" ] },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/dmed/preferential-referral",
    "value": "[charge-item-id]"
  }],
  "status": "billable",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "373784005" }] },
  "subject": { "reference": "Patient/[id]" }
}
```

**Yangilash** (masalan, ijrochi yoki xizmat havolasini qo'shish uchun) - yangi qiymatlar bilan to'liq resursni PUT usulida yuboring:

```
PUT [base]/ChargeItem/[id]
If-Match: W/"3"   # oxirgi o'qishdagi ETag; resurs o'zgargan bo'lsa 412 qaytadi
```

Qo'llab-quvvatlanadigan qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) · [Must Support](must-support.html) · [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
