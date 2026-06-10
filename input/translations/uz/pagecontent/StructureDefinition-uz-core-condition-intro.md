> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Condition Raqamli sog'liqni saqlash platformasida bemor uchun tashxis, muammo yoki boshqa klinik holatni qayd etadi. Holatlar ICD-10 yoki SNOMED CT bilan kodlanadi (ICD-11 rejalashtirilgan). Holat o'zining [Patient](StructureDefinition-uz-core-patient.html) resursiga va u qayd etilgan tashrifga bog'lanadi; o'z navbatida [Encounter](StructureDefinition-uz-core-encounter.html) Holatga o'zining tashxislaridan biri sifatida ishora qiladi va aynan o'sha tashxis kodi hisobotlarga o'tadi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumot mavjud bo'lganda to'ldirishi va uni qabul qilishda qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Condition quyidagiga ega bo'lishi shart

Bu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi. Talab qilinadigan elementlar asosiy resursdan meros qilib olinadi: klinik holat (1..1) va subyekt (holat tegishli bo'lgan bemor).

#### Har bir UZ Core Condition quyidagini qo'llab-quvvatlashi shart



- DHP clinical-status qiymatlar to'plamiga bog'langan klinik holat (active, recurrence, remission, resolved ...);
- tasdiqlash holati (provisional, confirmed, refuted, entered-in-error ...);
- og'irlik darajasi (preferred bog'lanish; kod SNOMED *Disability* tushunchasi bo'lganda nogironlik tasnifi talab qilinadi);
- holatning o'zini aniqlovchi kod (ICD-10 yoki SNOMED CT; DHP condition qiymatlar to'plamiga preferred bog'lanish);
- diagnosis-type kengaytmasi (masalan, asosiy tashxis, yo'naltiruvchi muassasa tashxisi), 0..1;
- tana qismi;
- subyekt va u qayd etilgan tashrif;
- onset[x] va abatement[x] vaqti hamda recordedDate;
- ishtirokchi (0..1) - holatni tasdiqlagan aktyor va uning vazifasi;
- erkin matnli izohlar.

> `verificationStatus` majburiy emas, lekin majburiy `clinicalStatus` bilan birgalikda u keyingi ko'rinishlar holatni faol, tasdiqlangan muammo sifatida ko'rib chiqishini belgilaydi - ma'lumot ma'lum bo'lganda ikkalasini ham to'ldiring.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik namunadan to'liq kodlangan tashxisgacha boradi. Birini nusxa oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq ma'lumotnoma namunalari sahifaning pastki qismida bog'langan ([bosh og'rig'i](Condition-example-headache.html), [saraton](Condition-example-cancer.html), [nogironlik](Condition-example-disability.html)).

#### Siz yuborishingiz kerak bo'lgan eng kichik Condition

Condition ning majburiy elementlari `subject` (u tegishli bo'lgan bemor) va `clinicalStatus` (ikkalasi ham 1..1), va Condition faqat holat nima ekanligini bildiruvchi `code` bilan foydali bo'ladi. Har bir UZ Core resursi o'zi mos kelishini da'vo qilayotgan profilni `meta.profile` da ham nomlashi shart, shunda server qaysi qoidalarga qarshi validatsiya qilishni biladi. `code` DHP condition qiymatlar to'plamiga bog'langan (ICD-10 yoki SNOMED CT; preferred); `clinicalStatus` DHP clinical-status qiymatlar to'plamiga bog'langan `CodeableConcept`, va `subject` [Patient](StructureDefinition-uz-core-patient.html) ga oddiy `Reference`. Shuncha narsa allaqachon validatsiyadan o'tadi:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" }
}
```

ICD-10 va SNOMED CT bugungi kunda qo'llanilayotgan kodlash tizimlaridir (ICD-11 rejalashtirilgan). Qaysi tizimdan foydalanish kerakligini [Terminologiya](general-guidance.html#terminology) bo'limidan ko'ring.

#### Real tashxis

Amalda siz platforma sizdan qo'llab-quvvatlashingizni kutadigan klinik kontekstni yuborasiz: `clinicalStatus` va `verificationStatus` (ular birgalikda holat faol, tasdiqlangan muammo sifatida ko'rsatilishini hal qiladi), u qachon boshlangani (`onsetDateTime`) va qachon qayd etilgani (`recordedDate`). Erkin matnli `note` shifokorning bayonini olib yuradi:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "verificationStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status", "code": "confirmed", "display": "Confirmed" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" },
  "onsetDateTime": "2025-07-25",
  "recordedDate": "2025-07-29",
  "note": [
    { "text": "Patient reported a mild migraine lasting two days; advised rest, hydration, and analgesia." }
  ]
}
```

`clinicalStatus` (active, recurrence, remission, resolved ...) va `verificationStatus` (provisional, confirmed, refuted, entered-in-error ...) ning har biri DHP qiymatlar to'plamiga bog'langan - qiymatlarni o'sha bog'lanishlardan oling (quyidagi Snapshot ko'rinishi ularni sanab o'tadi).

#### Og'irlik darajasi, tana qismi, tashxis turi va kim tasdiqlaganini qo'shish

To'liqroq yozuv holatni tasniflovchi va unga mansubligini ko'rsatuvchi Must-Support elementlarini qo'shadi: `severity` (SNOMED, preferred), `bodySite` (SNOMED), `diagnosisType` kengaytmasi (asosiy tashxis, yo'naltiruvchi muassasa tashxisi ...) va uni kim tasdiqlaganini nomlovchi `participant`. Ishtirokchi `actor` [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), Patient, RelatedPerson yoki Device ga oddiy `Reference`:

```json
{
  "resourceType": "Condition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs",
            "code": "gencl-0001-00003",
            "display": "Main diagnosis"
          }
        ]
      }
    }
  ],
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active",
        "display": "Active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed",
        "display": "Confirmed"
      }
    ]
  },
  "severity": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "255604002", "display": "Mild" } ]
  },
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "254837009",
        "display": "Malignant neoplasm of breast"
      }
    ]
  },
  "bodySite": [
    {
      "coding": [
        { "system": "http://snomed.info/sct", "code": "76752008", "display": "Breast structure" }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-emma" },
  "onsetDateTime": "2025-08-15",
  "recordedDate": "2025-09-01",
  "participant": [
    {
      "actor": { "reference": "Practitioner/example-practitioner" },
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code": "author",
            "display": "Author"
          }
        ]
      }
    }
  ]
}
```

`diagnosisType` kengaytmasi o'zining URL manzilini (`https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type`) va DHP `diagnosis-type-cs` tizimidan kodlangan qiymatni olib yuradi. `bodySite` - bu `CodeableConcept` ro'yxati. `participant` 0..1 - o'z `function` vazifasiga ega bitta aktyor.

#### Nogironlik tasnifi

`code` SNOMED *Disability* tushunchasi (`21134002`) bo'lganda, profil `severity` ning DHP disability qiymatlar to'plamidan kelishini **talab qiladi** - SNOMED og'irlik darajasi shkalasi qo'llanilmaydi. Nogironlik guruhini `severity` sifatida yuboring:

```json
{
  "resourceType": "Condition",
  "language": "uz",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed"
      }
    ]
  },
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "21134002", "display": "Disability" }
    ]
  },
  "severity": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/disability-cs",
        "code": "regis0011.00001",
        "display": "I guruh"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "onsetDateTime": "2020-03-10",
  "recordedDate": "2025-09-17"
}
```

To'liq namuna - bu [nogironlik misoli](Condition-example-disability.html). Boshqa har qanday holat uchun `severity` ni yuqorida ko'rsatilgandek preferred SNOMED shkalasiga (`Mild` va hokazo) bog'langan holda qoldiring.

Misol API chaqiruvlari va namunaviy yuk uchun ushbu sahifaning pastki qismidagi [Tez boshlash](#quick-start) bo'limini ko'ring.
