> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Yetkazib berishni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/SupplyDelivery/[id]
GET [base]/SupplyDelivery/[id]/_history
```

**Qidiruv**

```
GET [base]/SupplyDelivery?_lastUpdated=ge2026-10-01
GET [base]/SupplyDelivery?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery
GET [base]/SupplyDelivery?_id=[id1],[id2]
```

**Yetkazib berishni qayd etish**

```
POST [base]/SupplyDelivery
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
      "valueReference": { "reference": "Location/[id]" }
    }
  ],
  "status": "in-progress",
  "type": { "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ] },
  "suppliedItem": [ ... ],
  "supplier": { "reference": "Organization/[id]" },
  "destination": { "reference": "Location/[id]" },
  ...
}
```

**Mavjud yetkazib berishni yangilash** (masalan, buyumlar topshirilgandan keyin `status` ni `completed` ga o'rnatish)

```
PUT [base]/SupplyDelivery/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SupplyDelivery",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery" ] },
  "status": "completed",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#SupplyDelivery1-61) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
