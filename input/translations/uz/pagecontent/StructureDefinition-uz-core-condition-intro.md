UZ Core Condition DHP (Digital Health Platform - Raqamli sog'liqni saqlash platformasi) da bemorning tashxisi, muammosi yoki boshqa klinik holati haqidagi ma'lumotlarni qayd etadi. Klinik holatlarni kodlash uchun ICD-10 yoki SNOMED CT qo'llanadi; ICD-11 dan foydalanish rejalashtirilgan. Condition [Patient](StructureDefinition-uz-core-patient.html) hamda u qayd etilgan tashrif bilan bog'lanadi. [Encounter](StructureDefinition-uz-core-encounter.html), o'z navbatida, Condition resursini tashxislardan biri sifatida ko'rsatishi mumkin va tegishli tashxis kodi hisobotlarni shakllantirishda qo'llanadi.

### Majburiy ma'lumot elementlari va Must Support elementlari

Quyida keltirilgan elementlar har doim mavjud bo'lishi (mandatory) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](must-support.html)) kerak. Ularning barchasi ham majburiy emas, biroq tizim tegishli ma'lumot mavjud bo'lsa, har bir Must Support elementini to'ldirishi va qabul qilganda qayta ishlashi kerak. Bu inson o'qishi uchun mo'ljallangan qisqacha tavsif; aniq karralilik, turlar va terminologik bog'lanishlar quyidagi [formal ko'rinishlarda](#profile) keltirilgan.

#### Har bir UZ Core Condition tarkibida bo'lishi kerak bo'lgan elementlar (Must Have)

Ushbu profil o'ziga xos majburiy karraliliklarni qo'shmaydi. Majburiy elementlar asosiy resursdan meros qilib olinadi: klinik status (1..1) va `subject` - klinik holat qayd etilgan Patient.

#### Har bir UZ Core Condition qo'llab-quvvatlashi kerak bo'lgan elementlar (Must Support)



- DHP klinik statuslar ValueSet iga bog'langan klinik status (active, recurrence, remission, resolved va boshqalar);
- tasdiqlanganlik statusi (provisional, confirmed, refuted, entered-in-error va boshqalar);
- og'irlik darajasi (preferred bog'lanish; agar `code` SNOMED Disability tushunchasiga mos kelsa, nogironlik tasnifi majburiy);
- klinik holatning o'zini identifikatsiya qiluvchi `code` (ICD-10 yoki SNOMED CT; DHP klinik holatlar ValueSet iga preferred bog'lanish);
- `diagnosisType` extensioni - masalan, asosiy tashxis yoki yo'llanma bergan tashkilot tashxisi (0..1);
- `bodySite` elementidagi anatomik joylashuv;
- `subject` va klinik holat qayd etilgan Encounter;
- `onset[x]` orqali boshlanish vaqti, `abatement[x]` orqali tugash yoki bartaraf bo'lish vaqti, shuningdek `recordedDate`;
- `participant` (0..*) - klinik holatni qayd etgan ishtirokchi va uning funksiyasi;
- erkin matn ko'rinishidagi izohlar.

> `verificationStatus` majburiy emas, biroq u majburiy `clinicalStatus` bilan birgalikda holat keyingi ko'rinishlarda faol va tasdiqlangan muammo sifatida aks ettirilishini belgilaydi. Ma'lumot ma'lum bo'lsa, ikkala element ham to'ldirilishi kerak.

### JSON ni bosqichma-bosqich shakllantirish

Quyidagi misollar server qabul qiladigan eng kichik instansiyadan to'liq kodlangan tashxisgacha bo'lgan jarayonni ko'rsatadi. Mos misolni nusxalab, ehtiyojga qarab moslashtiring: keltirilgan barcha qiymatlar ushbu profil bo'yicha validatsiyadan o'tadi. To'liq etalon instansiyalar sahifaning pastki qismidagi havolalarda mavjud ([bosh og'rig'i](Condition-example-headache.html), [saraton](Condition-example-cancer.html), [nogironlik](Condition-example-disability.html)).

#### Yuborilishi kerak bo'lgan eng kichik Condition

