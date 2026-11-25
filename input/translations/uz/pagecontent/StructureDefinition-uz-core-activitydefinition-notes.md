> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Ta'rifni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/ActivityDefinition/[id]
GET [base]/ActivityDefinition/[id]/_history
```

**Ta'rifni kanonik url bo'yicha topish**

```
GET [base]/ActivityDefinition?url=https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition
GET [base]/ActivityDefinition?url=[canonical url]&version=1.0.0
```

**Qidiruv**

```
GET [base]/ActivityDefinition?status=active&kind=ServiceRequest
GET [base]/ActivityDefinition?name=ChildhoodVaccinationActivity
GET [base]/ActivityDefinition?title=Childhood%20Vaccination
GET [base]/ActivityDefinition?publisher=Ministry%20of%20Health
GET [base]/ActivityDefinition?effective=ge2026-01-01
```

**Ta'rifdan foydalanadigan jadvallarni olish**

```
GET [base]/PlanDefinition?definition=https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition
```

**Ta'rif yaratish**

```
POST [base]/ActivityDefinition
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition" ] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/[name]",
  "name": "[Name]",
  "status": "draft",
  "kind": "ServiceRequest",
  ...
}
```

**Mavjud ta'rifni yangilash** (masalan, uni yangiroq versiya almashtirganda `status` ni `retired` ga o'rnatish)

```
PUT [base]/ActivityDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ActivityDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition" ] },
  "status": "retired",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#ActivityDefinition1-18) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html)
- [Immunizatsiya ish jarayoni](workflow-immunization.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
