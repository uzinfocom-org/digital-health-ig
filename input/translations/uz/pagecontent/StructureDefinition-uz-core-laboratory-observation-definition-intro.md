> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Laboratory ObservationDefinition laboratoriya tekshiruvini natija sifatida emas, balki ma'lumotnoma yozuvi sifatida tavsiflaydi: tekshiruv yoki panel qanday nomlanadi va kodlanadi, qaysi analitlarni o'lchaydi, qaysi birliklarda, qaysi usulda va me'yoriy diapazonlar qanday. Bemor portali bu ta'riflardan bemorlarga tekshiruv nimani o'lchashini va o'z qiymatlarini qanday o'qishni ko'rsatish uchun foydalanadi. Bitta ta'rif butun mamlakatga xizmat qiladi: tekshiruvni taklif etadigan har bir tashkilot [service definition](StructureDefinition-service-definition.html) kengaytmasi orqali ta'rifning kanonik `url` iga havola qiluvchi [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) ni e'lon qiladi. Natijalarning o'zi - xuddi shu `code` ga ega [Observation](StructureDefinition-uz-core-observation.html) lar. Yangi ta'rif yaratishdan oldin mavjudini kod yoki identifikator bo'yicha qidiring.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Laboratory ObservationDefinition quyidagilarga ega bo'lishi shart

- `status` (draft / active / retired / unknown);
- laboratoriya tekshiruvi yoki panelining `code` i;
- resursni laboratoriya ta'rifi sifatida belgilovchi laboratoriya fokusiga ega `useContext` ([laboratoriya fokusi](#laboratory-focus) ga qarang).

`component` ko'rsatilgan bo'lsa, uning o'z `code` i bo'lishi shart.

#### Har bir UZ Core Laboratory ObservationDefinition quyidagilarni qo'llab-quvvatlashi shart

- HealthcareService yozuvlari havola qiladigan kanonik `url` va biznes identifikatori `identifier`;
- kompyuterga qulay nom `name` va o'zbek tilidagi sarlavha `title`, rus va qoraqalpoq tillaridagi tarjimalari bilan;
- oxirgi o'zgartirilgan sana `date` va oddiy tildagi tavsif `description`;
- tekshiruv qo'llaniladigan sub'ekt turi `subject` (odatda bemor);
- toifa `category` (laboratory) va tekshiruv yoki panel `code` i;
- ruxsat etilgan natija turlari (`permittedDataType`, masalan Quantity, CodeableConcept yoki string) va birliklar (`permittedUnit`, UCUM);
- laboratoriya usuli `method`;
- referens diapazonlar (`qualifiedValue`): kontekst, jins, diapazon toifasi, diapazonning o'zi `range` yoki me'yoriy kodlangan natijalar qiymatlar to'plami;
- ushbu panelga kiruvchi bog'liq ta'riflar (`hasMember`);
- panel analitlari (`component`), har biri o'z kodi, natija turlari va birliklari bilan.

### Mavjud ta'rifni topish {#finding}

Ta'riflar umumiy, shuning uchun avval ma'lumotnomani tekshiring. Tekshiruv kodi, biznes identifikatori yoki kanonik URL bo'yicha qidiring:

```
GET [base]/ObservationDefinition?code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-74
GET [base]/ObservationDefinition?identifier=[system]%7C[value]
GET [base]/ObservationDefinition?url=[canonical-url]
```

