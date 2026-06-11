> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core AdverseEvent Raqamli sogʻliqni saqlash platformasida emlashdan keyingi reaksiya kabi nojoʻya hodisani qayd etadi. U hodisaga sabab boʻlgan deb gumon qilingan obʼyektga havola qiladi - vaksina reaksiyasi uchun bu [Immunization](StructureDefinition-uz-core-immunization.html) hisoblanadi - va u reaksiyaning oʻzini tavsiflovchi [Observation](StructureDefinition-uz-core-observation.html) yoki [Condition](StructureDefinition-uz-core-condition.html) bilan birga kelishi mumkin. U taʼsirga uchragan [Patient](StructureDefinition-uz-core-patient.html) va uni qayd etgan [Practitioner](StructureDefinition-uz-core-practitioner.html) ni aniqlaydi. Hodisa real zarar yoki oldi olingan "deyarli sodir boʻlgan" (near-miss) holat boʻlishi mumkin.

### Majburiy va Must Support maʼlumot elementlari

Quyidagi elementlar har doim mavjud boʻlishi (majburiy) yoki maʼlumot mavjud boʻlganda qoʻllab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz maʼlumotga ega boʻlganda har bir Must Support elementini toʻldirishi va qabul qilingan paytda uni qayta ishlashi kerak. Bu inson oʻqiy oladigan qisqacha xulosa; quyidagi [rasmiy koʻrinishlar](#profile) aniq kardinalliklar, tiplar va terminologiya bogʻlanishlarini beradi.

#### Har bir UZ Core AdverseEvent quyidagilarga ega boʻlishi shart

Ushbu profil oʻzining hech qanday majburiy kardinalligini qoʻshmaydi. Talab qilinadigan elementlar bazaviy resursdan meros qilib olinadi: yozuvning holati (status) (1..1), aniqlik darajasi - real zarar yoki potensial near-miss (actuality) (1..1) - va hodisa sodir boʻlgan obʼyekt (subject) (1..1). Amalda siz har doim gumon qilingan obʼyektni (suspect entity) ham toʻldirasiz (quyidagi Must Support ga qarang).

#### Har bir UZ Core AdverseEvent quyidagilarni qoʻllab-quvvatlashi shart



- identifikator, yozuvning holati (status) va aniqlik darajasi (actuality) (real zarar yoki potensial near-miss);
- hodisa sodir boʻlgan obʼyekt (subject), uchrashuv (encounter) va yuz berish vaqti (occurrence) (sana/vaqt, davr yoki jadval);
- hodisa qachon aniqlangani va uning qayd etilgan sanasi;
- natijaviy taʼsir - hodisa keltirib chiqargan [Condition](StructureDefinition-uz-core-condition.html) yoki [Observation](StructureDefinition-uz-core-observation.html) - va joylashuv (location);
- jiddiylik (seriousness) va natija (outcome);
- qayd etuvchi (recorder) va ishtirokchi (participant) (uning funksiyasi va aktyori);
- gumon qilingan obʼyekt (suspect entity) - hodisaga sabab boʻlgan deb gumon qilinayotgan obʼyekt boʻlib, emlashdan keyingi reaksiya uchun bu [Immunization](StructureDefinition-uz-core-immunization.html) hisoblanadi;
- izohlar.

> Emlashdan keyingi reaksiya uchun gumon qilingan obʼyektni [Immunization](StructureDefinition-uz-core-immunization.html) ga yoʻnaltiring va reaksiyani tavsiflovchi Condition yoki Observation ni bogʻlash uchun natijaviy taʼsirdan (resulting effect) foydalaning.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan toʻliq nojoʻya hodisa yozuvigacha boradi. Birini koʻchirib oling va moslang - koʻrsatilgan har bir qiymat ushbu profilga nisbatan validatsiyadan oʻtadi. Toʻliq maʼlumot uchun namunaviy nusxalar sahifaning pastki qismida havola qilingan ([oʻlim bilan yakunlangan anafilaksiya](AdverseEvent-example-fatal-anaphylaxis.html), [oldi olingan dori xatosi](AdverseEvent-example-averted-medication-error.html)).

#### Siz yuborishingiz kerak boʻlgan eng kichik AdverseEvent

Bazaviy resurs yozuvning `status` ini, `actuality` ni (bu real zarar boʻldimi yoki potensial near-miss?) va u sodir boʻlgan `subject` ni talab qiladi; nojoʻya hodisa faqat siz unga sabab boʻlgan deb hisoblangan `suspectEntity` ni ham qoʻshganingizda maʼnoga ega boʻladi. Eʼtibor bering, `status` va `actuality` oddiy kodlardir, `CodeableConcept` emas - oddiy satr (string) ni yuboring. Har bir UZ Core resursi shuningdek `meta.profile` da oʻzi mos kelishini daʼvo qilayotgan profilni nomlashi shart:

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

`status` (registered, in-progress, completed ...) va `actuality` (`actual` / `potential`) ning har biri talab qilinadigan (required) bogʻlanishdan foydalanadi - qiymat bogʻlangan qiymatlar toʻplamidan (value set) kelishi shart. `suspectEntity.instance[x]` - hodisaga sabab boʻlgan deb gumon qilinayotgan obʼyekt; bu yerda Medication, lekin emlashdan keyingi reaksiya uchun bu [Immunization](StructureDefinition-uz-core-immunization.html), shuningdek u Procedure, Substance, Device yoki MedicationAdministration ham boʻlishi mumkin. Bu oddiy `Reference`, shuning uchun `instanceReference` toʻgʻridan-toʻgʻri `{ "reference": "Type/id" }` ni saqlaydi.

#### Real nojoʻya hodisaga oid haqqoniy misol

Bemorga yetib borgan real hodisa uchun u qachon sodir boʻlganini (`occurrenceDateTime`), qachon `detected` boʻlganini, `recordedDate` ni, `encounter` va `location` ni, `resultingEffect` ni (hodisa keltirib chiqargan [Condition](StructureDefinition-uz-core-condition.html) yoki [Observation](StructureDefinition-uz-core-observation.html)), `seriousness` va `outcome` ni, `recorder` ni va uni xabar qilgan `participant` ni toʻldiring:

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

`CodeableConcept` boʻlgan `seriousness` va `outcome` dan farqli oʻlaroq (bu yerda `outcome` SNOMED CT dan, `seriousness` esa HL7 jiddiylik kod tizimidan foydalanadi), `resultingEffect`, `subject`, `encounter`, `location`, `recorder` va `participant.actor` ning hammasi oddiy `Reference` lardir - `{ "reference": "Type/id" }`, qoʻshimcha ichma-ich joylashtirishsiz. `participant.function` oʻsha shaxs nima uchun jalb qilinganini bildiradi (bu yerda `AUT`, yaʼni uni qayd etgan muallif).

#### Bu real zarar emas, near-miss boʻlganda

Bemorga hech qachon yetib bormagan, oldi olingan hodisa xuddi shu tarzda qayd etiladi, lekin `actuality` `potential` ga oʻrnatiladi. `resultingEffect` boʻlmaydi (bemorga hech narsa boʻlmagan) va `outcome` tushirib qoldiriladi; uni qanday ushlab qolinganini tushuntirish uchun `note` dan foydalaning. `suspectEntity` hamon zararga sabab boʻlishi mumkin boʻlgan narsaga ishora qiladi:

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

Near-miss hodisani qayd etish baribir foydali: `seriousness` u qanchalik yomon boʻlishi mumkinligini aks ettiradi, `detected` esa xavfsizlik tarmogʻi uni qachon ushlab qolganini qayd etadi. Elementni qachon tushirib qoldirish va qachon yoʻq deb belgilash haqida [Yetishmayotgan va yashirilgan maʼlumotlar](general-guidance.html#missing-data) ga qarang.

API chaqiruvlari va namunaviy yuk (payload) misoli uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) ga qarang.
