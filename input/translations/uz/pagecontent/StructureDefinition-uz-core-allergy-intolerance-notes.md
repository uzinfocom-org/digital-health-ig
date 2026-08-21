### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API (Application Programming Interface - dasturiy interfeys) amallari. So'rovlar uchun JWT (JSON Web Token - JSON veb-tokeni) kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va URL ichida `%7C` ko'rinishida kodlanishi kerak.

**Server identifikatori bo'yicha olish**

```
GET [base]/AllergyIntolerance/[id]
```

**Allergiya va o'zlashtira olmaslik holatlarini qidirish**

```
GET [base]/AllergyIntolerance?patient=Patient/[id]
GET [base]/AllergyIntolerance?patient=Patient/[id]&clinical-status=active
GET [base]/AllergyIntolerance?patient=Patient/[id]&category=medication
GET [base]/AllergyIntolerance?patient=Patient/[id]&criticality=high
GET [base]/AllergyIntolerance?patient=Patient/[id]&verification-status=confirmed
GET [base]/AllergyIntolerance?patient=Patient/[id]&code=http://snomed.info/sct%7C256277009
```

**Yaratish**

```
POST [base]/AllergyIntolerance
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance" ]
  },
  "clinicalStatus": { ... },
  "verificationStatus": { ... },
  "type": { "coding": [ { "code": "allergy" } ] },
  "category": [ "environment" ],
  "code": { ... },
  "patient": { "reference": "Patient/[id]" }
}
```

**Yangilash** (masalan, `resolved` deb belgilash yoki ilgari `unconfirmed` bo'lgan allergiyani tasdiqlash): resursning to'liq nusxasini yangi status bilan PUT orqali qayta yuboring:

```
PUT [base]/AllergyIntolerance/[id]
If-Match: W/"3"   # oxirgi o'qishdagi ETag; o'shandan beri resurs o'zgargan bo'lsa, 412 qaytariladi
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Bog'liq materiallar

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
