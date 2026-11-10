> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Ombor pozitsiyasini server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/InventoryItem/[id]
GET [base]/InventoryItem/[id]/_history
```

**Qidiruv**

```
GET [base]/InventoryItem?_lastUpdated=ge2026-10-01
GET [base]/InventoryItem?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem
GET [base]/InventoryItem?_id=[id1],[id2]
```

**Buyumni omborda qayd etish**

```
POST [base]/InventoryItem
{
  "resourceType": "InventoryItem",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "..." } ],
  "status": "active",
  "inventoryStatus": [ { "coding": [ { "system": "...", "code": "accepted" } ] } ],
  "instance": { "location": { "reference": "Location/[id]" }, ... },
  "productReference": { "reference": "BiologicallyDerivedProduct/[id]" },
  ...
}
```

**Mavjud pozitsiyani yangilash** (masalan, `inventoryStatus` ni `accepted` dan `available`, `reserved` yoki `issued` ga o'tkazish)

```
PUT [base]/InventoryItem/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "InventoryItem",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem" ] },
  "status": "active",
  "inventoryStatus": [ { "coding": [ { "system": "...", "code": "reserved" } ] } ],
  ...
}
```

Ombor holatining `system` i - `https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs`. Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) &middot; [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
