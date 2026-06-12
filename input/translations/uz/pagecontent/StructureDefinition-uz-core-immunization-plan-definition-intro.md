> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Immunization PlanDefinition Oʻzbekistonning milliy emlash jadvalini hisoblanadigan mantiq koʻrinishida saqlaydi - har bir tavsiya etilgan doza, uning vaqti, dozalar orasidagi eng kichik intervallar va u kimga taalluqli ekanligini belgilovchi muvofiqlik qoidalari. Bu shunday resurski, tavsiya mexanizmi uni oʻqib har bir bemorning [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) resursini tuzadi. Berilgan koʻlam yoki yurisdiksiya uchun bir vaqtning oʻzida jadvalning faqat bitta versiyasi faol boʻlishi mumkin.

### Majburiy va Must Support maʼlumot elementlari

Quyidagi elementlar har doim mavjud boʻlishi (majburiy) yoki maʼlumot mavjud boʻlganda qoʻllab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz har bir Must Support elementini maʼlumotga ega boʻlganda toʻldirishi va qabul qilinganda uni qayta ishlashi kerak. Bu inson tomonidan oʻqiladigan xulosa; quyidagi [rasmiy koʻrinishlar](#profile) aniq kardinalliklar, turlar va terminologik bogʻlanishlarni beradi.

#### Har bir UZ Core Immunization PlanDefinition quyidagilarga ega boʻlishi shart

Har bir PlanDefinition url (ushbu jadval uchun kanonik identifikator), mashina tomonidan qayta ishlanadigan name, status (draft, active, retired, unknown - asosiy resursdan majburiy sifatida meros olingan) va jadval nimani qamrab olishi haqidagi description ni olib yurishi shart.

#### Har bir UZ Core Immunization PlanDefinition quyidagilarni Must Support qiladi



- identifikator, version va version algoritmi, inson tomonidan oʻqiladigan title va status (draft, active, retired);
- jadval taalluqli boʻlgan subject (kodlangan tushuncha yoki havola);
- date, publisher, foydalanish konteksti, tasdiqlash sanasi va amal qilish davri;
- jadvalni tashkil etuvchi action lar, har biri linkId, title, description va code bilan;
- har bir action uchun: condition (muvofiqlik - uning kind va FHIRPath ifodasi), bogʻliq action (maqsadli action, munosabat va eng kichik intervallar uchun offset - davomiylik yoki diapazon sifatida), timing (yosh yoki jadval), participant (uning actor id va type) va definition (ActivityDefinition yoki boshqa definition ga kanonik havola yoki uri).

> Jadval jadvalni tekshirish qoidalarini qondirishi kerak: doza ketma-ketligida boʻshliqlar boʻlmasligi, imkonsiz vaqt oynalari boʻlmasligi va bir xil koʻlam uchun ikkita faol bir-birini qoplovchi versiya boʻlmasligi kerak.

### JSON ni bosqichma-bosqich tuzish

PlanDefinition asosan bir marta yoziladi va tavsiya mexanizmi tomonidan oʻqiladi, shuning uchun quyidagi misollar qisqa. Ular server qabul qiladigan eng kichik nusxadan oʻz action larini olib yuruvchi jadvalgacha boradi. Bittasini nusxalab moslang - koʻrsatilgan har bir qiymat ushbu profilga muvofiq tekshiruvdan oʻtadi. Toʻliq maʼlumotnoma nusxasi - [example PlanDefinition](PlanDefinition-example-uz-core-immunization-plan-definition.html).

#### Yuborishingiz kerak boʻlgan eng kichik PlanDefinition

`url`, `name` va `description` majburiy elementlardir, `status` esa asosiy resursda majburiydir (draft \| active \| retired \| unknown - required bogʻlanish). `url` boshqa resurslar havola qiladigan kanonik identifikator, shuning uchun u barqaror boʻlishi shart. Har bir UZ Core resursi shuningdek `meta.profile` da oʻzi muvofiqligini daʼvo qilayotgan profilni nomlaydi. Mana shuncha allaqachon tekshiruvdan oʻtadi:

```json
{
  "resourceType": "PlanDefinition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition"]
  },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "status": "draft",
  "description": "Example PlanDefinition demonstrating actions and relationships."
}
```

`name` - mashina tomonidan qayta ishlanadigan nom (boʻshliqlarsiz); mavjud boʻlsa, inson tomonidan oʻqiladigan `title` ni qoʻshing. Nashr etilgan jadval olib yurishi kerak boʻlgan publisher, date va version maydonlari uchun [Metadata](general-guidance.html#metadata) ga qarang.

#### Oʻz action lari bilan jadval

Amalda jadval - bu `action` roʻyxati. Har bir doza `linkId`, `title`, `description` va `code` bilan bitta action dir. Muvofiqlik uchun `condition` (uning `kind` va FHIRPath `expression`), `participant` (kim bajaradi - `actorId` va `type`) va vaksina tafsilotini olib yuruvchi faoliyatga ishora qiluvchi `definitionUri` (yoki `definitionCanonical`) qoʻshing. Keyingi doza `relatedAction` yordamida `targetId` orqali oldingisiga ishora qiladi, eng kichik interval esa `offsetDuration` da:

```json
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition" ] },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "title": "Example Vaccination Follow-up Plan",
  "status": "draft",
  "date": "2026-08-10",
  "publisher": "DHP Uzbekistan",
  "description": "Example PlanDefinition demonstrating actions and relationships.",
  "approvalDate": "2026-08-01",
  "effectivePeriod": { "start": "2026-08-01", "end": "2027-08-01" },
  "action": [
    {
      "id": "action-1",
      "linkId": "action-1",
      "title": "Initial vaccination",
      "description": "Administer first vaccine dose.",
      "code": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/action-code",
            "code": "recommend-immunization",
            "display": "Recommend an immunization"
          }
        ]
      },
      "condition": [
        {
          "kind": "applicability",
          "expression": {
            "description": "Patient must be 18 years or older",
            "language": "text/fhirpath",
            "expression": "Patient.birthDate <= today() - 18 years"
          }
        }
      ],
      "participant": [ { "type": "practitioner", "actorId": "vaccinator" } ],
      "definitionUri": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"
    },
    {
      "id": "action-2",
      "linkId": "action-2",
      "title": "Follow-up vaccination",
      "description": "Administer second vaccine dose.",
      "relatedAction": [
        {
          "targetId": "action-1",
          "relationship": "after-end",
          "offsetDuration": {
            "value": 30,
            "unit": "days",
            "system": "http://unitsofmeasure.org",
            "code": "d"
          }
        }
      ],
      "participant": [ { "type": "practitioner", "actorId": "vaccinator" } ],
      "definitionUri": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"
    }
  ]
}
```

`condition.kind`, `relatedAction.relationship` va `participant.type` ning har biri required bogʻlanishdan foydalanadi - qiymatni bogʻlangan qiymatlar toʻplamidan oling (quyidagi Snapshot koʻrinishi har birini sanab oʻtadi). `relatedAction.targetId` xuddi shu jadvalda allaqachon mavjud action ning `linkId` siga mos kelishi shart.

API chaqiruvlari namunalari va namunaviy yuk uchun ushbu sahifaning pastidagi [Quick Start](#quick-start) boʻlimiga qarang.
