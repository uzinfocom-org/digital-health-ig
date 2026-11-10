> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Ta'rifni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/ObservationDefinition/[id]
GET [base]/ObservationDefinition/[id]/_history
```

**Qidiruv**

```
GET [base]/ObservationDefinition?code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-74
GET [base]/ObservationDefinition?identifier=[system]%7C[value]
GET [base]/ObservationDefinition?url=[canonical-url]
GET [base]/ObservationDefinition?category=laboratory&status=active
GET [base]/ObservationDefinition?method=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-methods-cs%7Clab-method-6
GET [base]/ObservationDefinition?title=Gemoglobin
GET [base]/ObservationDefinition?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition
```

Oxirgi so'rov faqat laboratoriya ta'riflarini qaytaradi, chunki ularning har biri ushbu profilni e'lon qiladi.

**Ta'rif yaratish**

```
POST [base]/ObservationDefinition
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition" ] },
  "url": "[canonical-url]",
  "status": "draft",
  "useContext": [ { "code": { ... "focus" }, "valueCodeableConcept": { ... "108252007" } } ],
  "code": { "coding": [ { "system": "http://loinc.org", "code": "..." } ] },
  ...
}
```

**Mavjud ta'rifni yangilash** (masalan, tekshirilgandan keyin `status` ni `active` ga yoki tekshiruv bekor qilinganda `retired` ga o'rnatish)

```
PUT [base]/ObservationDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ObservationDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition" ] },
  "status": "active",
  ...
}
```

Yangilashda `url` ni o'zgartirmang: HealthcareService yozuvlari ta'rifga u orqali havola qiladi.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [Laboratoriya tekshiruvini tayinlashdan natijani olishgacha](workflow-lab.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
