UZ Core Encounter Raqamli sog'liqni saqlash platformasida bemor va sog'liqni saqlash tizimi o'rtasidagi bitta o'zaro aloqani - tashrifni - ifodalaydi. U bemorning tibbiy yordam olish jarayonida markaziy o'rin tutadi: [Observation](StructureDefinition-uz-core-observation.html), [Procedure](StructureDefinition-uz-core-procedure.html), [Condition](StructureDefinition-uz-core-condition.html), MedicationRequest va klinik hujjatlar o'zlari tegishli bo'lgan Encounter ga reference beradi. Unda tashrif qayerda o'tkazilgani, kim tomonidan xizmat ko'rsatilgani va tashrif davomida belgilangan tashxislar (har biri [Condition](StructureDefinition-uz-core-condition.html) ga reference beradi) qayd etiladi; shuningdek, u [EpisodeOfCare](StructureDefinition-uz-core-episode-of-care.html) doirasida guruhlanishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (mandatory) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](must-support.html)) kerak. Ularning barchasi majburiy emas, biroq tizimingiz ma'lumotga ega bo'lsa, har bir Must Support elementini to'ldirishi va uni qabul qilganda qayta ishlashi shart. Bu inson o'qishi uchun mo'ljallangan qisqacha tavsif; quyidagi [formal ko'rinishlar](#profile) aniq karralilik, turlar va terminologik bog'lanishlarni ko'rsatadi.

#### Har bir UZ Core Encounter Must Have

Ushbu profilning yagona shartsiz majburiy elementi - bazaviy resursdan required bog'lanish bilan meros olingan `status` (planned \| in-progress \| completed \| cancelled ...). Agar `location` qayd etilsa, undagi location reference - `location.location` (1..1) ham majburiy, chunki joyning o'zi ko'rsatilmasdan location yozuvini kiritib bo'lmaydi.

#### Har bir UZ Core Encounter Must Support



- `identifier` (0..1);
- `status`, `class`, `priority` va `type` (har biri required bog'lanishga ega);
- HealthcareService ga reference beruvchi `serviceType`;
- `subject` (bemor) va `subjectStatus` (required bog'lanish);
- `episodeOfCare`, `basedOn`, `careTeam` va `partOf` orqali bog'lanishlar;
- `serviceProvider` sifatidagi Organization;
- `actor`, `type` (extensible bog'lanish) va `period` ko'rsatilgan `participant` yozuvlari;
- Encounter ni rejalashtirgan `appointment`;
- `reason` - `use` (preferred bog'lanish) hamda [Condition](StructureDefinition-uz-core-condition.html), DiagnosticReport, Procedure yoki Observation ga reference beruvchi `value`;
- `virtualService` (telemeditsina) tafsilotlari;
- `actualPeriod`, `plannedStartDate`, `plannedEndDate` va `length`;
- har birida `condition` ([Condition](StructureDefinition-uz-core-condition.html) ga reference) va `use` mavjud bo'lgan `diagnosis` ro'yxati;
- hisob-kitob uchun `account`;
- `admission` tafsilotlari - `origin`, `admitSource`, `reAdmission`, `destination`, `dischargeDisposition` (har bir kodlangan qiymat required bog'lanishga ega);
- Encounter o'tkaziladigan location.

> Agar period tugash vaqti boshlanish vaqtidan oldin bo'lsa, Encounter ni `completed` holatiga o'tkazib bo'lmaydi - tashrifni yakunlashdan oldin `actualPeriod` ni tekshiring.

### JSON ni bosqichma-bosqich shakllantirish

Quyidagi misollarda bitta tashrif - shoshilinch statsionar Encounter - minimal tarkibdan to'liq admission yozuvigacha bosqichma-bosqich shakllantiriladi. To'liq nusxa [Encounter namunasi](Encounter-example-encounter.html) orqali berilgan. Kerakli bosqichdan nusxa olib moslashtiring; ko'rsatilgan barcha qiymatlar ushbu profil bo'yicha validatsiyadan o'tadi.

#### Yuborilishi kerak bo'lgan eng kichik Encounter

`status` yagona qat'iy majburiy element hisoblanadi, biroq Encounter amaliy jihatdan `class` (o'zaro aloqa shakli - statsionar, ambulator yoki shoshilinch) va tegishli `subject` ko'rsatilgandagina mazmunli bo'ladi. E'tibor bering, `class` ro'yxat ko'rinishidagi `CodeableConcept` hisoblanadi:

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "class": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "IMP", "display": "Inpatient encounter" }] }
  ],
  "subject": { "reference": "Patient/example-patient" }
}
```

`status`, `class`, `priority`, `type` va `subjectStatus` ning har biri required bog'lanishdan foydalanadi - qiymat bog'langan ValueSet dan olinishi kerak (quyidagi Snapshot ko'rinishida har biri keltirilgan).

#### Amaliy tashrif namunasi

Tashrif qachon bo'lganini (`actualPeriod`), qanday xizmat ko'rsatilganini (`type`), tashrif davridagi bemor holatini (`subjectStatus`), kim ishtirok etganini (`participant`, uning `actor` elementi [Practitioner](StructureDefinition-uz-core-practitioner.html) yoki [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) ga reference beradi) va tashrif sababini (`reason` - Condition, DiagnosticReport, Procedure yoki Observation ga reference beradi) ko'rsating:

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] },
  "status": "completed",
  "class": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "IMP",
          "display": "Inpatient encounter"
        }
      ]
    }
  ],
  "priority": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code": "EM",
        "display": "Emergency"
      }
    ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs",
          "code": "mserv-0001-00004",
          "display": "Treatment services"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-patient" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00001",
        "display": "Awake"
      }
    ]
  },
  "actualPeriod": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" },
  "participant": [
    {
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "ATND",
              "display": "attender"
            }
          ]
        }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" },
      "period": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-cs",
              "code": "mserv-0002-00001",
              "display": "Disease"
            }
          ]
        }
      ],
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ]
}
```

#### Tashxis, qabul qilish va joylashuv

Gospitalizatsiya uchun `diagnosis` ro'yxatini (har bir `condition` - `CodeableReference` orqali [Condition](StructureDefinition-uz-core-condition.html) ga reference), `admission` tafsilotlarini (qabul manbasi, qayta gospitalizatsiya belgisi va chiqarish holati - barchasi required bog'lanishga ega) hamda xizmat ko'rsatilgan joyni qo'shing. Agar `location` yozuvi kiritilsa, aniq joy ko'rsatilishi shart - `location.location` majburiy:

```json
{
  "diagnosis": [
    { "condition": [ { "reference": { "reference": "Condition/example-headache" } } ] }
  ],
  "admission": {
    "admitSource": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/admit-source",
          "code": "psych",
          "display": "From psychiatric hospital"
        }
      ]
    },
    "reAdmission": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0092",
          "code": "R",
          "display": "Re-admission"
        }
      ]
    },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
          "code": "home",
          "display": "Home"
        }
      ]
    }
  },
  "location": [
    { "location": { "reference": "Location/example-location" }, "status": "completed" }
  ]
}
```

Ushbu kalitlar yuqoridagi amaliy tashrif bilan bir xil resurs tarkibiga qo'shiladi. Tashrifni uzoqroq davolash jarayoni doirasida guruhlash uchun [EpisodeOfCare](StructureDefinition-uz-core-episode-of-care.html) ga `episodeOfCare` orqali reference bering.

API chaqiruvlari va namuna payload uchun sahifaning quyi qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
