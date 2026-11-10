> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

Flag hali [DHP CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da e'lon qilinmagan. Avval server qo'llab-quvvatlashini tekshiring. Bu yerda qidiruvni qo'llab-quvvatlash tasdiqlanmaydi.

**Server id bo'yicha o'qish**

```http
GET [base]/Flag/[id]
```

**Yaratish**

```http
POST [base]/Flag
Content-Type: application/fhir+json
```

**Versiyani nazorat qilib yangilash**

```http
PUT [base]/Flag/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

So'rov tanasi uchun [ruxsat JSON](Flag-example-donation-eligible-flag.json.html) yoki [chetlatish JSON](Flag-example-donation-deferred-flag.json.html) dan foydalaning. Namuna havolalarini haqiqiy id lar bilan almashtiring. Yangilashda serverdagi joriy versiyani `If-Match` da yuboring.

### Bog'liq bo'limlar

- [Patient](StructureDefinition-uz-core-patient.html)
- [Encounter](StructureDefinition-uz-core-encounter.html)
- [API](api-access.html)
