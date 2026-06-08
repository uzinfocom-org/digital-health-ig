> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Patient Raqamli sogʻliqni saqlash platformasi boʻylab bemorni aniqlovchi maʼmuriy va demografik maʼlumotlarni saqlaydi. Bu deyarli har bir klinik resurs murojaat qiladigan tayanch nuqtadir. Bemor shaxsi markazlashtirilgan tarzda boshqariladi - aksariyat ish jarayonlarida siz yangi bemor yaratishdan oldin mavjud Patient ni identifikator boʻyicha qidirasiz (quyidagi "Tezkor boshlash" boʻlimiga qarang), shunda bir kishi ikki marta roʻyxatga olinmaydi.

### Majburiy va Must Support maʼlumot elementlari

Quyidagi elementlar har doim mavjud boʻlishi (majburiy) yoki maʼlumot mavjud boʻlganda qoʻllab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi talab qilinmaydi, biroq sizning tizimingiz maʼlumotga ega boʻlganda har bir Must Support elementini toʻldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson oʻqiy oladigan qisqacha bayon; quyidagi [rasmiy koʻrinishlar](#profile) aniq kardinalliklar, turlar va terminologik bogʻlanishlarni keltiradi.

#### Har bir UZ Core Patient quyidagilarga ega boʻlishi shart

Har bir Patient kamida bitta identifikatorga ega boʻlishi kerak. PINFL (milliy shaxsiy identifikatsiya raqami) platformada bemorlarni aniqlashning asosiy usuli boʻlib, maʼlum boʻlgan har bir holatda yuborilishi lozim; boshqa identifikatorlar (pasport, tugʻilganlik haqidagi guvohnoma, sogʻliqni saqlash kartasi va hokazo) uni toʻldiradi yoki PINFL mavjud boʻlmaganda uni almashtiradi. Qoʻllab-quvvatlanadigan barcha tizim URI'lari va qaysi birini ishlatish kerakligi, jumladan aniqlanmagan bemorlar uchun vaqtinchalik identifikatorlar haqida [Identifikator tizimlari](identifiers.html) boʻlimiga qarang.

#### Har bir UZ Core Patient quyidagilarni qoʻllab-quvvatlashi shart



- ism (oʻzbekcha asosiy, tarjimalar bilan belgilangan holatda);
- jins (kerak boʻlganda milliy `gender-other` kengaytmasi bilan);
- tugʻilgan sana;
- manzil - oʻzbekcha manzil (kodlangan maʼmuriy boʻlinmalar: viloyat, tuman, mahalla) yoki xalqaro erkin matnli manzil;
- faollik bayrogʻi (ushbu bemor yozuvi faol foydalanishda ekanligi);
- millat, fuqarolik va boshqaruvchi tashkilotga biriktirilgan sana (bemorning oʻzining birlamchi sogʻliqni saqlash tashkilotiga roʻyxatga olinishi).

`maritalStatus` va kontakt (yaqin qarindosh) maʼlumotlari mavjud boʻlgan joyda milliy qiymatlar toʻplamlariga bogʻlanadi.

> Maʼlumotingizga mos keladigan identifikator *boʻlagi*ni toʻldiring - har bir boʻlakni toʻldirmaysiz. Bemor odatda PINFL va bir yoki bir nechta hujjat identifikatoriga ega boʻladi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan toʻliq roʻyxatga olish yukigacha boradi. Birortasini nusxalab oling va moslang - koʻrsatilgan har bir qiymat ushbu profilga muvofiq tekshiruvdan oʻtadi. Toʻliq maʼlumotnoma nusxalari sahifaning pastki qismida bogʻlangan ([Salim](Patient-example-salim.html), [Emma](Patient-example-emma.html), [David](Patient-example-david.html), [aniqlanmagan bemor](Patient-example-unidentified-patient.html)).

#### Yuborishingiz mumkin boʻlgan eng kichik Patient

`identifier` yagona majburiy element boʻlib, PINFL siz yuborishingiz kerak boʻlgan identifikatordir. Har bir UZ Core resursi, shuningdek, oʻzi mos kelishini daʼvo qilayotgan profilni `meta.profile` da nomlashi kerak - server qaysi qoidalarga muvofiq tekshirishni shu orqali biladi. Bu allaqachon tekshiruvdan oʻtadi:

```json
{
  "resourceType": "Patient",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient"]
  },
  "identifier": [
    {
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "NI" }] },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "30211975910033"
    }
  ]
}
```

Ushbu identifikatorni PINFL qiladigan narsa uning `system` URI'sidir - `sid/pid/uz/ni` bilan tugaydigani. Bu profil identifikatorning qaysi turi ekanligini tanib olish uchun moslashtiradigan yagona maydondir; `type` va `value` shunchaki u bilan birga keladi. Boshqa identifikatorni yozish uchun [quyidagi jadval](#identifier-slices)dagi mos `system` va `type` dan foydalaning.

#### Real roʻyxatga olish

Amalda siz PINFL bilan birga platforma sizdan qoʻllab-quvvatlashni kutadigan asosiy demografik maʼlumotlarni yuborasiz: ism, jins, tugʻilgan sana va manzil. Ismlar oʻzbek tilini asosiy matn sifatida saqlaydi. Oʻzbekcha manzil erkin matn emas, balki **kodlangan** maʼmuriy boʻlinmalardan (viloyat, tuman, mahalla) foydalanadi:

```json
{
  "resourceType": "Patient",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient"]
  },
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "NI" }] },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "30211975910033"
    }
  ],
  "active": true,
  "name": [
    {
      "use": "official",
      "text": "Usmonov Salim Saidovich",
      "family": "Usmonov",
      "given": ["Salim"]
    }
  ],
  "gender": "male",
  "birthDate": "1994-01-27",
  "address": [
    {
      "use": "home",
      "type": "physical",
      "country": "UZ",
      "state": "1727",
      "district": "1727220",
      "city": "17150085",
      "line": ["Amir Temur ko'chasi, 15-uy"]
    }
  ]
}
```

`state` / `district` / `city` kodlari milliy qiymatlar toʻplamlaridan keladi - har bir kod qayerdan olinishi haqida [Manzillar](general-guidance.html#addresses) boʻlimiga qarang. Chet elda yashaydigan bemor uchun esa `country` chet el ISO kodiga oʻrnatilgan erkin matnli manzildan foydalaning (qarang: [Emma misoli](Patient-example-emma.html)).

#### Bir nechta identifikatorni saqlash {#identifier-slices}

Kishi odatda bir nechta identifikatorga ega. `identifier` massiviga har bir hujjat uchun bitta yozuv qoʻshing, har biri oʻzining `system` va `type` ga ega; faqat haqiqatda mavjud boʻlganlarini toʻldiring. `system` URI'si boʻlakni tanlaydigan narsa, shuning uchun u aniq mos kelishi kerak:

```json
"identifier": [
  {
    "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "NI" }] },
    "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
    "value": "30211975910033"
  },
  {
    "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "PPN" }] },
    "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
    "value": "AC1234567"
  }
]
```

Eng keng tarqalgan identifikatorlar va ishlatish uchun aniq qiymatlar:

| Identifikator | `system` | `type` kodi |
|---|---|---|
| PINFL (milliy id) | `https://dhp.uz/fhir/core/sid/pid/uz/ni` | `NI` |
| Mahalliy pasport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local` | `PPN` |
| Xalqaro pasport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl` | `PPN` |
| Tugʻilganlik haqidagi guvohnoma | `https://dhp.uz/fhir/core/sid/pid/uz/bct` | `BCT` |
| Sogʻliqni saqlash kartasi | `https://dhp.uz/fhir/core/sid/pid/uz/hc` | `HC` |

Toʻliq roʻyxat, jumladan chet el fuqarolari uchun URI shablonlari haqida [Identifikator tizimlari](identifiers.html) boʻlimiga qarang.

#### Hech qanday identifikator boʻlmaganda

Aniqlanmagan bemor uchun - masalan, hushsiz holatda olib kelingan kishi - siz baribir `identifier` ni tashlab keta olmaysiz. Qiymat oʻylab topish oʻrniga, qiymatni `data-absent-reason` kengaytmasi bilan mavjud emas deb belgilang (toʻliq nusxa: [aniqlanmagan bemor](Patient-example-unidentified-patient.html)):

```json
"identifier": [
  {
    "use": "temp",
    "_value": {
      "extension": [
        { "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason", "valueCode": "unknown" }
      ]
    }
  }
]
```

Bosh ostki chiziqqa eʼtibor bering: `_value` - bu FHIR yetishmayotgan `value` oʻrniga keladigan kengaytmani joylashtiradigan joy. Bundan ham yaxshisi, qabul qiluvchi tashkilot maʼlum boʻlganda vaqtinchalik tibbiy yozuv raqamini tayinlang - qarang: [Identifikator tizimlari](identifiers.html) - va `data-absent-reason` ga faqat u maʼlum boʻlmaganda murojaat qiling.

#### Nobinar jinsni yozish

`gender` `other` boʻlganda, uni aniqlashtirish uchun milliy `gender-other` kengaytmasini biriktiring. Kengaytma `_gender` hamroh elementiga osiladi (bosh ostki chiziq FHIR primitivga kengaytma joylashtiradigan joydir) va uning `valueCoding` qiymati milliy jins qiymatlar toʻplamidan keladi (toʻliq nusxa: [David](Patient-example-david.html)):

```json
{
  "gender": "other",
  "_gender": {
    "extension": [
      {
        "url": "https://dhp.uz/fhir/core/StructureDefinition/gender-other",
        "valueCoding": {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/gender-other-cs",
          "code": "regis0007.00005",
          "display": "Jinsni erkakka o'zgartirdi"
        }
      }
    ]
  }
}
```

`gender-other` kengaytmasidan faqat `gender` `other` ga oʻrnatilganda foydalanish mumkin - aks holda profil uni rad etadi. Bogʻliq konvensiyalar uchun [Yetishmayotgan va bostirilgan maʼlumotlar](general-guidance.html#missing-data) boʻlimiga qarang.

API chaqiruvlari misollari va roʻyxatga olishdan oldin qidirish jarayoni uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) boʻlimiga qarang.
