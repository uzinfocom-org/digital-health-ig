### Tezkor boshlash

Ushbu profil uchun odatiy API amallari. So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` belgisi kodlash tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Server identifikatori bo'yicha olish**

```
GET [base]/Condition/[id]
```

**Tashxis va klinik holatlarni qidirish**

```
GET [base]/Condition?patient=Patient/[id]
GET [base]/Condition?patient=Patient/[id]&category=problem-list-item
GET [base]/Condition?patient=Patient/[id]&clinical-status=active&verification-status=confirmed
GET [base]/Condition?patient=Patient/[id]&code=http://hl7.org/fhir/sid/icd-10%7CG43.9
GET [base]/Condition?encounter=Encounter/[id]
GET [base]/Condition?patient=Patient/[id]&onset-date=ge2025-01-01
GET [base]/Condition?patient=Patient/[id]&recorded-date=ge2025-01-01
```

**Yaratish**

```
POST [base]/Condition
{
  "resourceType": "Condition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "clinicalStatus": { "coding": [ { "code": "active" } ] },
  "code": { ... },
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Yangilash** (masalan, muammoni bartaraf bo'lgan deb belgilash): yangi `clinicalStatus` / `abatement[x]` qiymatlari bilan to'liq resursni PUT orqali yuboring:

```
PUT [base]/Condition/[id]
If-Match: W/"3"   # oxirgi javobdagi ETag; resurs shu vaqtdan beri o'zgargan bo'lsa, 412
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq materiallar

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
