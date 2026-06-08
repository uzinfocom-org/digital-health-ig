> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Procedure Raqamli sog'liqni saqlash platformasida bemorga yoki bemor uchun bajarilgan harakatni - jarrohlik amaliyoti, terapiya seansi, diagnostik aralashuv va shu kabilarni - qayd etadi. Procedure o'zining [Patient](StructureDefinition-uz-core-patient.html) iga va u sodir bo'lgan [Encounter](StructureDefinition-uz-core-encounter.html) ga bog'lanadi. Protsedura buyurtma qilinganda, u kelib chiqqan ServiceRequest (yoki CarePlan) ga qaytarib havola qiladi va uni asoslantirgan [Condition](StructureDefinition-uz-core-condition.html) yoki topilmaga ishora qilishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, ammo tizimingiz har bir Must Support elementini ma'lumot bo'lganda to'ldirishi va qabul qilinganida uni qayta ishlashi kerak. Bu insonga o'qishga qulay xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core Procedure quyidagilarga ega bo'lishi shart

Bu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi. Talab qilinadigan elementlar bazaviy resursdan meros qilib olinadi: status (preparation \| in-progress \| completed \| not-done ...) va subject (protsedura bajarilgan bemor yoki boshqa nishon).

#### Har bir UZ Core Procedure quyidagilarni Must Support qiladi



