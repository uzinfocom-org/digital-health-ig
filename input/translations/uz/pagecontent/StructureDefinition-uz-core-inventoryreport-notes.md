> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun odatiy API o'zaro ta'sirlari. So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) ga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); tizim va kod orasidagi `|` belgisi `%7C` sifatida kodlanadi.

**Server identifikatori bo'yicha olish**

```
GET [base]/InventoryReport/[id]
```

**Yaratish**

```
POST [base]/InventoryReport
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00",
  "inventoryListing": [{
    "location": { "reference": "Location/[id]" },
    "item": [{
      "quantity": {
        "value": 100,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/[id]" } }
    }]
  }]
}
```

**Yangilash** (masalan, hisobotni `entered-in-error` deb belgilash uchun): to'liq resursni `PUT [base]/InventoryReport/[id]` orqali, o'qilgan versiyani o'z ichiga olgan `If-Match` sarlavhasi bilan yuboring, shunda parallel o'zgarish ustidan yozilmaydi.

[CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hozircha InventoryReport ni o'z ichiga olmaydi; server uni qo'shganda qo'llab-quvvatlanadigan o'zaro ta'sirlar va qidiruv parametrlari shu yerda tavsiflanadi.

### Bog'liq materiallar

- [UZ Core InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
