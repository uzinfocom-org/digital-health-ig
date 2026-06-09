> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` token tizimini uning qiymatidan ajratadi va `%7C` ko'rinishida URL-kodlangan bo'lishi kerak. Ushbu o'zaro ta'sirlar standart FHIR R5 qidiruv parametrlaridan foydalanadi; ushbu resurs uchun yakunlanayotgani sayin [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

**Jadvalni server identifikatori bo'yicha o'qish**

```
GET [base]/PlanDefinition/[id]
```

**Foydali qidiruvlar**

```
# the active national schedule
GET [base]/PlanDefinition?status=active

# by machine name, title, or version
GET [base]/PlanDefinition?name=NationalImmunizationSchedule
GET [base]/PlanDefinition?title=National%20Immunization%20Schedule
GET [base]/PlanDefinition?version=1.0.0

# by publication date, jurisdiction, or use-context value
GET [base]/PlanDefinition?date=ge2026-01-01
GET [base]/PlanDefinition?jurisdiction=urn:iso:std:iso:3166%7CUZ
GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct%7C14189004
```

**Jadval yaratish**

```
POST [base]/PlanDefinition
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition" ] },
  ...
}
```

Faollashtirishdan oldin jadval validatsiyadan o'tishini (doza-ketma-ketligida bo'shliqlar yo'qligi, imkonsiz vaqt oynalari yo'qligi) va shu doiraga oid boshqa hech qanday versiya allaqachon faol emasligini tasdiqlang.

**Jadvalni yangilash** (masalan, yangi versiyani chiqarish yoki eskisini iste'moldan chiqarish)

```
PUT [base]/PlanDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "PlanDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition" ] },
  ...
}
```

### Aloqador

- [Immunizatsiya ish jarayoni](workflow-immunization.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
