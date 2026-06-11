> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Specimen Raqamli sog'liqni saqlash platformasida bemordan olingan laboratoriya yoki boshqa klinik namunani ifodalaydi. Laboratoriya jarayonida u buyurtma va natija o'rtasida turadi: u namuna olishni boshlagan ServiceRequest'ga havola qiladi, hosil bo'lgan [Observation](StructureDefinition-uz-core-observation.html) esa o'lchov o'tkazilgan namunaga qaytib havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning hammasi ham talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumot mavjud bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu insonga o'qish uchun mo'ljallangan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Specimen Mavjud bo'lishi kerak

Ushbu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi va bazaviy Specimen resursida majburiy elementlar yo'q - cheklangan har bir element ixtiyoriy, ammo Must Support.

#### Har bir UZ Core Specimen Qo'llab-quvvatlashi kerak



- manba tizimi (masalan, LIS) tomonidan ishlatiladigan identifier va laboratoriya tomonidan qabul qilishda berilgan accessionIdentifier;
- DHP specimen-status qiymatlar to'plamiga bog'langan status (masalan, available, unavailable);
- type (masalan, venoz qon, siydik, surtma; preferred bog'lanish);
- subject - namuna qayerdan olingan: [Patient](StructureDefinition-uz-core-patient.html), [Location](StructureDefinition-uz-core-location.html) yoki Substance;
- receivedTime - laboratoriya namunani qachon qabul qilgani;
- bu namuna boshqasidan olingan/alikvota qilingan bo'lsa, ota-ona namunasiga (parent) havola;
- request - namuna olishni buyurgan `ServiceRequest`;
- combined bayroq (idishda birlashtirilgan (pooled) namuna saqlanishi; required bog'lanish) va role (preferred bog'lanish);
- namuna olish tafsilotlari: oluvchi (collector) ([Practitioner](StructureDefinition-uz-core-practitioner.html)), collected[x] sana/vaqti, duration, quantity, method, bodySite va fastingStatus[x] (required bog'lanish).

### JSON'ni bosqichma-bosqich qurish

Quyidagi misollar serverda qabul qilinadigan eng kichik instansiyadan to'liq laboratoriya namunasigacha boradi. Birini ko'chiring va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq mos yozuvlar instansiyasiga sahifaning pastki qismida havola berilgan ([CBC uchun venoz qon](Specimen-example-specimen-blood-cbc.html)).

#### Yuborishingiz kerak bo'lgan eng kichik Specimen

Ushbu profil hech qanday majburiy kardinallik qo'shmaydi va bazaviy Specimen'da majburiy elementlar yo'q - shu sababli eng kichik yuk (payload) faqat `meta.profile`dan iborat. Bu o'zicha kamdan-kam hollarda foydali. Amalda laboratoriya birinchi navbatda e'tibor beradigan uchta narsa: namuna *nima* ekanligi (`type`), uning hayotiy sikl `status`i va u *kimga* tegishli ekanligi (`subject`). `subject` - bu [Patient](StructureDefinition-uz-core-patient.html)ga oddiy `Reference`:

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`status` DHP specimen-status qiymatlar to'plamiga (required), `type` esa specimen-types qiymatlar to'plamiga (preferred) bog'langan. Yuqoridagi `type` qiymati `BLD` HL7 v2 jadvali 0487dan olingan. `subject` shuningdek [Location](StructureDefinition-uz-core-location.html)ga (masalan, atrof-muhit namunasi) yoki Substance'ga havola qilishi mumkin.

#### Qabul qilingan va buyurtma qilingan namuna

Laboratoriya namunani qabul qilgach, uning qachon kelganini (`receivedTime`), namuna olishni boshlagan buyurtmani (`request` - bu `ServiceRequest`ga oddiy `Reference`) va namunaning ish jarayonidagi `role`ini qayd eting. Bu namuna ro'yxatga olinganda yaratiladigan odatiy yukdir:

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "receivedTime": "2025-11-04T08:30:00Z",
  "request": [
    { "reference": "ServiceRequest/example-cbc-order" }
  ],
  "role": [
    { "coding": [{ "system": "http://hl7.org/fhir/specimen-role", "code": "p", "display": "Patient" }] }
  ]
}
```

`request` - bu namunani buyurtma qilingan tahlillarga bog'laydigan narsa; hosil bo'lgan [Observation](StructureDefinition-uz-core-observation.html) keyin o'zining `specimen` elementi orqali ushbu namunaga qaytib havola qiladi. `role` - preferred bog'lanish; `p` (Patient) oddiy bemor namunasini belgilaydi.

#### Namuna olish tafsilotlarini qo'shish

`collection` bloki namuna qanday va qachon olinganini saqlaydi: `collector` ([Practitioner](StructureDefinition-uz-core-practitioner.html)ga oddiy `Reference`), `collectedDateTime` (`collected[x]` tanlov elementi), UCUM-kodlangan qiymatlar sifatida `duration` va `quantity`, hamda erkin matnli `note`. Miqdorlarda har doim mashinada o'qiladigan `system` va `code`ni yuboring, nafaqat insonga mo'ljallangan `unit`ni:

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "receivedTime": "2025-11-04T08:30:00Z",
  "request": [
    { "reference": "ServiceRequest/example-cbc-order" }
  ],
  "role": [
    { "coding": [{ "system": "http://hl7.org/fhir/specimen-role", "code": "p", "display": "Patient" }] }
  ],
  "collection": {
    "collector": { "reference": "Practitioner/example-practitioner" },
    "collectedDateTime": "2025-11-04T08:10:00Z",
    "duration": { "value": 5, "code": "min", "system": "http://unitsofmeasure.org" },
    "quantity": { "value": 3, "unit": "mL", "code": "mL", "system": "http://unitsofmeasure.org" }
  },
  "note": [
    { "text": "Venous blood collected into EDTA tube. No visible hemolysis." }
  ]
}
```

E'tibor bering, `collectedDateTime` - bu `collected[x]` tanlovining bir shakli; boshlanish va tugash vaqtini qamrab oluvchi vaqtli namuna olish uchun uning o'rniga `collectedPeriod`dan foydalaning. `duration` va `quantity` bo'yicha UCUM qoidalari uchun [Birliklar va miqdorlar](general-guidance.html#units-and-quantities)ga qarang.

#### Och qoringa holatini qayd etish

Och qoringa bo'lish natijaning talqiniga ta'sir qilganda, buni `collection` ichida qayd eting. `fastingStatus[x]` elementi - required bog'lanish; kodlangan qiymat sifatida u `fastingStatusCodeableConcept`. Bu yerda bemor och qoringa bo'lmaganini tasdiqlagan:

```json
{
  "collection": {
    "fastingStatusCodeableConcept": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0916",
          "code": "NF",
          "display": "The patient indicated they did not fast prior to the procedure."
        }
      ]
    }
  }
}
```

Ushbu `collection` bloki yuqoridagi bosqichdagi bilan bir xil resursga joylashadi. Bemorning haqiqiy holatiga mos keladigan kodni ishlating (required qiymatlar to'plami har birini sanab o'tadi); och qoringa bo'lish muhim bo'lgan tahlillar uchun `fastingStatus`ni tushirib qoldirmang.

API chaqiruvlari va namuna yuk misollari uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start)ga qarang.
