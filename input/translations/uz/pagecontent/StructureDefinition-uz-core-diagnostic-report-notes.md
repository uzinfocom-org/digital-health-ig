> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Hisobotni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/DiagnosticReport/[id]
GET [base]/DiagnosticReport/[id]/_history
```

**Qidiruv**

```
GET [base]/DiagnosticReport?identifier=https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id%7CDR-2026-0001
GET [base]/DiagnosticReport?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs%7Clab-rep-01
GET [base]/DiagnosticReport?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/v2-0074%7CHM
GET [base]/DiagnosticReport?patient=Patient/[id]&status=final&date=ge2026-01-01
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/DiagnosticReport?encounter=Encounter/[id]
GET [base]/DiagnosticReport?specimen=Specimen/[id]
GET [base]/DiagnosticReport?performer=Organization/[id]&issued=ge2026-02-01
```

**Hisobot yaratish**

```
POST [base]/DiagnosticReport
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report" ] },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "preliminary",
  "code": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "..." } ] },
  "subject": { "reference": "Patient/[id]" },
  "result": [ { "reference": "Observation/[id]" } ],
  ...
}
```

Hisobotni uning Observation lari (va yangi bo'lsa, Specimen) bilan birga bitta tranzaksiya Bundle ida yuboring, shunda ular atomar tarzda yetib keladi - [Bundle'lar](general-guidance.html#bundles-document-vs-transaction-vs-searchset) bo'limiga qarang.

**Mavjud hisobotni yangilash** (masalan, barcha natijalar kelgach `status` ni `final` ga yoki tuzatishdan keyin `amended` ga o'rnatish)

```
PUT [base]/DiagnosticReport/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "DiagnosticReport",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report" ] },
  "status": "final",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#DiagnosticReport1-6) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [Laboratoriya tekshiruvini tayinlashdan natijani olishgacha](workflow-lab.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
