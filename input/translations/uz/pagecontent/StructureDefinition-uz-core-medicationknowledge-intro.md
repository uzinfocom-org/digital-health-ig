> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core MedicationKnowledge DHP dagi dori vositasi haqidagi ma'lumotnoma ma'lumotlarini saqlaydi: yozuv foydalanishdami va mahsulot uchun qanday narxlar tasdiqlangan - cheklangan narx, ulgurji va chakana narxlar hamda [Davlat tibbiy sug'urta jamg'armasi (DTSJ)](https://ig.shif.uz/build/core/uz/index.html) narxi, har biri amal qiladigan davri bilan. Resurs mahsulotning o'zini tavsiflamaydi. Mahsulot - bu [UZ Core Medication](StructureDefinition-uz-core-medication.html) bo'lib, yozuv unga `associatedMedication` orqali havola qiladi, yozuvni e'lon qiluvchi yoki yurituvchi tashkilot esa [UZ Core Organization](StructureDefinition-uz-core-organization.html) dir. Yozuv muayyan bemorga tegishli emas: barcha tizimlar bitta yozuvdan foydalanadi, shuning uchun yangisini yaratishdan oldin [uni identifikator bo'yicha qidiring](#finding).

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core MedicationKnowledge quyidagilarga ega bo'lishi shart

Bazaviy MedicationKnowledge resursida yuqori darajadagi majburiy elementlar yo'q. Ushbu profil bittasini qo'shadi: aynan bitta `associatedMedication` - yozuv tegishli bo'lgan [UZ Core Medication](StructureDefinition-uz-core-medication.html) ga havola. Yuborilgan har bir `cost` da bitta `effectiveDate` davri, qaysi narx ekanini bildiruvchi `type` va `costMoney` dagi narxning o'zi bo'lishi shart. DHP identifikatori yuborilganda uning `system` i ham, `value` si ham majburiy.

#### Har bir UZ Core MedicationKnowledge quyidagilarni qo'llab-quvvatlashi shart

- DHP dagi yozuv identifikatori ([quyidagi jadvalga](#identifier-slices) qarang);
- `status` - yozuv foydalanishdami ([active / inactive / entered-in-error](ValueSet-medicationknowledge-status-vs.html));
- `associatedMedication` - yozuv tegishli bo'lgan [UZ Core Medication](StructureDefinition-uz-core-medication.html);
- `author` - yozuvni e'lon qiluvchi yoki yurituvchi [UZ Core Organization](StructureDefinition-uz-core-organization.html);
- har bir `cost` - qaysi narx ekani (`type`, [narx turlari qiymatlar to'plamidan](ValueSet-medicationknowledge-cost-type-vs.html)), amal qilish davri (`effectiveDate`) va summasi.

### Mavjud MedicationKnowledge ni topish {#finding}

Yozuvni yaratishdan oldin uni qidiring:

```
# by DHP identifier - the reliable match
GET [base]/MedicationKnowledge?identifier=https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge|MK-2026-000123

# by product - the entry for a Medication you already have, or for its registration number
GET [base]/MedicationKnowledge?associated-medication=Medication/example-medication
GET [base]/MedicationKnowledge?associated-medication.identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123

# active entries, or entries with a price from a given source
GET [base]/MedicationKnowledge?status=active
GET [base]/MedicationKnowledge?source-cost=DTSJ
```

`associated-medication` - [UZ Core qidiruv parametri](SearchParameter-uz-core-medicationknowledge-associated-medication.html): FHIR R5 da `associatedMedication` uchun parametr yo'q. Medication ni avval o'qimasdan preparatning ro'yxatdan o'tish raqami yoki GTIN bo'yicha qidirish uchun uni `identifier` bilan zanjir qilib ishlating.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar bitta narxli yozuvdan narxi o'zgaradigan yozuvgacha boradi. Birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha tekshiruvdan o'tadi. To'liq namunaviy nusxa sahifaning pastki qismida havola qilingan ([cheklangan narx](MedicationKnowledge-example-medication-knowledge-price-ceiling.html)).

#### Yuborishingiz kerak bo'lgan eng kichik MedicationKnowledge

`associatedMedication` yagona majburiy elementdir. Har bir UZ Core resursi, shuningdek, `meta.profile` da o'zi muvofiq deb da'vo qiladigan profilni ko'rsatishi shart - server qaysi qoidalar bo'yicha tekshirishni shu orqali biladi. Qabul qiluvchilar yozuv foydalanishda ekanini bilishi uchun `status` ni, har bir tasdiqlangan narx uchun esa `cost` ni ham yuboring:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    }
  ]
}
```

`associatedMedication` oddiy `Reference` bo'lib, ushbu profilda aynan bitta mahsulotni saqlaydi. `effectiveDate` - bu `Period`: `end` siz `start` narx shu sanadan boshlab keyingi xabarga qadar amal qilishini bildiradi. Narx turlari kod tizimida ko'rsatiladigan nomlar o'zbekcha, inglizcha va ruscha belgilashlar bilan, shuning uchun siz yuboradigan `display` resursning `language` iga mos kelishi shart. Narx - ISO 4217 valyuta kodi bilan `Money` qiymati, o'zbek so'mi uchun `UZS`.

#### Bir nechta narxli yozuv

Amalda yozuv mahsulotning barcha tasdiqlangan narxlarini, har birini alohida `cost` da, DHP identifikatori va yozuvni e'lon qiluvchi tashkilot bilan birga saqlaydi. `source` narxni belgilagan organni nomlaydi:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge",
      "value": "MK-2026-000123"
    }
  ],
  "status": "active",
  "author": { "reference": "Organization/[id]" },
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00003",
            "display": "Chakana narx"
          }
        ]
      },
      "costMoney": { "value": 4300, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00004",
            "display": "DTSJ narx"
          }
        ]
      },
      "source": "DTSJ",
      "costMoney": { "value": 4000, "currency": "UZS" }
    }
  ]
}
```

`cost.type` kengaytiriladigan (`extensible`) bog'lanishga ega: mos keladigan kod bo'lsa, [narx turlari qiymatlar to'plamidagi](ValueSet-medicationknowledge-cost-type-vs.html) koddan foydalaning, boshqa kod tizimidan esa faqat ularning hech biri qamrab olmaydigan narx uchun foydalaning. `source` erkin matn bo'lib, `source-cost` qidiruvi uni aniq moslik bo'yicha topadi, shuning uchun har bir organ nomini har doim bir xil yozing. `status` - `display` siz oddiy kod; uning o'zbekcha va ruscha ko'rsatiladigan nomlari [MedicationKnowledge holatlari qo'shimchasidan](CodeSystem-medicationknowledge-status-cs.html) olinadi.

#### Narx o'zgarganda

`effectiveDate` narxlar tarixini bitta yozuvda saqlaydi. Yangi narx tasdiqlanganda eski davrni `end` bilan yoping, xuddi shu `type` dagi yangi `cost` ni yangi davr bilan qo'shing va yozuvni yangilang:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01", "end": "2026-12-31" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2027-01-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4700, "currency": "UZS" }
    }
  ]
}
```

Berilgan sanada amalda bo'lgan narxni topish uchun davri shu sanani o'z ichiga olgan kerakli `type` dagi `cost` ni oling. Mahsulot muomaladan chiqarilganda yozuvni o'chirmang, `status` ni `inactive` ga o'rnating.

#### Identifikator slaysi {#identifier-slices}

Yozuv quyidagi DHP identifikatoriga ega bo'lishi mumkin. U `system` URI si bo'yicha tanlanadi, shuning uchun URI aynan mos kelishi shart:

| Identifikator | `system` | Kim tomonidan beriladi |
|---|---|---|
| [MedicationKnowledge identifikatori](NamingSystem-uzb-medication-knowledge-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge` | DHP |

Misol API chaqiruvlari uchun ushbu sahifaning pastki qismidagi [Tez boshlash](#quick-start) ga qarang.
