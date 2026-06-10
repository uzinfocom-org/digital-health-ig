> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini uning qiymatidan ajratadi va `%7C` sifatida URL-kodlangan bo'lishi kerak.

**Tibbiy xizmatni server identifikatori bo'yicha o'qish**

```
GET [base]/HealthcareService/[id]
```

**Xizmatlarni topish - yo'naltirish marshrutlash uchun yoki laboratoriya tahlillari katalogi sifatida**

```
GET [base]/HealthcareService?organization=Organization/[id]&active=true
GET [base]/HealthcareService?location=Location/[id]
GET [base]/HealthcareService?service-category=[category-code]&service-type=[type-code]
GET [base]/HealthcareService?specialty=[specialty-code]
```

**Yangi tibbiy xizmat yaratish**

```
POST [base]/HealthcareService
{
  "resourceType": "HealthcareService",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice" ]
  },
  ...
}
```

**Mavjud tibbiy xizmatni yangilash**

```
PUT [base]/HealthcareService/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "HealthcareService",
  "id": "[id]",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice" ]
  },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Aloqador

- [Laboratoriya buyurtmasidan natijagacha](workflow-lab.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
