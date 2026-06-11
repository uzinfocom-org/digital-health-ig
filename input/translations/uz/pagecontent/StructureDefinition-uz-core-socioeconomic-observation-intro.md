> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Socioeconomic Observation bemorning imtiyozli/imtiyoz toifasini va ijtimoiy-iqtisodiy holatini qayd etadi - bu nogironlik yoki ijtimoiy-imtiyoz guruhi kabi kompensatsiya olish huquqiga ta'sir qiluvchi faktlar, shuningdek ta'lim, kasb va ijtimoiy maqom. U [Observation](StructureDefinition-uz-core-observation.html) sifatida modellashtirilgan, shu sababli u klinik kuzatuvlar bilan yonma-yon joylashadi, lekin alohida toifaga ajratiladi. Ushbu yozuvlarni o'qish va qidirish uchun Observation endpointidan foydalaning.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Socioeconomic Observation quyidagilarga ega bo'lishi shart

Har bir Socioeconomic Observation subject - yozuv tegishli bo'lgan [Patient](StructureDefinition-uz-core-patient.html) (1..1), majburiy socioeconomicType coding slice orqali ijtimoiy-iqtisodiy kuzatuv turini olib yuruvchi code (1..1) - *Eligible for benefit*, *Educational achievement*, *Occupation* yoki *Social status* dan biri (SNOMED CT, DHP socioeconomic-observation-codes qiymatlar to'plamiga bog'langan) - effectiveDateTime (ma'lumot qayd etilgan yoki amal qiladigan vaqt, 1..1) va asosiy resursdan meros qilib olingan status ni olib yurishi kerak.

#### Har bir UZ Core Socioeconomic Observation quyidagilarni Must Support qiladi



- yuqorida sanab o'tilgan subject, code (uning `socioeconomicType` slice'i bilan) va effectiveDateTime.

> `value[x]` - bu CodeableConcept bo'lib, uning qiymatlar to'plami `code` ga bog'liq: imtiyozlar BenefitsVS, ta'lim EducationVS, kasb PositionAndProfessionVS va ijtimoiy maqom SocialStatusVS dan foydalanadi. Tanlangan tur kodiga mos keladigan qiymatlar to'plamini tanlang.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik instansdan to to'liq to'ldirilgan ijtimoiy-iqtisodiy yozuvgacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq malumotnoma instanslari sahifaning pastki qismida bog'langan (masalan, [ta'lim](Observation-example-salim-education.html), [ijtimoiy maqom](Observation-example-salim-social-status.html), [kasb](Observation-example-salim-profession.html), [imtiyozlar](Observation-example-salim-benefits.html)).

#### Yuborishingiz kerak bo'lgan eng kichik ijtimoiy-iqtisodiy kuzatuv

To'rt element butun yozuvni olib yuradi: `status` va `subject` (u tegishli bo'lgan [Patient](StructureDefinition-uz-core-patient.html)), bu qanday turdagi ijtimoiy-iqtisodiy fakt ekanligini aytuvchi `code` (majburiy `socioeconomicType` coding slice orqali, har doim `http://snomed.info/sct` dan SNOMED CT kodi) va u qayd etilgan vaqtni ko'rsatuvchi `effectiveDateTime`. Natijaning o'zi `valueCodeableConcept` ga joylashadi. Ushbu ta'lim darajasi yozuvi allaqachon validatsiyadan o'tadi:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105421008",
        "display": "Educational achievement"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs",
        "code": "regis0005.00004",
        "display": "O'rtacha"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

`code` - faktning turini tanlaydigan narsa; bu yerda `105421008` (Educational achievement) `valueCodeableConcept` EducationVS dan olinganligini bildiradi. `subject` - oddiy `Reference`, shu sababli maqsadli ob'ekt to'g'ridan-to'g'ri `reference` ostida joylashadi (`"subject": { "reference": "Patient/example-salim" }`).

#### Ijtimoiy maqom yozuvi

Tur kodi va natija qiymatlar to'plamini birgalikda almashtiring - ular har doim juftlik sifatida harakatlanadi. Bemorning ijtimoiy maqomi uchun `code` `82996008` (Social status) bo'lib, `valueCodeableConcept` SocialStatusVS dan olinadi:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "82996008", "display": "Social status" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs",
        "code": "regis0010.00003",
        "display": "Ishlaydi"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

#### Tur kodi va uning qiymatlar to'plamini tanlash

Imtiyozlar, ta'lim, kasb yoki ijtimoiy maqom yozuvi o'rtasida o'zgaradigan yagona narsa - bu SNOMED `code` va unga mos keladigan `valueCodeableConcept` tizimi. Ikkalasini muvofiqlikda saqlang - quyida ko'rsatilgan natija kod tizimi xuddi shu qatordagi tur kodiga mos kelishi kerak. Har bir tizim siz foydalanishingiz mumkin bo'lgan kodlar qiymatlar to'plamiga bog'lanadi:

| Ijtimoiy-iqtisodiy fakt | `code` (SNOMED CT) | `valueCodeableConcept` tizimi |
|---|---|---|
| Eligible for benefit | `1303306008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs`](ValueSet-benefits-vs.html) |
| Educational achievement | `105421008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs`](ValueSet-education-vs.html) |
| Occupation | `14679004` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs`](ValueSet-position-and-profession-vs.html) |
| Social status | `82996008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs`](ValueSet-social-status-vs.html) |

Kasb yozuvi uchun `code` `14679004` (Occupation) bo'lib, natija kasb kod tizimidan keladi:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "14679004", "display": "Occupation" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs",
        "code": "1321.20",
        "display": "Bosh mexanik"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

Bog'langan qiymatlar to'plamlari qanday e'lon qilinishi haqida [Terminologiya](general-guidance.html#terminology) bo'limiga qarang.

API chaqiruvlari misollari va namunaviy yuk (payload) uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
