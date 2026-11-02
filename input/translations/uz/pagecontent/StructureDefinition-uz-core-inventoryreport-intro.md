> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core InventoryReport bir yoki bir nechta saqlash joyidagi zaxiralar hisobini qayd etadi, masalan shifoxona dorixonasi, bo'lim dori shkafi, ombor yoki qon banki javoni. Holat hisoboti (snapshot) hisoblash paytida har bir pozitsiyadan qancha mavjudligini ko'rsatadi. O'zgarishlar hisoboti (difference) qancha kelgani yoki chiqqanini va nima sababdan ekanini ko'rsatadi: yangi kirim, ko'chirish, muddati o'tganini hisobdan chiqarish. Har bir hisoblangan pozitsiya nima hisoblanganiga havola qiladi - [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [InventoryItem](StructureDefinition-uz-core-inventoryitem.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) yoki NutritionProduct, har bir ro'yxat esa hisoblash o'tkazilgan [Location](StructureDefinition-uz-core-location.html) ga havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (mandatory) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)). Tizim mavjud ma'lumotni Must Support elementlariga kiritishi va qabul qilinganda qayta ishlashi kerak. Aniq turlar, karralilik va bog'lanishlar [profilning rasmiy ko'rinishida](#profile) berilgan.

#### Har bir UZ Core InventoryReport Must Have

Profil yangi majburiy karraliliklarni qo'shmaydi. Bazaviy FHIR talablariga amal qiling: `status`, `countType` va `reportedDateTime`. Har bir hisoblangan pozitsiya, agar ko'rsatilgan bo'lsa, `quantity` va u hisoblaydigan `item` ga ham ega bo'lishi kerak.

#### Har bir UZ Core InventoryReport Must Support

- biznes identifikator - boshqaruvchi tashkilot tizimidagi hisobot raqami ([identifikator slayslari](#identifier-slices) ga qarang);
- status (draft / requested / active / entered-in-error) va hisoblash turi (snapshot yoki difference);
- o'zgarishlar hisoboti uchun operatsiya turi (kirim, chiqim yoki o'zgarishsiz) va uning sababi, masalan yangi kirim, ko'chirish yoki hisobdan chiqarish;
- hisobot qachon tuzilgani, kim tuzgani (tibbiyot xodimi, bemor yoki uning vakili) va qaysi davrni qamrab olishi;
- har bir ro'yxat: hisoblangan joy, undagi zaxira holati (mavjud, karantinda, muddati o'tgan va hokazo) va hisoblash vaqti;
- har bir hisoblangan pozitsiya: uning toifasi (dori vositasi, vaksina, tibbiy jihoz, qon komponenti va hokazo), birligi bilan miqdori - SNOMED CT birligi, masalan quti yoki flakon, yoki milliy birlik, masalan o'ram, - va nima hisoblangani;
- izohlar.

### JSON ni bosqichma-bosqich tuzish

#### Yuborishingiz kerak bo'lgan eng kichik InventoryReport

Faqat uchta bazaviy element majburiy. `countType` mavjud zaxira uchun `snapshot`, zaxira o'zgarishi uchun `difference` bo'ladi.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00"
}
```

#### Mavjud zaxirani hisoblash

Har bir `inventoryListing` - bir paytdagi bitta joy, uning har bir `item` elementi esa bitta hisoblangan mahsulot. `quantity` birlikni [zaxira o'lchov birliklari](ValueSet-inventory-unit-vs.html) dan oladi: asosan SNOMED CT birliklari, masalan `418445004` Box yoki `733026001` Vial, SNOMED CT da mos birlik bo'lmasa esa milliy birliklar, masalan o'ram. `item.item` - `CodeableReference`, shuning uchun havola bir daraja chuqurroqda, `reference` ichida joylashadi. Milliy kodlarning ko'rinadigan nomlari resursning `language` qiymatiga mos ravishda o'zbek tilida beriladi.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "language": "uz",
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00",
  "reporter": { "reference": "Practitioner/example-practitioner" },
  "inventoryListing": [{
    "location": { "reference": "Location/example-location" },
    "itemStatus": {
      "coding": [{
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
        "code": "available",
        "display": "Mavjud"
      }]
    },
    "countingDateTime": "2026-10-27T09:30:00+05:00",
    "item": [{
      "category": {
        "coding": [{
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-item-category-cs",
          "code": "invct-0001-00001",
          "display": "Dori vositasi"
        }]
      },
      "quantity": {
        "value": 100,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/example-medication" } }
    }]
  }]
}
```

#### Zaxira o'zgarishi haqida hisobot

O'zgarishlar hisoboti zaxira qo'shilgan yoki chiqarilganini `operationType` da, sababini esa `operationTypeReason` da ko'rsatadi. Bu yerda oktyabr davomida yangi kirim sifatida 20 quti kelgan. `operationType` o'zgarishni tavsiflaydi, shuning uchun holat hisobotlarida u ko'rsatilmaydi. `identifier` boshqaruvchi tashkilotning axborot tizimi hisobotga bergan raqamni o'z ichiga oladi, tashkilotning o'zi esa `assigner` da ko'rsatiladi.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "language": "uz",
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-report",
    "value": "INV-2026-000451",
    "assigner": { "reference": "Organization/tashkent-diseases-hospital" }
  }],
  "status": "active",
  "countType": "difference",
  "operationType": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-operation-type-cs",
      "code": "invop-0001-00001",
      "display": "Kirim"
    }]
  },
  "operationTypeReason": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-operation-reason-cs",
      "code": "invrs-0001-00004",
      "display": "Yangi kirim"
    }]
  },
  "reportedDateTime": "2026-11-01T09:00:00+05:00",
  "reporter": { "reference": "Practitioner/example-practitioner" },
  "reportingPeriod": { "start": "2026-10-01", "end": "2026-10-31" },
  "inventoryListing": [{
    "location": { "reference": "Location/example-location" },
    "item": [{
      "quantity": {
        "value": 20,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/example-medication" } }
    }]
  }]
}
```

#### Identifikator slayslari {#identifier-slices}

| Slays | `system` | Nimani identifikatsiya qiladi |
|---|---|---|
| `inventoryReport` | `https://dhp.uz/fhir/core/sid/doc/uz/inventory-report` | Boshqaruvchi tashkilotning axborot tizimi bergan hisobot raqami ([NamingSystem](NamingSystem-uzb-inventory-report-identifier.html)) |

To'liq namuna: [dori vositasi kirimi hisoboti](InventoryReport-example-inventory-report-medication-receipt.html).

API so'rovlari uchun [Tezkor boshlash](#quick-start) bo'limiga qarang.
