> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Substance sanitariya-epidemiologik tekshiruv uchun namuna sifatida olingan moddaning aniq qismini ifodalaydi: oziq-ovqat mahsuloti qadog'i, quduqdan olingan suv yoki sirt yoki o'yinchoqdan olingan surtma. U namuna va partiya raqamlarini, yaroqlilik muddati tugash sanasini hamda olingan miqdorni qayd etadi. Modda nima ekanligi - uning nomlari, tasnifi va ishlab chiqaruvchisi - bu yerda takrorlanmaydi: `code` u tanlangan [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html) yozuviga ishora qiladi. Moddadan olingan [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) unga `subject` orqali havola qiladi.

### Majburiy va qo'llab-quvvatlanadigan (Must Support) ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning hammasi ham majburiy emas, lekin tizimingiz har bir Must Support elementini ma'lumot mavjud bo'lganda to'ldirishi va qabul qilishda qayta ishlashi kerak. Bu inson o'qishi uchun qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core Substance quyidagilarga ega bo'lishi shart

Har doim `true` bo'lgan `instance`: resurs moddani umuman emas, balki olingan qismni tavsiflaydi. [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html) yozuviga `reference` havolasi bo'lgan `code`. [Quyidagi jadvaldagi](#identifier-slices) identifikator yuborilsa, uning `system` va `value` qiymatlari ikkalasi ham majburiy.

#### Har bir UZ Core Substance quyidagilarni qo'llab-quvvatlashi kerak

- namuna identifikatori va partiya raqami ([quyidagi jadvalga](#identifier-slices) qarang);
- yozuvning `status` holati (active / inactive / entered-in-error);
- `category` - namuna turi - suv, havo, tuproq yoki oziq-ovqat mahsulotlari - [modda namunasi toifalari](ValueSet-substance-sample-category-vs.html) qiymatlar to'plamidan;
- `code` - ma'lumotnoma yozuvi, zarur bo'lsa uning SNOMED CT yoki milliy kodi bilan;
- partiyaning yaroqlilik muddati `expiry`;
- namuna sifatida olingan miqdor `quantity`, UCUM birliklarida.

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollar minimal namunadan to'liq namunagacha boradi. Birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar sahifa pastida keltirilgan ([pasterlangan sut](Substance-example-substance-pasteurized-milk.html), [sigir xom suti](Substance-example-substance-raw-milk.html)).

#### Yuborilishi kerak bo'lgan eng kichik Substance

`instance` va `code` majburiy. Har bir UZ Core resursi, shuningdek, o'zi muvofiq deb da'vo qiladigan profilni `meta.profile` da ko'rsatishi kerak:

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "instance": true,
  "status": "active",
  "code": {
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-raw-milk" }
  },
  "quantity": { "value": 0.5, "unit": "L", "system": "http://unitsofmeasure.org", "code": "L" }
}
```

`code` - `CodeableReference` turidagi element: uning `reference` qismi SubstanceDefinition ga ishora qiladi, shuning uchun qabul qiluvchi nomlar va ishlab chiqaruvchini o'sha yerdan oladi. `status` - `display` siz oddiy kod; uning o'zbekcha va ruscha ko'rinishlari [modda holati qo'shimchasidan](CodeSystem-substance-status-cs.html) olinadi.

#### Partiyasi bo'lgan mahsulot namunasi

Ishlab chiqarilgan mahsulot, masalan qadoqlangan sut namunasi, shuningdek namuna identifikatori, partiya raqami, yaroqlilik muddati tugash sanasi hamda `code.concept` da moddaning kodini o'z ichiga oladi, shunda namunalarni ta'rifni o'qimasdan kod bo'yicha qidirish mumkin:

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/prd/uz/substance-sample", "value": "NMN-2026-000123" },
    { "system": "https://dhp.uz/fhir/core/sid/prd/uz/substance-lot", "value": "SER-2611-15" }
  ],
  "instance": true,
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "255620007", "display": "Food" } ] }
  ],
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "3718001",
          "display": "Cow's milk"
        }
      ]
    },
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-pasteurized-milk" }
  },
  "description": "Pasterlangan ichimlik suti, 1 l karton qadoq",
  "expiry": "2026-11-25",
  "quantity": { "value": 1, "unit": "L", "system": "http://unitsofmeasure.org", "code": "L" }
}
```

Kod - [modda nomlari](ValueSet-substance-names-vs.html) qiymatlar to'plamidagi SNOMED CT konsepti yoki SNOMED CT konsepti bo'lmasa, milliy kod. `code.concept` yuborilsa, u SubstanceDefinition dagi kod bilan bir xil bo'lishi kerak. Qadoq va boshqa izohlar `description` da erkin matn sifatida yuboriladi.

#### E'lon qilingan tarkib

Hamroh hujjatda ingrediyent miqdori ko'rsatilgan bo'lsa, masalan sutning yog'liligi, uni `ingredient` da nisbat sifatida yuboring. Laboratoriya o'lchagan qiymat alohida [UZ Core Observation](StructureDefinition-uz-core-observation.html) hisoblanadi:

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "instance": true,
  "status": "active",
  "code": {
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-pasteurized-milk" }
  },
  "ingredient": [
    {
      "quantity": {
        "numerator": { "value": 3.2, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
        "denominator": { "value": 1, "unit": "1", "system": "http://unitsofmeasure.org", "code": "1" }
      },
      "substanceCodeableConcept": { "text": "Sut yog'i" }
    }
  ]
}
```

#### Identifikator kesimlari {#identifier-slices}

Namuna quyidagi identifikatorlarga ega bo'lishi mumkin. Har biri `system` URI si bo'yicha tanlanadi, shuning uchun URI aniq mos kelishi kerak:

| Identifikator | `system` | Kim tomonidan beriladi |
|---|---|---|
| [Modda namunasi raqami](NamingSystem-uzb-substance-sample-number.html) | `https://dhp.uz/fhir/core/sid/prd/uz/substance-sample` | LIS SES, namuna dalolatnomaga qo'shilganda |
| [Modda partiyasi raqami](NamingSystem-uzb-substance-lot-number.html) | `https://dhp.uz/fhir/core/sid/prd/uz/substance-lot` | Ishlab chiqaruvchi, mahsulotda ko'rsatilgan |

API chaqiruvlari misollari uchun ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limiga qarang.
