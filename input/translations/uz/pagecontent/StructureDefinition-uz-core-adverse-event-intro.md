UZ Core AdverseEvent Raqamli sog'liqni saqlash platformasida (DHP) nojo'ya hodisani, masalan, vaksinatsiyadan keyingi reaksiyani qayd etadi. U hodisa bilan bog'liq bo'lishi mumkin bo'lgan taxminiy manbaga reference saqlaydi; vaksina reaksiyasi uchun bunday resurs [Immunization](StructureDefinition-uz-core-immunization.html) hisoblanadi. Reaksiyaning o'zini tavsiflovchi [Observation](StructureDefinition-uz-core-observation.html) yoki [Condition](StructureDefinition-uz-core-condition.html) ham unga qo'shilishi mumkin. Resurs hodisa ta'sir qilgan [Patient](StructureDefinition-uz-core-patient.html) va uni qayd etgan [Practitioner](StructureDefinition-uz-core-practitioner.html) resurslarini ko'rsatadi. Hodisa amalda zarar yetkazgan bo'lishi yoki zarar yetkazilishining oldi olingan potensial xavfli holat bo'lishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (majburiy) yoki tegishli ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](must-support.html)) kerak. Ularning barchasi ham majburiy emas, biroq tizim ma'lumotga ega bo'lsa, har bir Must Support elementini to'ldirishi va uni qabul qilganda qayta ishlashi kerak. Quyida inson o'qishi uchun mo'ljallangan qisqacha tavsif berilgan; pastdagi [formal ko'rinishlarda](#profile) aniq karralilik, turlar va terminologik bog'lanishlar keltirilgan.

#### Har bir UZ Core AdverseEvent uchun Must Have elementlari

Ushbu profil o'ziga xos qo'shimcha majburiy karralilik belgilamaydi. Majburiy elementlar bazaviy resursdan meros olinadi: yozuv statusi (1..1), actuality - amalda yetkazilgan zarar yoki zarar yetkazilishining oldi olingan potensial xavfli holat (1..1), shuningdek hodisa sodir bo'lgan subject (1..1). Amalda taxminiy manba ham doimo to'ldiriladi (quyidagi Must Support bo'limiga qarang).

#### Har bir UZ Core AdverseEvent uchun Must Support elementlari



- identifikator, yozuv statusi va actuality (amalda yetkazilgan zarar yoki zarar yetkazilishining oldi olingan potensial xavfli holat);
- hodisa sodir bo'lgan subject, unga bog'liq Encounter va hodisaning yuz berish vaqti (sana/vaqt, davr yoki jadval);
- hodisa qachon aniqlangani va uning qayd etilgan sanasi;
- yuzaga kelgan oqibat - hodisa sababli paydo bo'lgan [Condition](StructureDefinition-uz-core-condition.html) yoki [Observation](StructureDefinition-uz-core-observation.html) - va hodisa sodir bo'lgan joy;
- jiddiylik darajasi va oqibat;
- hodisani qayd etgan shaxs hamda ishtirokchi (uning funksiyasi va actor);
- taxminiy manba - hodisa bilan bog'liq deb taxmin qilinayotgan aniq obyekt; vaksinatsiyadan keyingi reaksiya uchun bu [Immunization](StructureDefinition-uz-core-immunization.html);
- izohlar.

> Vaksinatsiyadan keyingi reaksiya uchun taxminiy manbada [Immunization](StructureDefinition-uz-core-immunization.html) resursiga reference ko'rsating, `resultingEffect` elementida esa reaksiyani tavsiflovchi Condition yoki Observation resursiga reference bering.

### JSONni bosqichma-bosqich shakllantirish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan boshlab, nojo'ya hodisa haqidagi to'liq yozuvgacha boradi. Mos misolni nusxalang va moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq etalon nusxalarga sahifaning pastki qismida reference berilgan ([o'lim bilan yakunlangan anafilaksiya](AdverseEvent-example-fatal-anaphylaxis.html), [oldi olingan dori vositasi bilan bog'liq xato](AdverseEvent-example-averted-medication-error.html)).

#### Yuborilishi kerak bo'lgan eng kichik AdverseEvent

Bazaviy resurs yozuvning `status`, `actuality` (amalda zarar yetkazilganmi yoki zarar yetkazilishining oldi olingan potensial xavfli holat yuz berganmi?) va hodisa sodir bo'lgan `subject` elementlarini talab qiladi. Nojo'ya hodisa `suspectEntity` - hodisaning taxminiy manbai - ko'rsatilgandagina amaliy ma'no kasb etadi. E'tibor bering: `status` va `actuality` `CodeableConcept` emas, balki oddiy kodlardir; ularni qo'shimcha tuzilmasiz satr ko'rinishida yuboring. Har bir UZ Core resursi `meta.profile` elementida qaysi profilga muvofiqligini ham ko'rsatishi kerak:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event"] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "suspectEntity": [
    { "instanceReference": { "reference": "Medication/example-prednisone" } }
  ]
}
```

`status` (registered, in-progress, completed ...) va `actuality` (`actual` / `potential`) uchun majburiy bog'lanish qo'llanadi: qiymat tegishli ValueSet tarkibidan tanlanishi kerak. `suspectEntity.instance[x]` elementida hodisa bilan bog'liq deb taxmin qilinayotgan nusxa ko'rsatiladi. Ushbu misolda bu Medication; vaksinatsiyadan keyingi reaksiya uchun [Immunization](StructureDefinition-uz-core-immunization.html) ishlatiladi. Shuningdek Procedure, Substance, Device yoki MedicationAdministration ham ko'rsatilishi mumkin. Bu oddiy `Reference` bo'lgani uchun `instanceReference` bevosita `{ "reference": "Type/id" }` tuzilmasini saqlaydi.

#### Amalda yuz bergan nojo'ya hodisaning realistik misoli

Bemorga amalda ta'sir qilgan hodisa uchun uning yuz bergan vaqtini (`occurrenceDateTime`), `detected` elementida aniqlangan vaqtni, `recordedDate`, bog'liq `encounter` va `location`, `resultingEffect` - hodisa sababli yuzaga kelgan [Condition](StructureDefinition-uz-core-condition.html) yoki [Observation](StructureDefinition-uz-core-observation.html) - `seriousness`, `outcome`, `recorder` va hodisa haqida xabar bergan `participant` ma'lumotlarini to'ldiring:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "completed",
  "actuality": "actual",
  "subject": { "reference": "Patient/example-david" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:45:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "resultingEffect": [ { "reference": "Condition/example-anaphylaxis" } ],
  "location": { "reference": "Location/example-location" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "outcome": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "405535005",
          "display": "Adverse incident resulting in death"
        }
      ]
    }
  ],
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "participant": [
    {
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code": "AUT",
            "display": "author (originator)"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-amoxicillin" } } ],
  "note": [
    {
      "text": "Patient developed anaphylaxis shortly after amoxicillin administration and died despite resuscitation efforts."
    }
  ]
}
```