Qoralamalar va iste'moldan chiqarilgan ta'riflarni chiqarib tashlash uchun `&status=active` ni qo'shing.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik valid ta'rifdan analitlariga ega panelgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [gemoglobin ta'rifi](ObservationDefinition-example-laboratory-hemoglobin.html).

#### Eng kichik ta'rif va laboratoriya fokusi {#laboratory-focus}

Ta'rifga `status`, `code` va `useContext` dagi laboratoriya fokusi kerak. Fokus qat'iy belgilangan: `code` - HL7 foydalanish konteksti turlaridan `focus`, qiymat esa SNOMED CT 108252007 "Laboratory procedure" konsepti. Aynan u mijozlarga laboratoriya ta'riflarini serverdagi boshqa ObservationDefinition lardan ajratish imkonini beradi:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  }
}
```

Bu yerda `code` - milliy [laboratoriya panellari kodlari](CodeSystem-lab-pan-cs.html) dan `lab-pan-74` (gemoglobin); LOINC va SNOMED CT kodlariga ham ruxsat beriladi. Fokus kodlanishini ko'rsatilganidek, `display` bilan birga aynan nusxalang, chunki profil butun qiymatni qat'iy belgilaydi.

#### Bitta tekshiruv uchun ma'lumotnoma yozuvi

To'liq ma'lumotnoma yozuvi kanonik `url`ni, nomlarni, sana va tavsifni hamda natijalar qanday berilishini ko'rsatadi: `permittedDataType`, UCUM birligi va `method`:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "url": "https://dhp.uz/fhir/core/ObservationDefinition/laboratory-hemoglobin",
  "name": "HemoglobinMassPerVolumeInBlood",
  "title": "Gemoglobin (HB)",
  "_title": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Гемоглобин (HB)" }
        ]
      }
    ]
  },
  "status": "active",
  "date": "2026-01-16",
  "description": "Mass concentration of hemoglobin in whole blood, shown to Patient Portal users in g/L.",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "subject": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "116154003", "display": "Patient" } ] } ],
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  },
  "permittedDataType": [ "Quantity" ],
  "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ],
  "method": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-methods-cs", "code": "lab-method-6" } ]
  }
}
```

Yuqoridagi `url` misol uchun keltirilgan. `title` o'zbek tilida beriladi; ruscha va qoraqalpoqcha shakllari `_title` hamroh elementidagi `translation` kengaytmalarida, har bir til uchun bittadan uzatiladi. `permittedUnit` UCUM kodini o'z ichiga olishi shart; milliy qo'shimcha har bir birlikka o'zbekcha va ruscha nom beradi. Bu yerda `method` - milliy [laboratoriya usullari](CodeSystem-lab-methods-cs.html) dan spektrofotometriya.

#### Referens diapazonlarni qo'shish

`qualifiedValue` bemor portali natija yonida ko'rsatadigan me'yoriy diapazonlarni saqlaydi. Uni o'z diapazoniga ega har bir guruh uchun takrorlang; bu yerda erkaklar va ayollar:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  },
  "permittedDataType": [ "Quantity" ],
  "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ],
  "qualifiedValue": [
    {
      "context": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning", "code": "normal" } ]
      },
      "gender": "male",
      "rangeCategory": "reference",
      "range": {
        "low": { "value": 130, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" },
        "high": { "value": 170, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" }
      }
    },
    {
      "context": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning", "code": "normal" } ]
      },
      "gender": "female",
      "rangeCategory": "reference",
      "range": {
        "low": { "value": 120, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" },
        "high": { "value": 150, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" }
      }
    }
  ]
}
```

`rangeCategory` diapazon turini (reference / critical / absolute), `context` diapazon nimani anglatishini (normal, recommended, therapeutic ...), `gender` esa u kimga tegishli ekanini ko'rsatadi. Yoshga bog'liq diapazonlar uchun xuddi shunday `age` yoki `gestationalAge` dan foydalaning. Natijalari kodlangan tekshiruvlar uchun, masalan "manfiy" / "musbat", `range` o'rniga `normalCodedValueSet` da me'yoriy kodlar qiymatlar to'plamini ko'rsating.

#### Analitlariga ega panel

Umumiy qon tahlili kabi panel o'z analitlarini `component` da sanab o'tadi. Har bir komponentning o'z `code` i, natija turlari va birliklari bor, panel `code` i esa resurs darajasida qoladi:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-E" } ]
  },
  "component": [
    {
      "code": {
        "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
      },
      "permittedDataType": [ "Quantity" ],
      "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ]
    },
    {
      "code": {
        "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-75" } ]
      },
      "permittedDataType": [ "Quantity" ],
      "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "10*12/L" } ]
    }
  ]
}
```

Ma'lumotnoma panellari o'z analitlari uchun milliy laboratoriya panellari kodlaridan foydalanadi. Foydalanuvchi bemor portalida o'zining laboratoriya ta'rifini yaratganda, har bir `component.code` LOINC kodi bo'lishi shart (masalan, gemoglobin uchun 718-7); milliy kodlar oldindan belgilangan ma'lumotnoma uchun ajratilgan. Analitlarning o'z ta'riflari bo'lmasa, `component` dan foydalaning; har bir analit alohida ta'riflangan bo'lsa, yuqoridagi gemoglobin kabi, bu ta'riflarni `hasMember` da sanab o'ting.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
