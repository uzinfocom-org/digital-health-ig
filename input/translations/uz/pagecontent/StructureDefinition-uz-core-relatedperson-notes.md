> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi identifikator tizimini uning qiymatidan ajratadi va `%7C` sifatida URL-kodlangan bo'lishi kerak.

**Bog'liq shaxsni server identifikatori bo'yicha o'qish**

```
GET [base]/RelatedPerson/[id]
```

**Bemorga bog'liq shaxslarni topish**

```
GET [base]/RelatedPerson?patient=Patient/[id]
GET [base]/RelatedPerson?patient=Patient/[id]&relationship=PRN
GET [base]/RelatedPerson?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|12345678901234
GET [base]/RelatedPerson?name=Zafarov
```

**Yangi bog'liq shaxs yaratish**

```
POST [base]/RelatedPerson
{
  "resourceType": "RelatedPerson",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  "patient": { "reference": "Patient/[id]" },
  ...
}
```

**Mavjud bog'liq shaxsni yangilash**

```
PUT [base]/RelatedPerson/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "RelatedPerson",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga, identifikator tizimi URI manzillari uchun esa [Identifikator tizimlari](identifiers.html) bo'limiga qarang.

### Aloqador materiallar

- [Identifikator tizimlari](identifiers.html)
- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