`CodeableConcept` turidagi `seriousness` va `outcome` elementlaridan farqli ravishda (ushbu misolda `outcome` SNOMED CTdan, `seriousness` esa HL7 jiddiylik kodlari tizimidan foydalanadi), `resultingEffect`, `subject`, `encounter`, `location`, `recorder` va `participant.actor` elementlarining barchasi qo'shimcha ichma-ich tuzilmasiz `{ "reference": "Type/id" }` formatidagi oddiy `Reference` hisoblanadi. `participant.function` mazkur shaxs nima sababdan ishtirok etganini ko'rsatadi (bu yerda `AUT` - hodisani qayd etgan muallif).

#### Hodisa amalda zarar emas, balki oldi olingan potensial xavfli holat bo'lganda

Bemorga yetib bormagan, oldi olingan hodisa xuddi shu tarzda qayd etiladi, biroq `actuality` uchun `potential` qiymati ko'rsatiladi. `resultingEffect` bo'lmaydi, chunki bemorga hech qanday ta'sir yuz bermagan, `outcome` esa ko'rsatilmaydi. Hodisa qanday aniqlanib, oldi olinganini `note` elementida tushuntiring. `suspectEntity` baribir zarar yetkazishi mumkin bo'lgan obyektga reference saqlaydi:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:35:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "location": { "reference": "Location/example-location-1" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-prednisone" } } ],
  "note": [
    {
      "text": "Prednisone ordered despite a documented contraindication; pharmacy intercepted it before it reached the patient."
    }
  ]
}
```

Zarar yetkazilishining oldi olingan potensial xavfli holatni ham qayd etish muhim: `seriousness` yuz berishi mumkin bo'lgan oqibatning qanchalik og'irligini, `detected` esa xavfsizlik mexanizmi hodisani qachon aniqlaganini ko'rsatadi. Elementni qachon qoldirib ketish va qachon ma'lumot yo'qligini belgilash kerakligi [Yetishmayotgan va yashirilgan ma'lumotlar](general-guidance.html#missing-data) bo'limida tushuntirilgan.

API chaqiruvlari misollari va namunaviy payload ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limida keltirilgan.
