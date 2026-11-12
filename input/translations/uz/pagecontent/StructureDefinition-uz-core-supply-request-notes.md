> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**So'rovni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/SupplyRequest/[id]
GET [base]/SupplyRequest/[id]/_history
```

**Qidiruv**

```
GET [base]/SupplyRequest?_lastUpdated=ge2026-10-01
GET [base]/SupplyRequest?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request
GET [base]/SupplyRequest?_id=[id1],[id2]
```

**So'rov yaratish**

```
POST [base]/SupplyRequest
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "..." } ],
  "status": "active",
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/[id]" },
  "item": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006" } ] } },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "supplier": [ { "reference": "Organization/[id]" } ],
  ...
}
```

**Mavjud so'rovni yangilash** (masalan, buyumlar yetkazilgandan keyin `status` ni `completed` ga yoki ular endi kerak bo'lmaganda `cancelled` ga o'rnatish)

```
PUT [base]/SupplyRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SupplyRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request" ] },
  "status": "completed",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#SupplyRequest1-62) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
