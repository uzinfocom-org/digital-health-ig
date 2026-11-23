> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core SubstanceDefinition sanitariya-epidemiologik tekshiruv uchun namunalar olinadigan moddalar va obyektlar ma'lumotnomasining yozuvini ifodalaydi - oziq-ovqat mahsuloti, suv manbai, xona yoki sirt. U moddaning kodini, o'zbekcha va ruscha nomlarini, umumiy toifasini va ishlab chiqaruvchisini - [UZ Core Organization](StructureDefinition-uz-core-organization.html) ni o'z ichiga oladi. Har bir namuna - bu yozuvga `code` orqali havola qiladigan [UZ Core Substance](StructureDefinition-uz-core-substance.html), shuning uchun yozuv bitta namunaga tegishli emas: barcha tizimlar bitta yozuvdan foydalanadi, shuning uchun yangisini yaratishdan oldin [uni identifikator yoki kod bo'yicha qidiring](#finding).

### Majburiy va qo'llab-quvvatlanadigan (Must Support) ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning hammasi ham majburiy emas, lekin tizimingiz har bir Must Support elementini ma'lumot mavjud bo'lganda to'ldirishi va qabul qilishda qayta ishlashi kerak. Bu inson o'qishi uchun qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core SubstanceDefinition quyidagilarga ega bo'lishi shart

Bazaviy SubstanceDefinition resursida yuqori darajada majburiy elementlar yo'q va ushbu profil ularni qo'shmaydi. Yuboriladigan har bir `name` nomning o'zini - `name` ni o'z ichiga olishi kerak. Ma'lumotnomadagi raqam yuborilsa, uning `system` va `value` qiymatlari ikkalasi ham majburiy; modda kodi yuborilsa, uning `code` qiymati majburiy.

#### Har bir UZ Core SubstanceDefinition quyidagilarni qo'llab-quvvatlashi kerak

- yozuvning ma'lumotnomadagi raqami ([quyidagi jadvalga](#identifier-slices) qarang);
- yozuvning `status` holati (active / retired);
- `classification` - namuna turi - suv, havo, tuproq yoki oziq-ovqat mahsulotlari -;
- moddaning `code` kodi: SNOMED CT yoki SNOMED CT konsepti bo'lmasa, milliy kod;
- har bir `name` - nomning o'zi, u afzal nommi va uning tili, tarjimalar bilan, masalan ruscha nom;
- modda yoki mahsulotning ishlab chiqaruvchisi `manufacturer`.

### Mavjud SubstanceDefinition ni topish {#finding}

Yangi yozuv yaratishdan oldin uni qidiring:

```
# by reference list number - the reliable match
GET [base]/SubstanceDefinition?identifier=https://dhp.uz/fhir/core/sid/doc/uz/substance-definition|1368

# by SNOMED CT or national code
GET [base]/SubstanceDefinition?code=http://snomed.info/sct|3718001

# by name or category
GET [base]/SubstanceDefinition?name=Pasterlangan
GET [base]/SubstanceDefinition?classification=http://snomed.info/sct|255620007
```

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollar minimal yozuvdan to'liq yozuvgacha boradi. Birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar sahifa pastida keltirilgan ([pasterlangan sut](SubstanceDefinition-example-substance-definition-pasteurized-milk.html), [sigir xom suti](SubstanceDefinition-example-substance-definition-raw-milk.html)).

#### Yuborilishi kerak bo'lgan eng kichik SubstanceDefinition

Har bir UZ Core resursi o'zi muvofiq deb da'vo qiladigan profilni `meta.profile` da ko'rsatishi kerak. Qabul qiluvchilar yozuvni ko'rsata va qidira olishi uchun modda kodi va o'zbekcha nomni yuboring:

```json
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition"] },
  "language": "uz",
  "code": [
    {
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "3718001",
            "display": "Cow's milk"
          }
        ]
      }
    }
  ],
  "name": [ { "name": "Sigir xom suti", "preferred": true } ]
}
```

Kod [modda nomlari](ValueSet-substance-names-vs.html) qiymatlar to'plamidan olinadi: o'zbekcha va ruscha nomlari [SNOMED CT qo'shimchasida](CodeSystem-substance-names-snomed-cs.html) berilgan SNOMED CT konsepti yoki SNOMED CT konsepti bo'lmasa, [modda nomlari](CodeSystem-substance-names-cs.html) kod tizimidagi milliy kod. Ko'plab LIS SES nomlari bitta umumiyroq SNOMED CT konseptiga ega: masalan, sigir xom suti va pasterlangan sut - ikkalasi ham `3718001` Cow's milk. LIS SES nomi aniq holda `name` da beriladi.

#### To'liq yozuv

Amalda yozuv shuningdek ma'lumotnomadagi raqamni, holati va toifasini, o'zbekcha nomning tarjimasi sifatida ruscha nomni va ishlab chiqaruvchini o'z ichiga oladi:

```json
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition"] },
  "language": "uz",
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/substance-definition", "value": "1368" } ],
  "version": "1.0.0",
  "status": { "coding": [ { "system": "http://hl7.org/fhir/publication-status", "code": "active" } ] },
  "classification": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "255620007", "display": "Food" } ] }
  ],
  "description": "Pasterlangan ichimlik suti",
  "manufacturer": [ { "reference": "Organization/example-organization-dairy-manufacturer" } ],
  "note": [ { "text": "Namuna sovutilgan holda tashiladi" } ],
  "code": [
    {
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "3718001",
            "display": "Cow's milk"
          }
        ]
      }
    }
  ],
  "name": [
    {
      "name": "Pasterlangan ichimlik suti",
      "preferred": true,
      "language": [ { "coding": [ { "system": "urn:ietf:bcp:47", "code": "uz" } ] } ],
      "translation": [
        {
          "name": "Молоко питьевое пастеризованное",
          "language": [ { "coding": [ { "system": "urn:ietf:bcp:47", "code": "ru" } ] } ]
        }
      ]
    }
  ]
}
```

`status` oddiy kod emas, balki `CodeableConcept`; uning o'zbekcha va ruscha ko'rinishlari [nashr holati qo'shimchasidan](CodeSystem-publication-status-cs.html) olinadi. Nomning `language` i uchun BCP 47 kodlari `uz`, `ru` va `en` ishlatiladi. Yozuv ma'lumotnomadan olib tashlanganda uni o'chirmang, `status` ni `retired` ga o'rnating: mavjud namunalar hamon unga havola qiladi.

#### Identifikator kesimi {#identifier-slices}

Yozuv quyidagi identifikatorga ega bo'lishi mumkin. U `system` URI si bo'yicha tanlanadi, shuning uchun URI aniq mos kelishi kerak:

| Identifikator | `system` | Kim tomonidan beriladi |
|---|---|---|
| [Modda ta'rifi identifikatori](NamingSystem-uzb-substance-definition-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/substance-definition` | LIS SES namuna nomlari ma'lumotnomasi |

API chaqiruvlari misollari uchun ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limiga qarang.
