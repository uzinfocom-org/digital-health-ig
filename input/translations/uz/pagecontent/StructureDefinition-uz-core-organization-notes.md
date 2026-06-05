> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` identifikator tizimini uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Tashkilotni server id bo'yicha o'qish**

```
GET [base]/Organization/[id]
```

**Ro'yxatdan o'tkazishdan oldin tashkilotni topish (odatdagi birinchi qadam)**

```
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
GET [base]/Organization?name=onkologiya&active=true
GET [base]/Organization?type=https://terminology.dhp.uz/fhir/core/CodeSystem/organization-types-uz-cs|I&address-city=22070022
```

**Bosh tashkilotning quyi bo'linmalarini topish**

```
GET [base]/Organization?partof=Organization/[id]
```

**Yangi tashkilotni ro'yxatdan o'tkazish** (faqat mos keladigan yozuv yo'qligini tasdiqlagandan keyin)

```
POST [base]/Organization
{
  "resourceType": "Organization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  ...
}
```

**Mavjud tashkilotni yangilash**

```
PUT [base]/Organization/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Organization",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html)ga, tashkilot identifikator tizimi URI manzillari uchun esa [Identifikator tizimlari](identifiers.html)ga qarang.

### Aloqador

- [Identifikator tizimlari](identifiers.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
