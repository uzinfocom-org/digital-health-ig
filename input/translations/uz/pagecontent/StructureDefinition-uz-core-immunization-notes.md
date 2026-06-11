> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi token tizimini uning qiymatidan ajratadi va URL kodlashda `%7C` ko'rinishida yozilishi shart. Ushbu o'zaro ta'sirlar standart FHIR R5 qidiruv parametrlaridan foydalanadi; ushbu resurs uchun yakunlangan holatda [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

**Immunizatsiyani server identifikatori bo'yicha o'qish**

```
GET [base]/Immunization/[id]
```

**Foydali qidiruvlar**

```
# all immunizations for a patient
GET [base]/Immunization?patient=Patient/[id]

# a patient's vaccination history for one vaccine, most recent first
GET [base]/Immunization?patient=Patient/[id]&vaccine-code=http://hl7.org/fhir/sid/cvx%7C19&_sort=-date

# completed doses only
GET [base]/Immunization?patient=Patient/[id]&status=completed

# by date, lot number, or performer
GET [base]/Immunization?patient=Patient/[id]&date=ge2026-01-01
GET [base]/Immunization?lot-number=LOT-BCG-2026-01
GET [base]/Immunization?performer=Practitioner/[id]
```

**Yangi immunizatsiyani qayd etish**

```
POST [base]/Immunization
{
  "resourceType": "Immunization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  ...
}
```

Yaratishdan oldin, bir xil bemor + vaktsina kodi + sodir bo'lish vaqti + partiya raqami uchun yozuv allaqachon mavjud emasligini tekshiring, shunda doza ikki marta qayd etilmaydi.

**Immunizatsiyani yangilash** (masalan, partiya raqamini to'g'rilash, reaksiya qo'shish yoki yozuvni `entered-in-error` deb belgilash)

```
PUT [base]/Immunization/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Immunization",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  ...
}
```

### Aloqador

- [Immunizatsiya ish jarayoni](workflow-immunization.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
