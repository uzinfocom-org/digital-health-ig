> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi identifikator tizimini uning qiymatidan ajratadi va URL'da `%7C` ko'rinishida kodlanishi shart.

**Joylashuvni server id bo'yicha o'qish**

```
GET [base]/Location/[id]
```

**Joylashuvlarni topish**

```
GET [base]/Location?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
GET [base]/Location?organization=Organization/[id]&status=active
GET [base]/Location?name=onkologiya&address-city=22070022
GET [base]/Location?type=ONCL
```

**Yangi joylashuv yaratish**

```
POST [base]/Location
{
  "resourceType": "Location",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-location" ] },
  ...
}
```

**Mavjud joylashuvni yangilash**

```
PUT [base]/Location/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Location",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-location" ] },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga, identifikator tizimi URI manzillari uchun esa [Identifikator tizimlari](identifiers.html) ga qarang.

### Aloqador

- [Identifikator tizimlari](identifiers.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatma](general-guidance.html)
