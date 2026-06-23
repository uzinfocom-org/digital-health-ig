> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Immunization Raqamli sog'liqni saqlash platformasidagi bemor uchun bitta vaktsina dozasini - u yuborilganmi yoki ataylab berilmaganmi - qayd etadi. U qaysi vaktsina berilgani, mahsulot, partiya va doza, qachon va qayerda sodir bo'lgani, kim yuborgani, qaysi protokolga rioya qilingani va har qanday reaktsiyani qamrab oladi. U emlangan [Patient](StructureDefinition-uz-core-patient.html) hamda yuborgan [Practitioner](StructureDefinition-uz-core-practitioner.html) yoki [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) ga havola qiladi va uni keltirib chiqargan [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) ga qaytarib bog'lash mumkin. Doza bemor + vaktsina kodi + sodir bo'lish vaqti + partiya raqami orqali yagona tarzda aniqlanadi, shu sababli bir xil doza ikki marta qayd etilmaydi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, ammo tizimingiz har bir Must Support elementini ma'lumot bo'lganda to'ldirishi va qabul qilinganida uni qayta ishlashi kerak. Bu insonga o'qishga qulay xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir UZ Core Immunization quyidagilarga ega bo'lishi shart

Har bir Immunization status ko'rsatishi shart - completed (doza yuborilgan), not-done (tibbiy chetlatish yoki rad etish, bu holda status sababini ko'rsating) yoki entered-in-error - qaysi vaktsina berilgani (yoki berilishi kerak bo'lgani)ni bildiruvchi vaktsina kodi, yozuv tegishli bo'lgan bemor va sodir bo'lish vaqti (yuborilgan sana, sana/vaqt sifatida yoki faqat taxminiy sana ma'lum bo'lganda satr sifatida). Ijrochi qayd etilganda, dozani yuborgan aktor majburiy, protokol qayd etilganda esa seriya ichidagi doza raqami ham majburiydir.

#### Har bir UZ Core Immunization quyidagilarni Must Support qiladi



- biznes identifikatori va basedOn - dozaga ruxsat bergan buyurtma yoki [tavsiya](StructureDefinition-uz-core-immunization-recommendation.html);
- status sababi (`not-done` yozuvi uchun), yuborilgan mahsulot, ishlab chiqaruvchining partiya raqami va amal qilish muddati hamda doza miqdori;
- uchrashuv (encounter), joylashuv, yuborish joyi va yo'li hamda qo'llab-quvvatlovchi ma'lumot;
- birlamchi manba bayrog'i va ma'lumot manbai (ma'lumotni kim xabar qilgani);
- ijrochi (va uning funksiyasi/roli), eslatmalar va emlash sababi;
- to'liq quvvatga ega bo'lmagan (subpotent) bayroq va uning sababi, dasturda ishtirok etish huquqi (dastur va ishtirok holati) hamda moliyalashtirish manbai;
- reaktsiya (sana, namoyon bo'lishi va o'zi xabar berganmi);
- qo'llanilgan protokol - seriya nomi, vakolatli tashkilot, maqsadli kasallik, doza raqami va seriyadagi umumiy dozalar soni.

> Chetlatish yoki rad etishni qayd etish uchun `status = not-done` ni status sababi bilan ishlating - yozuvni o'tkazib yubormang. `entered-in-error` ni xatolik bilan yaratilgan yozuvlar uchun saqlang.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan to protokol va reaktsiyaga ega to'liq emlash yozuviga qadar boradi. Birini nusxalab moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq malumotnoma nusxalari sahifaning pastki qismida bog'langan ([BCG dozasi](Immunization-immunization-example-001.html), [qizamiq dozasi](Immunization-example-measles-immunization.html)).

#### Yuborishingiz kerak bo'lgan eng kichik Immunization

To'rtta element majburiy: `status`, `vaccineCode`, `patient` va `occurrence`. Vaktsina kodi CVX kodi yoki Avstraliya emlash registri (AIR) kodi bo'lishi mumkin; sodir bo'lish vaqti odatda `occurrenceDateTime` bo'ladi. Har bir UZ Core resursi shuningdek u muvofiqligini da'vo qilayotgan profilni `meta.profile` da nomlashi kerak. Shuncha allaqachon validatsiyadan o'tadi:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  "status": "completed",
  "vaccineCode": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/sid/cvx",
        "code": "03",
        "display": "measles, mumps and rubella virus vaccine"
      }
    ]
  },
  "patient": { "reference": "Patient/example-emma" },
  "occurrenceDateTime": "2024-01-10"
}
```

`status` `completed` / `not-done` / `entered-in-error` ga `required` tarzda bog'langan. `vaccineCode` [vaktsina kodi value set](ValueSet-vaccine-code-vs.html) ga `extensible` bog'lanishdan foydalanadi - CVX (`http://hl7.org/fhir/sid/cvx`) va Avstraliya emlash registri (AIR) qo'llanilayotgan tizimlardir. Faqat taxminiy sana ma'lum bo'lganda `occurrenceDateTime` o'rniga `occurrenceString` ni yuboring.

