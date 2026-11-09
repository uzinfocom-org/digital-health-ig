> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core SupplyRequest ta'minot buyumlarini yetkazib berish so'rovini qayd etadi: shifoxonaning qon xizmatidan aniq bemor uchun eritrotsitlar so'rashi, shifoxonadagi qon komponenti zaxirasini to'ldirish buyurtmasi yoki muassasalar o'rtasida ta'minot buyumlarini o'tkazish. Resurs nima va qancha kerakligini, qanchalik shoshilinchligini, kim uchunligini, kim so'raganini, qaysi tashkilot yetkazib berishi kerakligini va qayerga yetkazilishini ko'rsatadi. Shaxsiy so'rov odatda shifokorning transfuziya buyurtmasiga, [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ga asoslanadi va boshqa SupplyRequest ga ham asoslanishi mumkin. So'rovni bajaradigan [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) unga `basedOn` da havola qiladi, [CarePlan](StructureDefinition-uz-core-careplan.html) esa unga rejalashtirilgan tadbir sifatida havola qilishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core SupplyRequest quyidagilarga ega bo'lishi shart

- so'ralgan buyum (`item`);
- so'ralgan miqdor (`quantity`).

Ikkalasi ham bazaviy SupplyRequest resursida majburiy; ushbu profil boshqa majburiy elementlar qo'shmaydi. So'rov yoki shartnoma raqami o'z `system` iga ega bo'lishi, qon guruhining har bir parametri esa ham kodga, ham qiymatga ega bo'lishi shart.

#### Har bir UZ Core SupplyRequest quyidagilarni qo'llab-quvvatlashi shart

- so'rov yuborayotgan shifoxona bergan so'rov raqami va u tegishli bo'lgan ta'minot shartnomasi raqami, har biri `system` bilan birga (qarang: [identifikator slayslari](#identifier-slices));
- so'rov asoslangan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) yoki boshqa SupplyRequest (`basedOn`);
- so'rov holati `status` (draft / active / suspended / cancelled / completed / entered-in-error / unknown);
- so'rov toifasi `category` (zaxirani to'ldirish / shaxsiy, bitta bemor uchun / muassasalar o'rtasida);
- ustuvorlik `priority` (routine / urgent / asap / stat);
- shaxsiy so'rov uchun buyumlar mo'ljallangan bemor (`deliverFor`);
- so'ralgan buyum va uning miqdori `quantity`;
- qon komponenti mos kelishi kerak bo'lgan ABO tizimi bo'yicha qon guruhi va RhD rezus-mansubligi (`parameter`);
- buyumlar qachon kerakligi (`occurrence[x]`) va so'rov qachon tuzilgani (`authoredOn`);
- so'rovni kim qilgani (`requester`) va qaysi tashkilot yoki xizmat yetkazib berishi kerakligi (`supplier`);
- so'rov sababi, kod yoki [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) yoki [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) ga havola sifatida (`reason`);
- buyumlar qayerga yetkazilishi kerakligi (`deliverTo`).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan bemor uchun shaxsiy so'rov va zaxirani to'ldirishgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [eritrotsitlar uchun so'rov](SupplyRequest-example-supply-request.html).

#### Yuborishingiz kerak bo'lgan eng kichik SupplyRequest

`item` va `quantity` yagona majburiy elementlardir. Har bir UZ Core resursi o'z profilini `meta.profile` da ham ko'rsatadi, bu serverga qaysi qoidalar bo'yicha validatsiya qilishni bildiradi, so'rovni esa faqat `status` mavjud bo'lganda bajarish mumkin. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "status": "active",
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ]
    }
  },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" }
}
```

`item` `CodeableReference` turiga ega. Qon komponenti o'z turi bo'yicha so'raladi, shuning uchun uning SNOMED CT kodi [qon mahsuloti turi](ValueSet-blood-product-type-snomed-vs.html) qiymatlar to'plamidan `concept` ga joylashtiriladi; bu bog'lanish `extensible`, shuning uchun boshqa ta'minot buyumlari uchun boshqa kodlar ishlatilishi mumkin. Aniq qayd etilgan buyumni so'rash uchun uning o'rniga havolani `reference` ga joylashtiring. `status` HL7 kodlaridan foydalanadi, ularning o'zbekcha va ruscha ko'rinadigan nomlari DHP qo'shimchasidan olinadi, shuning uchun `display` ni ko'rsatmasangiz ham bo'ladi.

#### Bemor uchun shaxsiy so'rov

Shifoxona o'z ta'minot shartnomasi doirasida Andijon qon quyish stansiyasidan aniq bemor uchun ikki birlik eritrotsit so'raydi. So'rov shifokorning [transfuziya buyurtmasi](ServiceRequest-transfusion-order-01.html) ga asoslanadi, `deliverFor` bemorni ko'rsatadi, ikkita `parameter` yozuvi esa birliklar mos kelishi kerak bo'lgan qon guruhini beradi:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0001" },
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-contract", "value": "AGR-2025-017" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/transfusion-order-01" } ],
  "status": "active",
  "category": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0002" }
    ]
  },
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/example-salim" },
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ]
    }
  },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "63915006" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "115678000" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "165747007", "display": "RhD positive" } ]
      }
    }
  ],
  "occurrenceDateTime": "2025-09-01T09:00:00+05:00",
  "authoredOn": "2025-08-31T14:20:00+05:00",
  "requester": { "reference": "Practitioner/example-practitioner" },
  "supplier": [ { "reference": "Organization/andijan-station" } ],
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "87522002", "display": "Iron deficiency anemia" } ]
      }
    }
  ],
  "deliverTo": { "reference": "Organization/tashkent-hospital" }
}
```

