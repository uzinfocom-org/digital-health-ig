> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Composition ni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/Composition/[id]
GET [base]/Composition/[id]/_history
```

**Qidiruv**

```
GET [base]/Composition?patient=Patient/[id]
GET [base]/Composition?patient=Patient/[id]&type=https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs%7Cemdoc-0010-0003
GET [base]/Composition?patient=Patient/[id]&category=https://terminology.dhp.uz/fhir/core/CodeSystem/composition-category-cs%7CComp-001-0001
GET [base]/Composition?patient=Patient/[id]&status=final&date=ge2026-01-01
GET [base]/Composition?author=PractitionerRole/[id]
GET [base]/Composition?encounter=Encounter/[id]
GET [base]/Composition?entry=Condition/[id]
GET [base]/Composition?section=http://loinc.org%7C48765-2
GET [base]/Composition?patient=Patient/[id]&_include=Composition:entry
```

Oxirgi so'rov Composition larni ularning bo'limlari havola qiladigan resurslar bilan birga qaytaradi.

**Composition yaratish**

```
POST [base]/Composition
{
  "resourceType": "Composition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition" ] },
  "language": "uz",
  "status": "preliminary",
  "type": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs", "code": "..." } ] },
  "subject": [ { "reference": "Patient/[id]" } ],
  "date": "...",
  "author": [ { "reference": "PractitionerRole/[id]" } ],
  "title": "...",
  "section": [ ... ]
}
```

**Mavjud Composition ni yangilash** (masalan, hujjat tugallangach `status` ni `final` ga yoki o'zgartirishdan keyin `amended` ga o'rnatish)

```
PUT [base]/Composition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Composition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition" ] },
  "status": "final",
  ...
}
```

Har bir o'zgarishda `date` ni yangilang. Yakuniy hujjatlarni yig'ish va imzolash [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/) da tavsiflangan.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Ish jarayonlari](workflows.html) &middot; [Bundle'lar: document, transaction va searchset](general-guidance.html#bundles-document-vs-transaction-vs-searchset)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
