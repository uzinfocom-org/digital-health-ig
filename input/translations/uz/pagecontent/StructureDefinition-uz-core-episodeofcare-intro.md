UZ Core EpisodeOfCare bir nechta [Encounter](StructureDefinition-uz-core-encounter.html) resursini Raqamli sog'liqni saqlash platformasida tibbiyot tashkiloti tomonidan yuritiladigan bitta davomli klinik holat doirasida birlashtiradi - masalan, homiladorlikni kuzatish yo'li yoki surunkali kasallikni boshqarish dasturi. EpisodeOfCare tegishli [Patient](StructureDefinition-uz-core-patient.html) bilan bog'langan, uni yuritish uchun mas'ul [Organization](StructureDefinition-uz-core-organization.html) tomonidan boshqariladi va bir yoki bir nechta [Condition](StructureDefinition-uz-core-condition.html) ga taalluqlidir. Yangi EpisodeOfCare yaratish yoki mavjudini davom ettirish masalasini ongli ravishda hal qiling: o'tkir, davolanishi mumkin bo'lgan holat bo'yicha EpisodeOfCare bemor sog'aygach yakunlanadi, umr bo'yi kuzatuvni talab qiladigan surunkali holat bo'yicha EpisodeOfCare esa yillar davomida faol bo'lib qolishi va tashkilotlar o'rtasida o'tkazilishi mumkin.

### Majburiy va Must Support elementlar

Quyidagi elementlar doimo mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning barchasi ham majburiy emas, biroq tizimingiz ma'lumot mavjud bo'lsa har bir Must Support elementini to'ldirishi va qabul qilinganda qayta ishlashi kerak. Bu inson o'qishi uchun mo'ljallangan qisqacha tavsif; quyidagi [formal ko'rinishlar](#profile) aniq karralilik, turlar va terminologik bog'lanishlarni ko'rsatadi.

#### UZ Core EpisodeOfCare uchun majburiy elementlar (Must Have)

Ushbu profil o'ziga xos yangi majburiy karraliliklarni qo'shmaydi. Majburiy elementlar bazaviy resursdan meros qilib olinadi: status (planned \| active \| onhold \| finished \| cancelled ...) va patient.

#### UZ Core EpisodeOfCare uchun Must Support elementlar



- identifier;
- status (required binding) va statusHistory (har bir oldingi `status` va uning `period`);
- EpisodeOfCare turini tasniflovchi type;
- reason, uning `use` va `value` (Condition, Procedure, Observation yoki HealthcareService);
- diagnosis, undagi condition (Condition resursiga reference) va use (tashxisning roli);
- patient va tibbiy yordamni muvofiqlashtirish uchun mas'ul managingOrganization;
- umumiy period;
- referralRequest (ServiceRequest);
- careManager (yordamni muvofiqlashtiruvchi Practitioner yoki PractitionerRole) va careTeam.

> Bitta EpisodeOfCare bir nechta Encounter resursini birlashtirishi mumkin - har bir tashrifni tegishli EpisodeOfCare bilan Encounter ning `episodeOfCare` elementi orqali bog'lang, har bir tashrif uchun alohida EpisodeOfCare yaratmang.

### JSON ni bosqichma-bosqich shakllantirish

Quyidagi misollar amaliy EpisodeOfCare dan boshlab to'liq klinik holatgacha bosqichma-bosqich kengaytiriladi. Kerakli bosqichni nusxalab, o'z holatingizga moslashtiring - ko'rsatilgan barcha qiymatlar ushbu profilga muvofiq validatsiyadan o'tadi. To'liq namuna resurslariga sahifaning pastki qismida havolalar berilgan ([profilaktik EpisodeOfCare](EpisodeOfCare-UZCoreEpisodeOfCare-Example.html), [homiladorlik bo'yicha EpisodeOfCare](EpisodeOfCare-UZCoreEpisodeOfCare-Example02.html)).

#### Amaliy EpisodeOfCare

Amalda platformaga EpisodeOfCare ni boshqarish va topish uchun zarur ma'lumotlar yuboriladi: biznes `identifier`, `type` EpisodeOfCare ni tasniflaydi, `managingOrganization` tibbiy yordamni muvofiqlashtiradi, [Patient](StructureDefinition-uz-core-patient.html) resursiga tegishli bo'ladi va `period` uning amal qilish davrini ko'rsatadi. `careManager` (yordamni muvofiqlashtiruvchi mutaxassis) ushbu klinik holat doirasida tibbiy yordamni muvofiqlashtirish uchun mas'ul mutaxassisni ko'rsatadi:

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

`patient`, `managingOrganization` va `careManager` oddiy `Reference` turlaridir - maqsad resurs to'g'ridan-to'g'ri `reference` elementida ko'rsatiladi. EpisodeOfCare ochiq bo'lib turganda `period.end` ni ko'rsatmang; uni faqat klinik holat yakunlanganda qo'shing.

#### reason va diagnosis ni qo'shish

EpisodeOfCare ning klinik mazmuni uning `reason` (tibbiy yordam nima sababdan ko'rsatilayotgani) va `diagnosis` (qaysi holatlar bo'yicha yordam ko'rsatilayotgani) bilan belgilanadi. `reason.value` va `diagnosis.condition` `CodeableReference` turiga ega, shu sababli reference yuqoridagi oddiy Reference lardan bir daraja chuqurroq joylashadi (`{ "reference": { "reference": "..." } }`). Har bir `diagnosis.use` ushbu tashxisning rolini qayd etadi (bu yerda `DD`, asosiy tashxis):

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

`reason.value` quyidagilarga reference berishi mumkin: [Condition](StructureDefinition-uz-core-condition.html), Procedure, Observation yoki HealthcareService; `diagnosis.condition` faqat [Condition](StructureDefinition-uz-core-condition.html) bo'lishi kerak.

#### Statusning vaqt davomida o'zgarishini qayd etish

Uzoq davom etadigan EpisodeOfCare bir nechta statusdan o'tishi mumkin - avval `planned`, keyin `active`, keyin `finished`. Joriy qiymatni `status` elementida ko'rsating; har bir oldingi statusni `statusHistory` elementida qayd eting; har bir yozuvda oldingi `status` va u amal qilgan `period` ko'rsatiladi:

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

Har bir `statusHistory.status` qiymati `status` bilan bir xil ValueSet dan olinadi. Masalan, surunkali kasallik bo'yicha EpisodeOfCare `onhold` holatiga o'tkazilib, keyin yana davom ettirilganda, bu status o'zgarishlari tarixini saqlash imkonini beradi.

API so'rovlariga misollar va namuna payload uchun sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
