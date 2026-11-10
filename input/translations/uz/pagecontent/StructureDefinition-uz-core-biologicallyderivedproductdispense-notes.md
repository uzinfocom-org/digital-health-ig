> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR serverining bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` sifatida URL-kodlanishi kerak.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/BiologicallyDerivedProductDispense/[id]
```

**Berishlarni qidirish**

```
GET [base]/BiologicallyDerivedProductDispense?_lastUpdated=ge2026-01-01
GET [base]/BiologicallyDerivedProductDispense?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense
GET [base]/BiologicallyDerivedProductDispense?_id=[id1],[id2]
```

**Berishni qayd etish**

```
POST [base]/BiologicallyDerivedProductDispense
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense" ] },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/[id]" },
  "patient": { "reference": "Patient/[id]" },
  "performer": [ { "actor": { "reference": "Practitioner/[id]" } } ],
  "whenHandedOver": "2026-11-09T10:30:00+05:00"
}
```

**Yangilash** (masalan, birlik qaytarilganda `status` ni `returned` ga o'zgartirish uchun) - yangi qiymatlar bilan to'liq resursni PUT usulida yuboring:

```
PUT [base]/BiologicallyDerivedProductDispense/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

BiologicallyDerivedProductDispense hali [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'rsatilmagan; yuqoridagi so'rovlar FHIR R5 ning standart qidiruv parametrlaridan foydalanadi.

### Aloqador

- [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) · [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) · [UZ Core Procedure](StructureDefinition-uz-core-procedure.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) · [Must Support](must-support.html) · [Umumiy ko'rsatmalar](general-guidance.html)
