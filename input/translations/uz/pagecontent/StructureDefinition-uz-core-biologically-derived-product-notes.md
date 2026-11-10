> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` identifikator yoki kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Mahsulotni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/BiologicallyDerivedProduct/[id]
GET [base]/BiologicallyDerivedProduct/[id]/_history
```

**Yaratishdan oldin mahsulotni qidirish (odatiy birinchi qadam)**

```
# by unit number
GET [base]/BiologicallyDerivedProduct?identifier=https://dhp.uz/fhir/core/sid/prd/uz/blood/unit|BB-COMP-2026-0001

# by donation number - the donated unit and every component prepared from it
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation|DON-2025-0088231
```

**Boshqa foydali qidiruvlar**

```
GET [base]/BiologicallyDerivedProduct?code=http://snomed.info/sct|431069006&product-status=available
GET [base]/BiologicallyDerivedProduct?product-category=fluid
GET [base]/BiologicallyDerivedProduct?request=ServiceRequest/[id]
GET [base]/BiologicallyDerivedProduct?collector=Practitioner/[id]
GET [base]/BiologicallyDerivedProduct?_lastUpdated=ge2026-10-01
```

**Mahsulot yaratish** (faqat moslik yo'qligiga ishonch hosil qilgandan keyin)

```
POST [base]/BiologicallyDerivedProduct
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "..." } ],
  "biologicalSourceEvent": { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation", "value": "..." },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "cells" },
  "productCode": { "coding": [ { "system": "http://snomed.info/sct", "code": "126251004" } ] },
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  ...
}
```

**Mavjud mahsulotni yangilash** (masalan, birlik quyilgandan yoki utilizatsiya qilingandan keyin `productStatus` ni `unavailable` ga o'rnatish)

```
PUT [base]/BiologicallyDerivedProduct/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "BiologicallyDerivedProduct",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product" ] },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da, birlik va donatsiya raqamlari tizimlarining URI lari esa yuqoridagi [identifikator slayslari](#identifier-slices) jadvalida keltirilgan.

### Bog'liq bo'limlar

- [UZ Core InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [UZ Core SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
