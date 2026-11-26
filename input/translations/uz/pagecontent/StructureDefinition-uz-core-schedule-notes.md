> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini koddan ajratadi va URL da `%7C` sifatida kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Schedule/[id]
```

**Jadvallarni qidirish**

```
GET [base]/Schedule?actor=PractitionerRole/[id]&active=true
GET [base]/Schedule?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs%7C408443003
GET [base]/Schedule?service-category=https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs%7C270
GET [base]/Schedule?date=2026-11-02
GET [base]/Schedule?identifier=[system]%7C[value]
```

Birinchi so'rov bitta tibbiyot xodimi rolining ishlatilayotgan jadvallarini topadi; to'rtinchisi rejalashtirish ufqi berilgan kunni qamrab oladigan jadvallarni topadi.

**Yaratish**

```
POST [base]/Schedule
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "active": true,
  "actor": [{ "reference": "PractitionerRole/[id]" }],
  "planningHorizon": {
    "start": "2026-11-02T08:00:00+05:00",
    "end": "2026-11-02T18:00:00+05:00"
  }
}
```

**Yangilash** (masalan, jadvaldan foydalanishni to'xtatish uchun): to'liq resursni `PUT [base]/Schedule/[id]` orqali yuboring, `active` ni `false` ga o'zgartiring va o'qilgan versiyani o'z ichiga olgan `If-Match` sarlavhasini qo'shing, shunda parallel o'zgarish ustidan yozilmaydi.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Schedule1-35) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
