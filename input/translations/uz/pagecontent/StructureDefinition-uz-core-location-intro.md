> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Location [Organization](StructureDefinition-uz-core-organization.html) tomonidan boshqariladigan jismoniy joyni - bino, bo'lim, filial, palata, xona yoki to'shakni - ifodalaydi. Unga [Encounter](StructureDefinition-uz-core-encounter.html) tibbiy yordam qayerda ko'rsatilganini bildirish uchun va [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) xizmat qayerda yetkazib berilishini bildirish uchun murojaat qiladi. Joylar bir-birining ichiga joylashishi mumkin, masalan, bino ichidagi maydon ichidagi palata.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi talab etilmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Location quyidagilarga ega bo'lishi shart (Must Have)

Ushbu profil qo'shadigan yagona majburiy element bu o'zbek tilidagi nom - joyning vakolatli nomi, rus va qoraqalpoq tillari tarjima kengaytmalari sifatida beriladi.

#### Har bir UZ Core Location quyidagilarni qo'llab-quvvatlashi shart (Must Support)



- identifikator - Soliq soliq identifikatori slayci va birlik slayci (filial, palata yoki to'shak, location-kinds qiymatlar to'plamidan turlanadi). Qo'llab-quvvatlanadigan system URI lar uchun [Identifikator tizimlari](identifiers.html) ga qarang;
- holat (`active` / `suspended` / `inactive`, talab etiladigan qiymatlar to'plamidan);
- joy turi (milliy location-types qiymatlar to'plamidan kodlangan);
- aloqa ma'lumotlari va manzil (o'zbek kodlangan ma'muriy bo'linmalar);
- joylashuv (geo-koordinatalar);
- managingOrganization ishorasi (joyni kim boshqaradi);
- partOf ishorasi tarkibiy joyga, hoursOfOperation va endpoint ishorasi.

> `operationalStatus` (to'shak holati) kelajakda foydalanish uchun zaxiralangan.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik namunadan to'liq tibbiy muassasagacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq tasdiqlanadi. To'liq ma'lumotnoma namunalari sahifaning pastida bog'langan ([onkologiya markazi](Location-example-location-1.html), [bo'lim filiali](Location-example-location-2.html), [psixiatriya shifoxonasi](Location-example-location.html)).

#### Siz yuborishingiz kerak bo'lgan eng kichik Location

`name` ushbu profil majburiy qiladigan yagona element bo'lib, u joyning vakolatli o'zbekcha nomini olib yuradi. Har bir UZ Core resurs shuningdek u muvofiqligini da'vo qiladigan profilni `meta.profile` da nomlashi kerak - server qaysi qoidalarga muvofiq tasdiqlashni shu orqali biladi. `status` (`active` / `suspended` / `inactive`) ham yuborishga arziydi. Shunchaki shu narsa allaqachon tasdiqdan o'tadi:

```json
{
  "resourceType": "Location",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "name": "Toshkent shahar 1-sonli shifoxona"
}
```

`status` talab etiladigan bog'lanishdan foydalanadi (`active` / `suspended` / `inactive`); qiymat shu qiymatlar to'plamidan kelishi kerak. Yalang'och nom va holat siz keyin [Encounter](StructureDefinition-uz-core-encounter.html) yoki [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) dan murojaat qila oladigan joyni ro'yxatga olish uchun yetarli.

#### Ko'p tilli nom, tur va manzilni qo'shish

O'zbek tili vakolatli `name`; rus va qoraqalpoq tillari asosiy `_name` elementidagi `translation` kengaytmalari sifatida hamroh bo'ladi. Joyning `type` ini (bu yerda onkologiya markazi, kodlangan), **kodlangan** o'zbek ma'muriy bo'linmalaridan foydalanadigan `address` ni va uni boshqaradigan `managingOrganization` ni qo'shing:

```json
{
  "resourceType": "Location",
  "language": "uz",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "mode": "instance",
  "name": "Respublika onkologiya markazi",
  "_name": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Республиканский онкологический центр" }
        ]
      },
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "kaa" },
          { "url": "content", "valueString": "Respublika onkologiya orayı" }
        ]
      }
    ]
  },
  "type": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode", "code": "ONCL" }] }
  ],
  "address": {
    "type": "postal",
    "line": ["Farobi, 383"],
    "city": "22070022",
    "district": "1735243",
    "country": "UZ"
  },
  "managingOrganization": { "reference": "Organization/example-organization" }
}
```

`_name` dagi boshlang'ich pastki chiziqqa e'tibor bering: FHIR `name` satri bilan birga sayohat qiladigan tarjima kengaytmalarini shu yerga biriktiradi. `type` milliy location-types qiymatlar to'plamidan kodlangan, `address` esa yagona obyekt (ro'yxat emas) - uning `city` va `district` qiymatlari erkin matn emas, milliy ma'muriy kodlardir ([Manzillar](general-guidance.html#addresses) ga qarang). `managingOrganization` oddiy `Reference` (`{ "reference": "Organization/id" }`).

#### Identifikatorlarni qo'shish - soliq identifikatori va birlik

Muassasa Soliq soliq identifikatorini olib yuradi; quyi birlik (filial, palata yoki to'shak) esa o'rniga birlik identifikatorini olib yuradi. `identifier` elementi `system` bo'yicha slayslangan, shuning uchun har bir slaycni tanlaydigan narsa `system` URI bo'lib, u aniq mos kelishi kerak. Soliq identifikatori slayci:

```json
"identifier": [
  {
    "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "TAX", "display": "Tax ID number" }] },
    "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
    "value": "200935935"
  }
]
```

Muassasa ichidagi bo'lim uchun birlik slaycidan foydalaning - uning `type` i location-kinds qiymatlar to'plamidan kodlangan, `use` esa `official` ga belgilangan:

```json
"identifier": [
  {
    "use": "official",
    "system": "https://dhp.uz/fhir/core/NamingSystem/location-unit",
    "type": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/location-kinds-cs",
          "code": "Branch",
          "display": "Bo'limi"
        }
      ]
    },
    "value": "1"
  }
]
```

Bu `identifier` massivlari yuqoridagi misollar bilan bir xil resursga joylashadi. Qo'llab-quvvatlanadigan system URI lar uchun [Identifikator tizimlari](identifiers.html) ga qarang.

#### Manzil erkin matn bo'lganda

Joylashuvi kodlangan ma'muriy bo'linmalar sifatida saqlanmaydigan joy uchun kodlangan `city` / `district` maydonlari o'rniga erkin matnli `address.text` ni yuboring:

```json
{
  "resourceType": "Location",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "name": "Toshkent shahar 1-sonli shifoxona",
  "address": { "text": "Toshkent shahar, Chilonzor tumani, Katta Qo'yliq 45" }
}
```

Mavjud bo'lganda kodlangan shaklni afzal ko'ring; `address.text` ga faqat ma'muriy kodlar mavjud bo'lmaganda murojaat qiling. Bir joyni boshqasi ichiga joylashtirish uchun (bino ichidagi palata) tarkibiy joyga `partOf` orqali murojaat qiling.

Misol API chaqiruvlari va namuna yuk uchun ushbu sahifaning pastidagi [Tezkor boshlash](#quick-start) ga qarang.