Condition resursining majburiy elementlari - `subject` (klinik holati qayd etilgan [Patient](StructureDefinition-uz-core-patient.html)) va `clinicalStatus` (ikkalasining karraliligi 1..1). Condition faqat qanday holat qayd etilganini ko'rsatuvchi `code` mavjud bo'lgandagina amaliy ahamiyatga ega. Har bir UZ Core resursi server qaysi qoidalar bo'yicha validatsiya qilishini bilishi uchun `meta.profile` elementida mos kelishini bildirgan profilni ham ko'rsatishi kerak. `code` DHP klinik holatlar ValueSet iga bog'langan (ICD-10 yoki SNOMED CT; preferred), `clinicalStatus` `CodeableConcept` turiga ega va DHP klinik statuslar ValueSet iga bog'langan, `subject` esa Patient resursiga oddiy `Reference` hisoblanadi. Quyidagi ma'lumotlar validatsiyadan o'tish uchun yetarli:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" }
}
```

Hozirgi vaqtda ICD-10 va SNOMED CT kodlash tizimlari qo'llanadi; ICD-11 ni qo'llab-quvvatlash rejalashtirilgan. Qaysi tizimdan foydalanish bo'yicha tavsiyalar [Terminologiya](general-guidance.html#terminology) bo'limida keltirilgan.

#### Haqiqiy tashxis yozuvi

Amalda platforma qo'llab-quvvatlanishini kutadigan klinik kontekst yuboriladi: `clinicalStatus` va `verificationStatus` (ular birgalikda holat faol va tasdiqlangan muammo sifatida ko'rsatilishini belgilaydi), boshlanish sanasi (`onsetDateTime`) va qayd etilgan sana (`recordedDate`). `note` elementidagi erkin matn tibbiyot xodimining klinik tavsifini o'z ichiga oladi:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "verificationStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status", "code": "confirmed", "display": "Confirmed" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" },
  "onsetDateTime": "2025-07-25",
  "recordedDate": "2025-07-29",
  "note": [
    { "text": "Patient reported a mild migraine lasting two days; advised rest, hydration, and analgesia." }
  ]
}
```

`clinicalStatus` (active, recurrence, remission, resolved va boshqalar) va `verificationStatus` (provisional, confirmed, refuted, entered-in-error va boshqalar) tegishli DHP ValueSet lariga bog'langan. Qiymatlar shu bog'lanishlardan tanlanishi kerak; to'liq ro'yxat quyidagi Snapshot ko'rinishida keltirilgan.

#### Og'irlik darajasi, anatomik joylashuv, tashxis turi va holatni qayd etgan ishtirokchini qo'shish

To'liqroq resurs Condition ni tasniflaydigan va ma'lumot manbasini ko'rsatadigan Must Support elementlarini o'z ichiga oladi: `severity` (SNOMED, preferred), `bodySite` (SNOMED), `diagnosisType` extensioni (asosiy tashxis, yo'llanma bergan tashkilot tashxisi va boshqalar) hamda holatni kim qayd etganini ko'rsatuvchi `participant`. `participant.actor` [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), Patient, RelatedPerson yoki Device resursiga oddiy `Reference` hisoblanadi:

```json
{
  "resourceType": "Condition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs",
            "code": "gencl-0001-00003",
            "display": "Main diagnosis"
          }
        ]
      }
    }
  ],
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active",
        "display": "Active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed",
        "display": "Confirmed"
      }
    ]
  },
  "severity": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "255604002", "display": "Mild" } ]
  },
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "254837009",
        "display": "Malignant neoplasm of breast"
      }
    ]
  },
  "bodySite": [
    {
      "coding": [
        { "system": "http://snomed.info/sct", "code": "76752008", "display": "Breast structure" }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-emma" },
  "onsetDateTime": "2025-08-15",
  "recordedDate": "2025-09-01",
  "participant": [
    {
      "actor": { "reference": "Practitioner/example-practitioner" },
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code": "author",
            "display": "Author"
          }
        ]
      }
    }
  ]
}
```

`diagnosisType` extensioni o'z URL manziliga (`https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type`) va DHP `diagnosis-type-cs` tizimidan olingan kodlangan qiymatga ega. `bodySite` `CodeableConcept` ro'yxati hisoblanadi. `participant` 0..* karralilikka ega: har bir actor va uning `function` elementi.

#### Nogironlik tasnifi

Agar `code` SNOMED *Disability* tushunchasiga (`21134002`) mos kelsa, profil `severity` qiymatini DHP nogironlik ValueSet idan tanlashni talab qiladi; bu holatda oddiy SNOMED og'irlik shkalasi qo'llanmaydi. `severity` elementida nogironlik guruhi yuborilishi kerak:

```json
{
  "resourceType": "Condition",
  "language": "uz",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed"
      }
    ]
  },
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "21134002", "display": "Disability" }
    ]
  },
  "severity": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/disability-cs",
        "code": "regis0011.00001",
        "display": "I guruh"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "onsetDateTime": "2020-03-10",
  "recordedDate": "2025-09-17"
}
```

To'liq instansiya [nogironlik misolida](Condition-example-disability.html) keltirilgan. Boshqa har qanday klinik holat uchun `severity` yuqorida ko'rsatilganidek SNOMED ning preferred shkalasiga (masalan, Mild) bog'langan holda qoladi.

API chaqiruvlari misollari va foydali yuklama namunasi ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limida keltirilgan.
