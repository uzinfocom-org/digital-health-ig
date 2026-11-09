> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Vazifani server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/Task/[id]
GET [base]/Task/[id]/_history
```

**Qidiruv**

```
GET [base]/Task?focus=ServiceRequest/[id]
GET [base]/Task?based-on=ServiceRequest/[id]&status=requested,in-progress,on-hold
GET [base]/Task?patient=Patient/[id]
GET [base]/Task?owner=Organization/[id]&status=requested
GET [base]/Task?code=https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs%7Capprove-regional-commission
GET [base]/Task?business-status=https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs%7Coverdue
GET [base]/Task?period=ge2026-03-01
GET [base]/Task?modified=ge2026-03-01
```

**Vazifani uning yo'llanmasi bilan birga olish**

```
GET [base]/Task?_id=[id]&_include=Task:focus
```

**Vazifa yaratish**

```
POST [base]/Task
{
  "resourceType": "Task",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task" ] },
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs", "code": "approve-family-doctor" }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "requested",
  "intent": "order",
  "focus": { "reference": "ServiceRequest/[id]" },
  "for": { "reference": "Patient/[id]" },
  "owner": { "reference": "Organization/[id]" },
  ...
}
```

**Mavjud vazifani yangilash** (masalan, bosqich tasdiqlanganda `status` ni `completed` ga va `businessStatus` ni `confirmed` ga o'rnatish)

```
PUT [base]/Task/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Task",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task" ] },
  "status": "completed",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html) &middot; [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Yo'llanma ish jarayoni](workflow-referral.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
