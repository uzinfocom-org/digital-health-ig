> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi kod tizimini uning qiymatidan ajratadi va URL kodlashda `%7C` ko'rinishida yozilishi shart.

**Amaliyotchi rolini server identifikatori bo'yicha o'qish**

```
GET [base]/PractitionerRole/[id]
```

**Amaliyotchi egallab turgan rollarni yoki tashkilotda kim ishlashini topish**

```
GET [base]/PractitionerRole?practitioner=Practitioner/[id]&active=true
GET [base]/PractitionerRole?organization=Organization/[id]
GET [base]/PractitionerRole?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs|394585009
GET [base]/PractitionerRole?role=https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs|2212.14&location=Location/[id]
```

**Yangi amaliyotchi rolini yaratish**

```
POST [base]/PractitionerRole
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ]
  },
  ...
}
```

**Mavjud amaliyotchi rolini yangilash**

```
PUT [base]/PractitionerRole/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "PractitionerRole",
  "id": "[id]",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ]
  },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Tegishli

- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
