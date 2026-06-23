> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core AuditEvent - bu Raqamli sog'liqni saqlash platformasida kim nimaga kirgani yoki nimani o'zgartirgani haqidagi o'zgarmas audit jurnali. U IHE ATNA / DICOM audit modeliga amal qiladi: platforma o'qishlar, yaratishlar, yangilashlar, o'chirishlar, qidiruvlar, tizimga kirishlar va favqulodda kirish (break-glass) hodisalarini qayd etadi, qidiruv ortidagi so'rovni yozib oladi hamda muvaffaqiyatsiz yoki rad etilgan kirishni (HTTP 401 / 403) belgilab qo'yadi. AuditEvent yozuvlari platforma tomonidan yoziladi va mijozlar uchun faqat o'qish uchun mo'ljallangan; ular ma'lumotlari jalb qilingan [Patient](StructureDefinition-uz-core-patient.html) bilan bog'lanadi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - hammasi talab qilinmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va uni qabul qilganda qayta ishlashi kerak. Bu inson o'qishi uchun mo'ljallangan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core AuditEvent quyidagilarga ega bo'lishi shart

Ushbu profil o'zining hech qanday yuqori darajadagi majburiy kardinalligini qo'shmaydi. Talab qilinadigan elementlar bazaviy resursdan meros qilib olinganlardir: kod (nima sodir bo'lgani), qayd etilgan vaqt belgisi, who bilan kamida bitta agent va observer bilan source. dhpCategory kategoriya slaysi ichida, mavjud bo'lganda, system (DICOM dcm) va code har biri 1..1 hisoblanadi.

#### Har bir UZ Core AuditEvent quyidagilarni qo'llab-quvvatlashi kerak



- category - hodisa guruhlanishi, DICOM dan slaylangan dhpCategory coding bilan (uning kodida required bog'lanish);
- code - aniq hodisa kichik turi (required bog'lanish);
- action - create, read, update, delete yoki execute (required bog'lanish);
- occurredDateTime va recorded vaqt belgisi;
- outcome, uning code i required outcome bog'lanishidan foydalanadi (success yoki rad etilgan 401 / 403 kirish uchun muvaffaqiyatsizlik);
- ma'lumotlari jalb qilingan bemor;
- agent, uning type, role, who va authorization (purpose-of-use, required bog'lanish) bilan - `who` PractitionerRole, Practitioner, Patient yoki RelatedPerson bo'lishi mumkin;
- entity, uning role, what, securityLabel va query (base64 ga kodlangan qidiruv, qo'llanadigan joyda) bilan.

> Favqulodda kirish (break-glass) bu yerda `agent.authorization` favqulodda purpose-of-use ni olib yuradigan AuditEvent sifatida qayd etiladi.

### JSON ni qadam-baqadam qurish

AuditEvent yozuvlari mijozlar tomonidan emas, platforma tomonidan yoziladi, shuning uchun siz asosan ularni o'qiysiz - lekin ularning shaklini bilish foydali. Quyidagi misollar mustaqil hodisani, so'ngra bemorning ma'lumotlariga tegadigan hodisani ko'rsatadi. Ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq mos namuna nusxalari sahifaning pastki qismida bog'langan ([login](AuditEvent-example-auditevent-login.html), [holatni qidirish](AuditEvent-example-auditevent-condition-lookup.html)).

#### Vakil bo'lgan hodisa (tizimga kirish)

Mustaqil hodisa nima sodir bo'lganini (`code`), uning guruhlanishini (`category`), `action` ni (E = execute), qachon `occurredDateTime` va `recorded` bo'lganini, `outcome.code` ni, uni bajargan `agent` ni va uni qayd etgan `source` ni nomlaydi. `agent.who` oddiy `Reference` bo'lib, PractitionerRole, Practitioner, Patient yoki RelatedPerson ga ko'rsatishi mumkin:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-auditevent" ] },
  "category": [
    {
      "coding": [
        {
          "system": "http://dicom.nema.org/resources/ontology/DCM",
          "code": "110114",
          "display": "User Authentication"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://dicom.nema.org/resources/ontology/DCM",
        "code": "110122",
        "display": "Login"
      }
    ]
  },
  "action": "E",
  "occurredDateTime": "2023-11-09T15:23:47.123Z",
  "recorded": "2023-11-09T15:23:47.123Z",
  "outcome": { "code": { "system": "http://hl7.org/fhir/issue-severity", "code": "success" } },
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
            "code": "humanuser"
          }
        ]
      },
      "role": [
        {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sample-security-structural-roles",
              "code": "regulated-health-professionals"
            }
          ]
        }
      ],
      "authorization": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }
          ]
        }
      ],
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "source": {
    "observer": { "display": "Uzbekistan Digital Health Platform" },
    "type": [
      {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code": "4",
            "display": "Application Server"
          }
        ]
      }
    ]
  }
}
```

`category`, `code`, `action`, `outcome.code` va `agent` coding lari (type, role, authorization) har biri required bog'lanishdan foydalanadi - qiymat bog'langan value set dan kelishi kerak (quyidagi Snapshot ko'rinishi har birini sanab o'tadi). `agent.authorization` bu purpose-of-use (bu yerda `TREAT`); favqulodda kirish (break-glass) buning o'rniga favqulodda purpose-of-use ni olib yuradi.

#### Bemor ma'lumotlariga tegadigan hodisa

Hodisa muayyan bemorning yozuvini o'qigan yoki o'zgartirgan bo'lsa, u tegishli bo'lgan `patient` ni va tegilgan resursni tavsiflovchi `entity` ni qo'shing. Bu yerda shifokor [Condition](StructureDefinition-uz-core-condition.html) ni qidirdi: `action` bu `R` (read), `code` bu FHIR `search` o'zaro ta'siri va `entity.what` qaytarilgan resursga havola qiladi. `patient` ham, `entity.what` ham oddiy `Reference` turlari hisoblanadi:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-auditevent" ] },
  "category": [
    {
      "coding": [
        {
          "system": "http://dicom.nema.org/resources/ontology/DCM",
          "code": "110112",
          "display": "Query"
        }
      ]
    }
  ],
  "code": {
    "coding": [ { "system": "http://hl7.org/fhir/restful-interaction", "code": "search" } ]
  },
  "action": "R",
  "occurredDateTime": "2025-02-15T14:02:52Z",
  "recorded": "2025-02-15T14:02:52Z",
  "outcome": { "code": { "system": "http://hl7.org/fhir/issue-severity", "code": "success" } },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
            "code": "humanuser"
          }
        ]
      },
      "role": [
        {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sample-security-structural-roles",
              "code": "regulated-health-professionals"
            }
          ]
        }
      ],
      "authorization": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }
          ]
        }
      ],
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "entity": [
    {
      "role": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/object-role",
            "code": "4",
            "display": "Domain Resource"
          }
        ]
      },
      "securityLabel": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "NOAUTH" }
          ]
        }
      ],
      "what": { "reference": "Condition/example-headache" }
    }
  ],
  "source": {
    "observer": { "display": "Uzbekistan Digital Health Platform" },
    "type": [
      {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code": "4",
            "display": "Application Server"
          }
        ]
      }
    ]
  }
}
```

Qidiruv uchun platforma so'rovning o'zini ham (base64 ga kodlangan) `entity.query` da qayd etadi. Muvaffaqiyatsiz yoki rad etilgan kirish (HTTP 401 / 403) xuddi shu tarzda, lekin muvaffaqiyatsizlik `outcome.code` bilan qayd etiladi.

API chaqiruvlari va namunaviy yuk (payload) misollari uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
