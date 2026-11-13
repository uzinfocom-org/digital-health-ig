> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR serverining bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` sifatida URL-kodlanishi kerak.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/ChargeItem/[id]
```

**Hisob yozuvlarini qidirish**

```
GET [base]/ChargeItem?_lastUpdated=ge2026-01-01
GET [base]/ChargeItem?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem
GET [base]/ChargeItem?_id=[id1],[id2]
```

**Yaratish**

UZ Core ChargeItem profili belgilagan tizim bilan ChargeItem identifikatorini yuboring:

```
POST [base]/ChargeItem
{
  "resourceType": "ChargeItem",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem" ] },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/charge-item",
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
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

ChargeItem hali [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'rsatilmagan; yuqoridagi so'rovlar FHIR R5 ning standart qidiruv parametrlaridan foydalanadi.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) · [Must Support](must-support.html) · [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
