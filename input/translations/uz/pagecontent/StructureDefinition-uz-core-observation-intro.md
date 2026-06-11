> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Observation Raqamli sog'liqni saqlash platformasida bemor haqidagi o'lchov yoki topilmani ifodalaydi - laboratoriya natijalari, hayotiy ko'rsatkichlar va boshqa klinik kuzatuvlar - LOINC bilan kodlangan (SNOMED CT ham ruxsat etiladi). Laboratoriya Observation uni hosil qilgan buyurtmaga (ServiceRequest, CarePlan yoki MedicationRequest) va u o'lchangan [Specimen](StructureDefinition-uz-core-specimen.html) ga qaytib bog'lanadi. Shuningdek [Hayotiy ko'rsatkichlar](vital-signs.html) ga qarang.

### Majburiy va Must Support ma'lumotlar elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi ham talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Observation quyidagilarga ega bo'lishi shart

Ushbu profil o'zining hech qanday majburiy kardinalligini qo'shmaydi. Talab qilinadigan elementlar bazaviy resursdan keladi: holat (registered \| preliminary \| final \| amended ...) va nima kuzatilganini aniqlovchi kod.

#### Har bir UZ Core Observation quyidagilarni qo'llab-quvvatlashi shart



- identifikator, instantiates[x] (rioya qilingan ta'rif) va basedOn (0..1 - boshlang'ich ServiceRequest, CarePlan yoki MedicationRequest);
- triggeredBy (ushbu kuzatuvni keltirib chiqargan kuzatuv, uning sababi bilan) va partOf (muolaja, immunizatsiya, tasvirlash tadqiqoti yoki dori voqeasi);
- holat (required bog'lanish) va kategoriya (vital-signs, laboratory ...);
- kod (preferred LOINC / SNOMED bog'lanish) va subyekt (odatda bemor);
- e'tibor markazi (focus) va kuzatuv tegishli bo'lgan uchrashuv (encounter);
- effective[x] vaqti va issued lahzasi;
- ijrochi (performer) (tibbiyot xodimi, rol yoki tashkilot);
- natija value[x], yoki qiymat bo'lmaganda dataAbsentReason;
- erkin matnli izoh;
- o'lchangan specimen va ishlatilgan qurilma;
- referenceRange (low, high, normalValue, age, text);
- tegishli kuzatuvlar yoki javoblarga hasMember va derivedFrom havolalari;
- komponent qismlari, har biri o'z kodi va value[x] ga ega.

> Qismlari bir effektiv vaqt va subyektni baham ko'radigan panellar uchun `component` dan foydalaning (masalan, bitta qon bosimi Observation da sistolik + diastolik); alohida natijalangan Observation larni panel ostida guruhlash uchun `hasMember` dan foydalaning.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar yagona raqamli natijadan ko'p qismli panelgacha boradi. Birini nusxalab oling va moslang - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq mos yozuvlar nusxalari sahifaning pastida havola qilingan (masalan, [kislorod saturatsiyasi](Observation-oxygen-saturation-example.html), [qon bosimi](Observation-blood-pressure-example.html), [CBC paneli](Observation-cbc-panel-example.html)).

#### Yagona miqdoriy natija

Observation har doim nima o'lchanganini bildiruvchi `status` va `code` ga muhtoj. Amalda siz ko'proq narsa yuborasiz: uni guruhlovchi `category`, u nima haqida ekanligi `subject`, qachon olingani (`effective[x]`) va natija `value[x]` da. Raqamli natija UCUM birligini olib yuruvchi `valueQuantity` dir - faqat inson o'qiy oladigan `unit` ni emas, har doim mashina o'qiy oladigan `system` va `code` ni ham kiriting:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [ { "system": "http://loinc.org", "code": "8310-5", "display": "Body temperature" } ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "valueQuantity": {
    "value": 36.5,
    "unit": "C",
    "system": "http://unitsofmeasure.org",
    "code": "Cel"
  }
}
```

`code` LOINC/SNOMED (preferred) ga bog'langan va *nima* kuzatilganini bildiradi; `category` (`vital-signs`, `laboratory`, ...) turlarini bir-biridan ajratadi. Standart hayotiy ko'rsatkich kodlari uchun [Hayotiy ko'rsatkichlar](vital-signs.html) ga va UCUM qoidalari uchun [Birliklar va miqdorlar](general-guidance.html#units-and-quantities) ga qarang.

#### Talqin va mos yozuvlar diapazonini qo'shish

Normal diapazonga ega natija uchun `referenceRange` ni yuboring va qiymatni `interpretation` (normal / high / low / critical) bilan belgilang:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "2708-6",
        "display": "Oxygen saturation in Arterial blood"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "valueQuantity": { "value": 95, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
  "interpretation": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code": "N",
          "display": "Normal"
        }
      ]
    }
  ],
  "referenceRange": [
    {
      "low": { "value": 90, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
      "high": { "value": 99, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

#### Komponentli panel (masalan, qon bosimi)

Bir necha o'lchov bir vaqt va subyektni baham ko'rganda - sistolik va diastolik, yoki bitta laboratoriya panelining analitlari - har bir qismni `component` ga joylashtiring va asosiy `value[x]` ni bo'sh qoldiring. Asosiy `code` panelni nomlaydi:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://loinc.org", "code": "85354-9", "display": "Blood pressure panel" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "component": [
    {
      "code": {
        "coding": [
          { "system": "http://loinc.org", "code": "8480-6", "display": "Systolic blood pressure" }
        ]
      },
      "valueQuantity": {
        "value": 120,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    },
    {
      "code": {
        "coding": [
          { "system": "http://loinc.org", "code": "8462-4", "display": "Diastolic blood pressure" }
        ]
      },
      "valueQuantity": {
        "value": 80,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    }
  ]
}
```

`component` dan faqat qismlar bir effektiv vaqt va subyektni baham ko'rganda foydalaning. Alohida natijalangan Observation larni (har biri o'z resursi) panel ostida guruhlash uchun esa `hasMember` dan foydalaning.

#### Natija bo'lmaganda

Agar test bajarilgan, lekin hech qanday qiymat bermagan bo'lsa (namuna yaroqsiz, bemor rad etgan), `value[x]` ni jimgina tushirib qoldirmang - uning o'rniga `dataAbsentReason` ni yuboring. Observation da bu kodlangan `CodeableConcept`, Patient identifikatorlarida ishlatiladigan `_value` kengaytmasi emas:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "2708-6",
        "display": "Oxygen saturation in Arterial blood"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "dataAbsentReason": {
    "coding": [
      { "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason", "code": "unknown" }
    ]
  }
}
```

Kislorod saturatsiyasi hayotiy ko'rsatkich hisoblanadi, shuning uchun `vital-signs` `category` qiymatning o'zi yo'q bo'lganda ham talab qilinadi - natijani tushirib qoldirish kategoriyani tushirib qoldirmaydi. To'g'ri yo'qlik mexanizmini tanlash uchun [Yetishmayotgan va bostirilgan ma'lumotlar](general-guidance.html#missing-data) ga qarang.

Misol API chaqiruvlari va namuna yuk ma'lumoti uchun ushbu sahifaning pastidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
