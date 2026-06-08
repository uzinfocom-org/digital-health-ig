> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core EpisodeOfCare bir qator [Encounter'larni](StructureDefinition-uz-core-encounter.html) Raqamli sog'liqni saqlash platformasida tashkilot tomonidan boshqariladigan bitta davom etayotgan parvarish holatiga birlashtiradi - masalan, homiladorlik yo'li yoki surunkali kasalliklarni boshqarish dasturi. U o'zining [Patient'iga](StructureDefinition-uz-core-patient.html) bog'lanadi, boshqaruvchi [Organization'ga](StructureDefinition-uz-core-organization.html) tegishli bo'ladi va bir yoki bir nechta [Condition'larni](StructureDefinition-uz-core-condition.html) qamrab oladi. Yangi epizod ochish yoki mavjudini qayta ishlatish haqida ongli ravishda qaror qabul qiling: o'tkir, davolanadigan kasallik epizodi bemor sog'aygach yopiladi, surunkali umrbod kasallik epizodi esa ko'p yillar davomida faol bo'lib qoladi va tashkilotlar o'rtasida o'tkazilishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi talab qilinmaydi, biroq sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core EpisodeOfCare quyidagilarga ega bo'lishi shart

Ushbu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi. Talab qilinadigan elementlar asosiy resursdan meros qilib olinadi: status (planned \| active \| onhold \| finished \| cancelled ...) va bemor.

#### Har bir UZ Core EpisodeOfCare quyidagilarni qo'llab-quvvatlashi shart



- identifikator;
- status (required bog'lanish) va statusHistory (har bir o'tgan `status` va uning `period`i);
- epizodni tasniflovchi type;
- reason, `use` va `value` bilan (Condition, Procedure, Observation yoki HealthcareService);
- diagnosis, o'zining condition'i (Condition havolasi) va use'i (diagnozning roli) bilan;
- bemor (patient) va parvarishni muvofiqlashtirish uchun mas'ul managingOrganization;
- umumiy period;
- referralRequest (ServiceRequest);
- careManager (muvofiqlashtiruvchi amaliyotchi yoki rol) va careTeam.

> Bitta EpisodeOfCare ko'plab Encounter'larni qamrab oladi - har bir tashrifda yangi epizod ochish o'rniga, har bir tashrifni Encounter'ning `episodeOfCare`i orqali epizodga bog'lang.

### JSON'ni bosqichma-bosqich qurish

Quyidagi misollar realistik epizoddan to'liq parvarish holatiga qadar bosqichma-bosqich quriladi. Birini nusxalab moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq tekshiruvdan o'tadi. To'liq mos yozuvlar namunalari sahifaning pastida havola qilingan ([profilaktik epizod](EpisodeOfCare-UZCoreEpisodeOfCare-Example.html), [homiladorlik epizodi](EpisodeOfCare-UZCoreEpisodeOfCare-Example02.html)).

#### Realistik epizod

Amaliyotda siz platformaga epizodni boshqarish va topish imkonini beradigan narsalarni yuborasiz: biznes `identifier`, epizodni tasniflovchi `type`, parvarishni muvofiqlashtiradigan `managingOrganization`, u tegishli bo'lgan [Patient](StructureDefinition-uz-core-patient.html) va u amal qiladigan `period`. `careManager` (muvofiqlashtiruvchi amaliyotchi) - bu holat bo'yicha murojaat qilinadigan shaxs:

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"]
  },
  "identifier": [
    {
      "system": "http://dhp.uz/ids/episode-of-care",
      "value": "EOC-2025-0001"
    }
  ],
  "status": "active",
  "type": [
    {
      "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs", "code": "mserv-0001-00001" }],
      "text": "Preventive services"
    }
  ],
  "patient": { "reference": "Patient/example-salim" },
  "managingOrganization": { "reference": "Organization/example-organization" },
  "careManager": { "reference": "Practitioner/example-practitioner" },
  "period": { "start": "2025-08-01" }
}
```

`patient`, `managingOrganization` va `careManager` - oddiy `Reference` turlari - maqsad to'g'ridan-to'g'ri `reference` ichida joylashadi. Epizod hali ochiq turganda `period.end`ni qo'shmang; uni faqat holat yopilganda qo'shing.

#### Reason va diagnosis qo'shish

Epizodning klinik mazmuni uning `reason`i (nima uchun parvarish ko'rsatilayotgani) va `diagnosis`idir (qaratilgan kasalliklar). Ham `reason.value`, ham `diagnosis.condition` `CodeableReference` turlari hisoblanadi, shuning uchun havola yuqoridagi oddiy havolalarga qaraganda bir daraja chuqurroq joylashadi (`{ "reference": { "reference": "..." } }`). Har bir `diagnosis.use` o'sha diagnozning rolini qayd etadi (bu yerda `DD`, asosiy diagnoz):

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare" ] },
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "managingOrganization": { "reference": "Organization/example-organization" },
  "reason": [
    {
      "use": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-reason-use-cs",
            "code": "mserv-0002-00002"
          }
        ],
        "text": "Preventive visit"
      },
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ],
  "diagnosis": [
    {
      "condition": [ { "reference": { "reference": "Condition/example-headache" } } ],
      "use": {
        "coding": [
          { "system": "http://terminology.hl7.org/CodeSystem/diagnosis-role", "code": "DD" }
        ],
        "text": "Primary diagnosis"
      }
    }
  ]
}
```

`reason.value` [Condition](StructureDefinition-uz-core-condition.html), Procedure, Observation yoki HealthcareService'ga ishora qilishi mumkin; `diagnosis.condition` esa [Condition](StructureDefinition-uz-core-condition.html) bo'lishi shart.

#### Status vaqt o'tishi bilan qanday o'zgarganini qayd etish

Uzoq davom etadigan epizod bir nechta statuslardan o'tadi - u `planned`, keyin `active`, so'ngra `finished` bo'lishi mumkin. Joriy qiymatni `status`da o'rnating; har bir oldingi holatni `statusHistory`da qayd eting, bu yerda har bir yozuv o'tgan `status`ni va u qamrab olgan `period`ni saqlaydi:

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"]
  },
  "status": "planned",
  "patient": { "reference": "Patient/example-emma" },
  "statusHistory": [
    {
      "status": "active",
      "period": { "start": "2025-08-16", "end": "2025-09-01" }
    }
  ]
}
```

Har bir `statusHistory.status` `status` bilan bir xil value set'dan olinadi. Bundan, masalan, surunkali kasallik epizodi `onhold` qilinib, keyinroq qayta tiklanganda audit izini saqlash uchun foydalaning.

Misol API chaqiruvlari va namuna yuk (payload) uchun ushbu sahifaning pastidagi [Quick Start](#quick-start) bo'limiga qarang.