- identifikator, basedOn (CarePlan yoki ServiceRequest) va partOf (ota protsedura, kuzatuv yoki dori berish);
- status (required bog'lanish) va kategoriya;
- protsedurani aniqlovchi kod (DHP procedure-code value set ga required bog'lanish);
- subject va u sodir bo'lgan uchrashuv (encounter);
- occurrence[x] vaqti, qayd etilgan sana va qayd etuvchi;
- ijrochi va uning aktori;
- joylashuv, sabab (holat, kuzatuv, protsedura, hisobot yoki hujjat) va bodySite (required bog'lanish);
- natija (outcome) (extensible bog'lanish) va erkin matnli eslatma;
- protsedurada ishlatilgan buyumlar.

> Buyurtma qilingan protsedura ataylab bajarilmaganda `status` ni `not-done` ga o'rnating (Procedure ni o'tkazib yuborish o'rniga), shunda qaror yozuvda saqlanib qoladi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan to'liq protsedura yozuviga qadar boradi. Birini nusxalab moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq ma'lumotnoma nusxasi - [misol Procedure](Procedure-example-procedure.html).

#### Yuborishingiz kerak bo'lgan eng kichik Procedure

Procedure ning majburiy elementlari `status` (required bog'lanish: `preparation` \| `in-progress` \| `completed` \| `not-done` ...) va `subject` (u bajarilgan [Patient](StructureDefinition-uz-core-patient.html) ga oddiy havola), ammo u faqat *nima* qilinganini ham aytganda foydali bo'ladi. `code` (DHP procedure-code value set ga required bog'lanish, bu yerda SNOMED CT kodi) va amalda u sodir bo'lgan `encounter` hamda qachon sodir bo'lganini (`occurrence[x]`) qo'shing. Har bir UZ Core resursi shuningdek profilni `meta.profile` da nomlashi shart:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "completed",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrencePeriod": { "start": "2025-05-15T08:00:00Z", "end": "2025-05-15T10:00:00Z" }
}
```

`subject` va `encounter` oddiy havolalardir (`{ "reference": "Type/id" }`). Sodir bo'lish vaqti tanlov elementi: boshlanishi va tugashi bo'lgan protsedura uchun `occurrencePeriod` ni, vaqtning bitta nuqtasi uchun esa `occurrenceDateTime` ni ishlating.

#### Real protsedura

Platforma sizdan qo'llab-quvvatlashni kutadigan elementlarni to'ldiring: `identifier`, protsedurani guruhlovchi `category`, uni kim bajargani (`performer.actor`, [Practitioner](StructureDefinition-uz-core-practitioner.html) yoki [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) ga ishora qiladi), u qayerda sodir bo'lgani (`location`, [Location](StructureDefinition-uz-core-location.html)) hamda u qachon (`recorded`) va kim tomonidan (`recorder`) qayd etilgani haqidagi audit izi:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "identifier": [
    { "system": "https://mis.dmed.uz", "value": "proc-0001" }
  ],
  "status": "completed",
  "category": [
    { "text": "Physical therapy procedure" }
  ],
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david", "display": "David Davidov" },
  "encounter": { "reference": "Encounter/example-encounter", "display": "Outpatient Visit" },
  "occurrencePeriod": { "start": "2025-05-15T08:00:00Z", "end": "2025-05-15T10:00:00Z" },
  "recorded": "2025-05-19T09:30:00Z",
  "recorder": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": [
    { "actor": { "reference": "Practitioner/example-practitioner", "display": "Paul Ivanov, PT" } }
  ],
  "location": { "reference": "Location/example-location", "display": "Toshkent shahar 1-sonli shifoxona" }
}
```

`recorder`, `performer.actor` va `location` ning hammasi oddiy havolalardir. `recorded` lahzasi yozuv kiritilgan vaqt bo'lib, u protsedura aslida sodir bo'lgan `occurrence[x]` vaqtiga mos kelishi shart emas.

#### Buyurtma, sabab, tana qismi va natijani qo'shish

Klinik aylanani yopish uchun protsedurani keltirib chiqargan buyurtmaga qaytarib bog'lang (`basedOn`, CarePlan yoki ServiceRequest), u nima uchun bajarilganini ayting (`reason`), tananing qayerida (`bodySite`, required bog'lanish), u qanday natija berganini (`outcome`, extensible bog'lanish) hamda har qanday erkin matnli `note` yoki `used` buyumlarini qo'shing. E'tibor bering: `reason` va `used` `CodeableReference` turlaridir - havola oddiy havoladan bir daraja chuqurroqda joylashadi - `bodySite` va `outcome` esa kodlangan `CodeableConcept` lardir:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "completed",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david", "display": "David Davidov" },
  "basedOn": [
    { "reference": "CarePlan/example-careplan", "display": "CarePlan #1" }
  ],
  "reason": [
    { "reference": { "reference": "Condition/example-disability", "display": "Aching right foot" } }
  ],
  "bodySite": [
    { "coding": [{ "system": "http://snomed.info/sct", "code": "7769000", "display": "Right foot" }] }
  ],
  "outcome": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "385669000", "display": "Successful" }]
  },
  "note": [
    { "text": "Therapeutic massage of the right foot completed according to the care plan. No adverse reactions noted." }
  ],
  "used": [
    { "reference": { "reference": "Medication/example-medication" } }
  ]
}
```

`basedOn` oddiy havola, ammo `reason` va `used` `CodeableReference` - nishon `{ "reference": { "reference": "Type/id" } }` tarzida ichkariga joylashadi. `bodySite` ro'yxat, chunki protsedura bir nechta joyga ta'sir qilishi mumkin. Kodlangan bog'lanishlar uchun [Terminologiya](general-guidance.html#terminology) ga qarang.

#### Protsedura bajarilmaganda

Buyurtma qilingan protsedura ataylab bajarilmaganda Procedure ni tashlab yubormang - uni `status` `not-done` ga o'rnatilgan holda qayd eting, shunda qaror kartada saqlanib qoladi. U nima uchun o'tkazib yuborilganini `note` da (yoki bazaviy `statusReason` da) yozib oling:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "not-done",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david" },
  "note": [
    { "text": "Procedure cancelled - patient declined." }
  ]
}
```

not-done status va boshqa yo'qlik mexanizmlari o'rtasida tanlash uchun [Yo'q va bostirilgan ma'lumotlar](general-guidance.html#missing-data) ga qarang.

API chaqiruvlari va namuna yuk (payload) misollari uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) ga qarang.