`parameter` o'z `code` i bo'yicha slayslarga bo'lingan: SNOMED CT `63915006` (ABO qon guruhlari tizimi) [qon guruhi](ValueSet-blood-group-vs.html) qiymatlar to'plamidan ABO guruhini, `115678000` (Rh qon guruhlari tizimi) esa [RhD rezus-mansubligi](ValueSet-blood-rh-vs.html) qiymatlar to'plamidan RhD turini o'z ichiga oladi. Ikkala qiymat bog'lanishi ham `required`. `category` kod tizimi o'zbek tiliga asoslangan, ruscha va inglizcha belgilanishlarga ega; `display` ni faqat u resurs `language` iga mos kelgandagina yuboring. `supplier` takrorlanadi, `deliverTo` takrorlanmaydi. `reason` `CodeableReference` turiga ega: `concept` dagi kod yoki `reference` dagi tashxis yoki tekshiruv natijasiga havola.

#### So'rov va shartnoma raqamlari {#identifier-slices}

`identifier` o'z `system` URI si bo'yicha slayslarga bo'lingan, shuning uchun tizim aniq mos kelishi shart:

| Identifikator | `system` | Kim beradi |
|---|---|---|
| [Ta'minot so'rovi raqami](NamingSystem-uzb-supply-request-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-request` | So'rov yuborayotgan shifoxona |
| [Ta'minot shartnomasi raqami](NamingSystem-uzb-supply-contract-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-contract` | Shifoxona va qon xizmati o'rtasidagi ta'minot shartnomasini rasmiylashtirgan tomon |

So'rov raqami qon xizmati va shifoxonaga so'rovni unga javob beradigan yetkazib berish bilan solishtirish imkonini beradi; yetkazib berishning o'z [yetkazib berish raqami](StructureDefinition-uz-core-supply-delivery.html#identifier-slices) bor.

#### Zaxirani to'ldirish

Shifoxona o'z zaxirasi uchun o'n birlik yangi muzlatilgan plazmani keyingi hafta davomida markaziy omborga yetkazib berish sharti bilan buyurtma qiladi. Zaxira so'rovida `deliverFor` va `basedOn` bo'lmaydi, so'rovchi esa shifoxonaning o'zi:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0002" }
  ],
  "status": "active",
  "category": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0001" }
    ]
  },
  "priority": "routine",
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "346447007" } ]
    }
  },
  "quantity": { "value": 10, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "occurrencePeriod": { "start": "2025-09-08", "end": "2025-09-12" },
  "authoredOn": "2025-09-01T10:00:00+05:00",
  "requester": { "reference": "Organization/tashkent-diseases-hospital" },
  "supplier": [ { "reference": "Organization/andijan-station" } ],
  "deliverTo": { "reference": "Location/example-central-warehouse" }
}
```

`occurrence[x]` bitta lahza uchun `dateTime`, yetkazib berish oralig'i uchun `Period` yoki takroriy yetkazib berishlar uchun `Timing` bo'ladi. `deliverTo` [Organization](StructureDefinition-uz-core-organization.html), ombor kabi [Location](StructureDefinition-uz-core-location.html), [Patient](StructureDefinition-uz-core-patient.html) yoki [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) ga havola qiladi.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
