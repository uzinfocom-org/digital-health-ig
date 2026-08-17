UZ Core AuditEvent - DHP (Digital Health Platform - Raqamli sog'liqni saqlash platformasi)da kim qaysi ma'lumotlarga kirgani yoki nimani o'zgartirganini qayd etuvchi o'zgartirib bo'lmaydigan audit jurnali. Profil IHE ATNA / DICOM audit modeliga asoslanadi: platforma ma'lumotlarni o'qish, yaratish, yangilash, o'chirish va qidirish, tizimga kirish hamda favqulodda kirish (break-glass) hodisalarini qayd etadi, qidiruv asosida bajarilgan so'rovni saqlaydi va muvaffaqiyatsiz yoki rad etilgan kirishlarni (HTTP 401 / 403) belgilaydi. AuditEvent resurslari platforma tomonidan yaratiladi va mijozlar uchun faqat o'qish rejimida mavjud; ular ma'lumotlari hodisaga aloqador bo'lgan [Patient](StructureDefinition-uz-core-patient.html) resursiga reference beradi.

### Majburiy ma'lumot elementlari va Must Support elementlari

Quyida keltirilgan elementlar doimo mavjud bo'lishi (mandatory) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](must-support.html)) kerak. Ularning barchasi majburiy emas, biroq tizim tegishli ma'lumot mavjud bo'lsa, har bir Must Support elementini to'ldirishi va qabul qilganda qayta ishlashi kerak. Bu inson o'qishi uchun mo'ljallangan qisqacha tavsif; aniq karralilik, turlar va terminologik bog'lanishlar quyidagi [formal ko'rinishlarda](#profile) berilgan.

#### Har bir UZ Core AuditEvent quyidagilarga ega bo'lishi kerak (Must Have)

Ushbu profil yuqori darajaga o'zining majburiy karralilik talablarini qo'shmaydi. Majburiy elementlar bazaviy resursdan meros qilib olinadi: `code` (nima sodir bo'lgani), `recorded` vaqt belgisi, `who` elementi mavjud bo'lgan kamida bitta `agent`, shuningdek `observer` elementi mavjud bo'lgan `source`. `dhpCategory` kategoriya slice ishlatilganda, undagi `system` (DICOM `dcm`) va `code` elementlarining har biri 1..1 karralilikka ega.

#### Har bir UZ Core AuditEvent quyidagilarni qo'llab-quvvatlashi kerak (Must Support)



- kategoriya - DICOM tizimidagi `dhpCategory` slice kodlashiga ega hodisalar guruhi (uning `code` elementi uchun majburiy bog'lanish);
- `code` - hodisaning muayyan quyi turi (majburiy bog'lanish);
- `action` - yaratish, o'qish, yangilash, o'chirish yoki amalni bajarish (majburiy bog'lanish);
- `occurredDateTime` va `recorded` vaqt belgisi;
- `outcome`, uning `code` elementi majburiy natija bog'lanishidan foydalanadi (muvaffaqiyatli bajarilish yoki HTTP 401 / 403 bilan kirish rad etilgandagi xato);
- ma'lumotlari hodisaga aloqador bo'lgan `patient`;
- `type`, `role`, `who` va `authorization` elementlariga ega `agent` (`authorization` - ma'lumotlardan foydalanish maqsadi, majburiy bog'lanish); `who` PractitionerRole, Practitioner, Patient yoki RelatedPerson resursiga ko'rsatishi mumkin;
- `role`, `what`, `securityLabel` va `query` elementlariga ega `entity` (qo'llanilganda base64 formatida kodlangan qidiruv so'rovi).

> Favqulodda kirish (break-glass) `agent.authorization` elementida favqulodda ma'lumotlardan foydalanish maqsadi ko'rsatilgan AuditEvent sifatida qayd etiladi.

### JSONni bosqichma-bosqich shakllantirish

AuditEvent resurslari mijozlar tomonidan emas, platforma tomonidan yaratiladi, shuning uchun odatda ularni o'qish talab etiladi; biroq ularning tuzilishini tushunish muhim. Quyidagi misollarda mustaqil hodisa va bemor ma'lumotlariga ta'sir qilgan hodisa ko'rsatilgan. Keltirilgan barcha qiymatlar ushbu profil bo'yicha validatsiyadan o'tadi. To'liq etalon nusxalar sahifaning pastki qismida berilgan ([tizimga kirish](AuditEvent-example-auditevent-login.html), [Condition qidiruvi](AuditEvent-example-auditevent-condition-lookup.html)).

#### Namunaviy hodisa (tizimga kirish)

Mustaqil hodisada nima sodir bo'lgani (`code`), uning guruhi (`category`), bajarilgan amal (`action`, `E` = execute), amal qachon bajarilgani (`occurredDateTime`) va qachon qayd etilgani (`recorded`), `outcome.code`, amalni bajargan `agent` hamda hodisani qayd etgan `source` ko'rsatiladi. `agent.who` oddiy `Reference` bo'lib, PractitionerRole, Practitioner, Patient yoki RelatedPerson resursiga ko'rsatishi mumkin:

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

`category`, `code`, `action`, `outcome.code` va `agent` kodlashlari (type, role, authorization) majburiy bog'lanishlardan foydalanadi: qiymat tegishli ValueSet tarkibidan tanlanishi kerak (har bir bog'lanish quyidagi Snapshot ko'rinishida keltirilgan). `agent.authorization` ma'lumotlardan foydalanish maqsadini ko'rsatadi (bu yerda `TREAT`); favqulodda kirish (break-glass) uchun esa favqulodda foydalanish maqsadi ko'rsatiladi.

#### Bemor ma'lumotlariga ta'sir qilgan hodisa

Hodisa muayyan bemor yozuvini o'qish yoki o'zgartirish bilan bog'liq bo'lsa, tegishli `patient` va ta'sir ko'rsatilgan resursni tavsiflovchi `entity` qo'shiladi. Ushbu misolda Practitioner [Condition](StructureDefinition-uz-core-condition.html) resursini qidirgan: `action` qiymati `R` (read), `code` FHIR `search` o'zaro ta'siriga mos keladi, `entity.what` esa qaytarilgan resursga reference beradi. `patient` va `entity.what` oddiy `Reference` turiga ega:

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

Qidiruv bajarilganda platforma so'rovning o'zini ham `entity.query` elementida base64 formatida kodlab saqlaydi. Muvaffaqiyatsiz yoki rad etilgan kirish (HTTP 401 / 403) xuddi shu tarzda, biroq `outcome.code` elementidagi xato kodi bilan qayd etiladi.

API chaqiruvlari misollari va namuna payload ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limida keltirilgan.