#### Real yuborilgan doza

Amalda siz mahsulot tafsilotini va yuborishni qayd etasiz: CVX `vaccineCode`, `lotNumber` va `expirationDate`, `encounter` va `location`, `site` va `route`, `doseQuantity` hamda dozani bergan `performer`. `vaccineCode` oddiy `CodeableConcept`, ammo `performer.actor` oddiy `Reference`:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00",
  "primarySource": true,
  "lotNumber": "LOT-BCG-2026-01",
  "expirationDate": "2027-01-31",
  "location": { "reference": "Location/example-location-1" },
  "site": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActSite", "code": "LA", "display": "Left arm" }]
  },
  "route": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "36673005", "display": "Intradermal injection" }]
  },
  "doseQuantity": { "value": 0.05, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "performer": [
    {
      "function": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0443", "code": "AP", "display": "Administering Provider" }]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ]
}
```

`patient`, `encounter`, `location`, `basedOn`, `supportingInformation`, `performer.actor` va `protocolApplied.authority` ning hammasi oddiy Reference (`{ "reference": "Type/id" }`). `administeredProduct`, `informationSource`, `reason` va `reaction.manifestation` esa `CodeableReference` turlari - ularning havolasi bir daraja chuqurroqda joylashadi (`{ "reference": { "reference": "Type/id" } }`). Farqi uchun [Reference va CodeableReference](how-to-read.html#references-and-codeablereferences) ga qarang.

#### Protokol, sabab va reaktsiyani qo'shish

To'liq yozuv uchun `protocolApplied` (seriya nomi, maqsadli kasallik, doza raqami va umumiy dozalar), emlash uchun `reason` va kuzatilgan har qanday `reaction` ni qo'shing. CodeableReference shakli qayerda qo'llanilishiga e'tibor bering - `reason` va `reaction.manifestation` havolani ichiga joylaydi, `protocolApplied.authority` esa oddiy Reference:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00",
  "administeredProduct": {
    "reference": { "reference": "Medication/medication-imm-001" }
  },
  "reason": [
    { "reference": { "reference": "Condition/condition-tuberculosis-risk-example" } }
  ],
  "reaction": [
    {
      "date": "2026-04-28T12:00:00+05:00",
      "manifestation": {
        "concept": {
          "coding": [{ "system": "http://snomed.info/sct", "code": "260389003", "display": "No reaction" }]
        }
      },
      "reported": false
    }
  ],
  "protocolApplied": [
    {
      "series": "BCG vaccination",
      "authority": { "reference": "Organization/example-immunization-organization" },
      "targetDisease": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "56717001", "display": "Tuberculosis" }] }
      ],
      "doseNumber": "1",
      "seriesDoses": "1"
    }
  ]
}
```

`reaction.manifestation` o'zining kodlangan topilmasini `concept` ichida olib yuradi; u o'rniga o'zining ichki `reference` orqali [Observation](StructureDefinition-uz-core-observation.html) ga ishora qilishi mumkin. `protocolApplied.targetDisease` SNOMED CT ga `extensible` bog'langan. Doza [tavsiya](StructureDefinition-uz-core-immunization-recommendation.html) yoki buyurtmadan kelib chiqqan bo'lsa, unga `basedOn` havolasini qo'shing.

#### Doza berilmaganda

Vaktsina rad etilganda, qarshi ko'rsatma bo'lganda yoki boshqacha tarzda yuborilmaganda yozuvni o'tkazib yubormang - `status` ni `not-done` ga o'rnating va `statusReason` ni ko'rsating. `occurrence` baribir u qachon berilishi kerak bo'lganini (yoki rejalashtirilganini) qayd etadi:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "not-done",
  "statusReason": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "IMMUNE", "display": "immunity" }]
  },
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00"
}
```

`statusReason` `required` bog'lanishdan foydalanadi. not-done hodisa va yo'q element o'rtasidagi farq uchun [Yo'q va bostirilgan ma'lumotlar](general-guidance.html#missing-data) ga qarang.

API chaqiruvlari va namuna yuk (payload) misollari uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) ga qarang.
