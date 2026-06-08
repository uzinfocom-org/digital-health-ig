> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi identifikator tizimini uning qiymatidan ajratadi va URL kodlashda `%7C` ko'rinishida yozilishi shart.

**Amaliyotchini server identifikatori bo'yicha o'qish**

```
GET [base]/Practitioner/[id]
```

**Ro'yxatdan o'tkazishdan oldin amaliyotchini topish (odatdagi birinchi qadam)**

```
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uz/argos|9876543210
GET [base]/Practitioner?family=Karimov&given=Ahmed
GET [base]/Practitioner?qualification-code=DIP&active=true
```

**Yangi amaliyotchini ro'yxatdan o'tkazish** (faqat mos keladigan yozuv yo'qligini tasdiqlagandan keyin)

```
POST [base]/Practitioner
{
  "resourceType": "Practitioner",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  ...
}
```

**Mavjud amaliyotchini yangilash**

```
PUT [base]/Practitioner/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Practitioner",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga, amaliyotchi identifikatori tizimi URI manzillari uchun esa [Identifikator tizimlari](identifiers.html) bo'limiga qarang.

### Tegishli

- [Identifikator tizimlari](identifiers.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
