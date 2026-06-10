> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Encounter bemor va sog'liqni saqlash tizimi o'rtasidagi yagona o'zaro aloqani - tashrifni - Raqamli sog'liqni saqlash platformasida ifodalaydi. U bemor yo'lining markaziy bo'g'inidir: [Observations](StructureDefinition-uz-core-observation.html), [Procedures](StructureDefinition-uz-core-procedure.html), [Conditions](StructureDefinition-uz-core-condition.html), MedicationRequests va klinik hujjatlarning barchasi o'zlari tegishli bo'lgan Encounter'ga havola qiladi. U tashrif qayerda bo'lib o'tganini, uni kim taqdim etganini va uning davomida qo'yilgan tashxislarni (har biri biror [Condition](StructureDefinition-uz-core-condition.html)'ga ishora qiladi) qayd etadi hamda [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) ostida guruhlanishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning hammasi ham talab qilinmaydi, ammo tizimingiz har bir Must Support elementni ma'lumot bo'lganda to'ldirishi va qabul qilishda qayta ishlashi kerak. Bu inson o'qiy oladigan xulosadir; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Encounter quyidagilarga ega bo'lishi shart

Ushbu profilning yagona majburiy elementlari - status (planned \| in-progress \| completed \| cancelled ...), bazaviy resursdan majburiy sifatida required bog'lanish ostida meros qilib olingan, va - joylashuv qayd etilganda - uning joylashuv havolasi (location.location 1..1), chunki joylashuv yozuvini qaysi joy ekanligini ko'rsatmasdan sanab bo'lmaydi.

#### Har bir UZ Core Encounter quyidagilarni qo'llab-quvvatlashi shart



- identifikator (0..1);
- status, class, priority va type (har biri required bog'lanish);
- serviceType (HealthcareService'ga havola qiluvchi);
- subject (bemor) va subjectStatus (required bog'lanish);
- episodeOfCare, basedOn, careTeam va partOf havolalari;
- serviceProvider tashkiloti;
- participant yozuvlari ularning actor, type (extensible bog'lanish) va period bilan;
- uchrashuvni rejalashtirgan appointment;
- reason - `use` (preferred bog'lanish) va Condition, DiagnosticReport, Procedure yoki Observation'ga havola qiluvchi `value` bilan;
- virtualService (teletibbiyot) tafsiloti;
- actualPeriod, plannedStartDate, plannedEndDate va length;
- diagnosis ro'yxati, har biri o'zining condition (Condition havolasi) va use bilan;
- to'lov uchun account;
- admission tafsiloti - origin, admitSource, reAdmission, destination, dischargeDisposition (har bir kodlangan qiymat required bog'lanish);
- uchrashuv bo'lib o'tadigan joylashuv.

> Encounter `completed` holatiga uning davri tugashi boshlanishidan oldinroq bo'lganida o'rnatib bo'lmaydi - tashrifni yopishdan oldin `actualPeriod`'ni tekshiring.

### JSON'ni bosqichma-bosqich qurish

Quyidagi misollar yagona tashrifni - shoshilinch statsionar uchrashuvni - eng minimal holatdan to to'liq qabul qilish yozuvigacha quradi. To'liq instans bu [example Encounter](Encounter-example-encounter.html). Bosqichni nusxalab oling va moslang; ko'rsatilgan har bir qiymat ushbu profilga muvofiqligi tekshiriladi.

#### Yuborishingiz kerak bo'lgan eng kichik Encounter

`status` yagona qat'iy majburiy element, ammo Encounter faqat `class` (aloqa qanday sodir bo'lgani - statsionar, ambulator, shoshilinch) va u tegishli bo'lgan `subject` bilan foydalidir. E'tibor bering, `class` bu `CodeableConcept`larning **ro'yxati**:

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "class": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "IMP", "display": "Inpatient encounter" }] }
  ],
  "subject": { "reference": "Patient/example-patient" }
}
```

`status`, `class`, `priority`, `type` va `subjectStatus` har biri required bog'lanishdan foydalanadi - qiymat bog'langan qiymatlar to'plamidan kelishi kerak (quyidagi Snapshot ko'rinishi har birini sanab beradi).

#### Real tashrif

U qachon sodir bo'lganini (`actualPeriod`), bu qanday xizmat turi ekanligini (`type`), bemorning uning davomidagi holatini (`subjectStatus`), kim ishtirok etganini (`participant`, uning `actor`'i amaliyotchi yoki [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)'ga havola qiladi) va nima uchun ekanligini (`reason` - Condition, DiagnosticReport, Procedure yoki Observation'ga ishora qiluvchi) to'ldiring:

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] },
  "status": "completed",
  "class": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "IMP",
          "display": "Inpatient encounter"
        }
      ]
    }
  ],
  "priority": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code": "EM",
        "display": "Emergency"
      }
    ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs",
          "code": "mserv-0001-00004",
          "display": "Treatment services"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-patient" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00001",
        "display": "Awake"
      }
    ]
  },
  "actualPeriod": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" },
  "participant": [
    {
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "ATND",
              "display": "attender"
            }
          ]
        }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" },
      "period": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-cs",
              "code": "mserv-0002-00001",
              "display": "Disease"
            }
          ]
        }
      ],
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ]
}
```

#### Tashxis, qabul qilish va joylashuv

Qabul qilish uchun `diagnosis` ro'yxatini (har bir `condition` bu [Condition](StructureDefinition-uz-core-condition.html)'ga `CodeableReference`), `admission` tafsilotini (qabul manbasi, qayta qabul bayrog'i, chiqarish tartibi - barchasi required bog'lanishlar) va bu qayerda sodir bo'lganini qo'shing. Agar `location` yozuvini kiritsangiz, joyni nomlashingiz kerak - `location.location` majburiydir:

```json
{
  "diagnosis": [
    { "condition": [ { "reference": { "reference": "Condition/example-headache" } } ] }
  ],
  "admission": {
    "admitSource": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/admit-source",
          "code": "psych",
          "display": "From psychiatric hospital"
        }
      ]
    },
    "reAdmission": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0092",
          "code": "R",
          "display": "Re-admission"
        }
      ]
    },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
          "code": "home",
          "display": "Home"
        }
      ]
    }
  },
  "location": [
    { "location": { "reference": "Location/example-location" }, "status": "completed" }
  ]
}
```

Bu kalitlar yuqoridagi real tashrif bilan bir xil resursga joylashadi. Tashrifni uzoqroq davom etadigan parvarish kursi ostida guruhlash uchun `episodeOfCare` orqali [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html)'ga havola qiling.

API chaqiruvlari va namuna payload misollari uchun ushbu sahifaning pastidagi [Quick Start](#quick-start) bo'limiga qarang.
