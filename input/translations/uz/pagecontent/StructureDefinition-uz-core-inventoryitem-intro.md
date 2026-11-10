> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core InventoryItem saqlanayotgan buyumni va uning holatini qayd etadi: qon quyish stansiyasi sovutgichli omborining javonidagi bir birlik eritrotsitlar yoki shifoxona markaziy omboridagi bir partiya tabletkalar. Resurs buyum nima ekanligini, u uchun qaysi tashkilot javobgarligini, qayerda saqlanayotganini, qancha borligini va ombor hisobining qaysi bosqichida turganini (qabul qilingan, karantinda, zaxiralangan, berilgan, muddati o'tgan va hokazo) ko'rsatadi. Mahsulotning o'zi alohida resurs bilan tavsiflanadi, ombor pozitsiyasi unga `productReference` da havola qiladi: qon komponenti uchun [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html), [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html) yoki NutritionProduct. [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) ombor pozitsiyasini yetkazilgan buyum sifatida ko'rsatishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core InventoryItem quyidagilarga ega bo'lishi shart

- yozuv holati `status` (active / inactive / entered-in-error / unknown).

`status` bazaviy InventoryItem resursida majburiy; ushbu profil boshqa majburiy elementlar qo'shmaydi. Ombor pozitsiyasi raqami o'z `system` iga, `name` nom turi, til va matnga, javobgar tashkilot esa o'z roliga ega bo'lishi shart.

#### Har bir UZ Core InventoryItem quyidagilarni qo'llab-quvvatlashi shart

- boshqaruvchi tashkilot bergan ombor pozitsiyasi raqami, doim `system` bilan birga (qarang: [identifikator slayslari](#identifier-slices));
- yozuv holati `status`;
- buyum toifasi `category`, buyum qon mahsuloti bo'lsa, qon mahsuloti turi ham;
- pozitsiya zaxirasini tashkil etuvchi mahsulot (`productReference`);
- buyum nomlari (`name`), har biri o'z turi (savdo nomi / muqobil nom / asl nomi / afzal nom), tili va matni bilan;
- buyum uchun javobgar tashkilotlar va ularning roli, masalan ishlab chiqaruvchi, distribyutor yoki yetkazib beruvchi (`responsibleOrganization`);
- buyumning milliy ombor holati (`inventoryStatus`), masalan qabul qilingan, karantinda, mavjud, zaxiralangan, berilgan yoki muddati o'tgan;
- buyum hisoblanadigan birlik (`baseUnit`) va bitta buyumdagi miqdor (`netContent`);
- jismoniy nusxa (`instance`): uning identifikatori, seriya raqami va yaroqlilik muddati, u kim uchun saqlanayotgan bemor yoki tashkilot va u saqlanadigan [Location](StructureDefinition-uz-core-location.html).

### Ikki holat

Ombor pozitsiyasida turli savollarga javob beradigan ikkita holat elementi bor:

| Element | Javob beradi | Qiymatlar |
|---|---|---|
| [`status`](#k-InventoryItem.status) | Bu yozuv foydalanilmoqdami? | active / inactive / entered-in-error / unknown |
| [`inventoryStatus`](#k-InventoryItem.inventoryStatus) | Buyum ombor hisobining qaysi bosqichida? | milliy [ombor holatlari](ValueSet-inventoryitem-inventory-status-vs.html) ro'yxati, masalan qabul qilingan, karantinda, mavjud, zaxiralangan, berilgan, muddati o'tgan yoki utilizatsiya qilingan |

Muddati o'tgan birlikda `status` `active` bo'lib qoladi (yozuv hamon amal qiladi), `inventoryStatus` esa `expired` ga o'tadi. `status` ni faqat yozuvning o'zi endi ishlatilmaganda `inactive` ga o'rnating. Mahsulotning o'z [`productStatus`](StructureDefinition-uz-core-biologically-derived-product.html) i faqat qon komponenti umuman mavjudligini bildiradi; uning ombordagi holati shu yerda qayd etiladi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan bemor uchun zaxiralangan qon birligi va ombordagi tabletkalar partiyasigacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [eritrotsitlar ombor pozitsiyasi](InventoryItem-example-inventory-item-rbc.html).

#### Yuborishingiz kerak bo'lgan eng kichik InventoryItem

`status` yagona majburiy elementdir. Har bir UZ Core resursi o'z profilini `meta.profile` da ham ko'rsatadi, bu serverga qaysi qoidalar bo'yicha validatsiya qilishni bildiradi. Ombor pozitsiyasi faqat buyum nima ekanini aytganda foydali, shuning uchun uning `category` sini va u saqlaydigan mahsulotni qo'shing. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ] }
  ],
  "productReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
}
```

`category` takrorlanadi. [Qon mahsuloti turi](ValueSet-blood-product-type-snomed-vs.html) qiymatlar to'plamidagi kod qon mahsuloti turi slaysini to'ldiradi, uning bog'lanishi `required`; uning yonida boshqa toifalar ham bo'lishi mumkin. `status` HL7 kodlaridan foydalanadi, ularning o'zbekcha va ruscha ko'rinadigan nomlari DHP qo'shimchasidan olinadi, shuning uchun `display` ni ko'rsatmasangiz ham bo'ladi.

#### Bemor uchun zaxiralangan qon birligi

Qon quyish stansiyasi bir birlik eritrotsitni sovutgichli ombor javonida saqlaydi va uni aniq bemor uchun zaxiralaydi. `instance` jismoniy birlikni tavsiflaydi: uning raqami, yaroqlilik muddati, u kim uchun saqlanayotgan bemor va saqlanish joyi. `baseUnit` buyum qon birliklarida hisoblanishini, `netContent` esa bitta birlik hajmini bildiradi:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "BB-INV-2025-004821" }
  ],
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ] }
  ],
  "name": [
    {
      "nameType": { "system": "http://hl7.org/fhir/inventoryitem-nametype", "code": "alias" },
      "language": "en",
      "name": "Red Blood Cells, Leukocytes Reduced"
    }
  ],
  "responsibleOrganization": [
    {
      "role": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-responsible-organization-role-cs",
            "code": "manufacturer"
          }
        ]
      },
      "organization": { "reference": "Organization/andijan-station" }
    }
  ],
  "inventoryStatus": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
          "code": "reserved"
        }
      ]
    }
  ],
  "baseUnit": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "258768008", "display": "Units of blood" } ]
  },
  "netContent": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "instance": {
    "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-COMP-2026-0001" } ],
    "expiry": "2026-10-15",
    "subject": { "reference": "Patient/example-salim" },
    "location": { "reference": "Location/example-cold-storage-shelf" }
  },
  "productReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
}
```

Javobgar tashkilot roli va ombor holati kod tizimlari o'zbek tiliga asoslangan, ruscha va inglizcha belgilanishlarga ega; `display` ni faqat u resurs `language` iga mos kelgandagina yuboring. `name.nameType` HL7 kodlaridan foydalanadi. `instance.identifier` dagi birlik raqami [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html#identifier-slices) dagi o'sha [qon birligi raqami](NamingSystem-uzb-blood-unit-number.html) dir. `instance` ko'pi bilan bir marta uchraydi, shuning uchun alohida hisobga olinishi kerak bo'lgan har bir jismoniy birlik yoki partiya alohida ombor pozitsiyasidir.

#### Ombor pozitsiyasi raqami {#identifier-slices}

`identifier` o'z `system` URI si bo'yicha slayslarga bo'lingan, shuning uchun tizim aniq mos kelishi shart:

| Identifikator | `system` | Kim beradi |
|---|---|---|
| [Ombor pozitsiyasi raqami](NamingSystem-uzb-inventory-item-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/inventory-item` | Zaxirani boshqaruvchi tashkilot |

Bu raqam ombor yozuvini identifikatsiya qiladi. Jismoniy birlik identifikatorlari, masalan qon birligi raqami, `instance.identifier` ga joylashtiriladi.

#### Ombordagi tabletkalar partiyasi

Shifoxona o'z markaziy omborida bitta seriyadagi 1200 ta paratsetamol tabletkasini saqlaydi. Pozitsiya [Medication](StructureDefinition-uz-core-medication.html) zaxirasini ifodalaydi, `instance.subject` uni saqlayotgan shifoxona, partiya esa seriya raqami bilan identifikatsiya qilinadi:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "TDH-WH-2026-0315" }
  ],
  "status": "active",
  "name": [
    {
      "nameType": { "system": "http://hl7.org/fhir/inventoryitem-nametype", "code": "trade-name" },
      "language": "en",
      "name": "Paracetamol 500 mg tablets"
    }
  ],
  "responsibleOrganization": [
    {
      "role": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-responsible-organization-role-cs",
            "code": "supplier"
          }
        ]
      },
      "organization": { "reference": "Organization/example-organization" }
    }
  ],
  "inventoryStatus": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
          "code": "available"
        }
      ]
    }
  ],
  "netContent": { "value": 1200, "unit": "tablets" },
  "instance": {
    "lotNumber": "LOT20241201",
    "expiry": "2027-12-01",
    "subject": { "reference": "Organization/tashkent-diseases-hospital" },
    "location": { "reference": "Location/example-central-warehouse" }
  },
  "productReference": { "reference": "Medication/example-medication" }
}
```

Dori vositasida qon mahsuloti turi yo'q, shuning uchun bu yerda `category` yo'q. `productReference` [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), NutritionProduct yoki [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) ga havola qiladi. Zaxira boshqa joyga ko'chirilganda [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) ko'chirishni qayd etadi, `instance.location` esa yangilanadi.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
