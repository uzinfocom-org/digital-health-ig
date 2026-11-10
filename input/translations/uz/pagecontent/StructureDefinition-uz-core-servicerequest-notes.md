> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**So'rovni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
```

**Qidiruv**

```
GET [base]/ServiceRequest?identifier=https://mis.dmed.uz%7CLAB-2026-004512
GET [base]/ServiceRequest?requisition=https://mis.dmed.uz%7CREQ-2026-001877
GET [base]/ServiceRequest?code-concept=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-E
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/ServiceRequest?patient=Patient/[id]&category=http://snomed.info/sct%7C32485007
GET [base]/ServiceRequest?encounter=Encounter/[id]
GET [base]/ServiceRequest?requester=PractitionerRole/[id]&authored=ge2026-01-01
GET [base]/ServiceRequest?specimen=Specimen/[id]
```

**Yo'llanmani uning kelishuv Task lari bilan yoki buyurtmani natijalari bilan birga olish**

```
GET [base]/ServiceRequest?_id=[id]&_revinclude=Task:focus
GET [base]/ServiceRequest?_id=[id]&_revinclude=DiagnosticReport:based-on
```

**So'rov yaratish**

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [ { "system": "...", "code": "..." } ] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "authoredOn": "2026-01-16T09:10:00+05:00",
  ...
}
```

**Mavjud so'rovni yangilash** (masalan, uni bekor qilish uchun `status` ni `revoked` ga o'rnatish)

```
PUT [base]/ServiceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ServiceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest" ] },
  "status": "revoked",
  ...
}
```

Bajarilgan so'rovni o'zgartirib bo'lmaydi, bekor qilinganini esa bajarib bo'lmaydi. Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [UZ Core Procedure](StructureDefinition-uz-core-procedure.html)
- [Laboratoriya ish jarayoni](workflow-lab.html) &middot; [Yo'llanma ish jarayoni](workflow-referral.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
