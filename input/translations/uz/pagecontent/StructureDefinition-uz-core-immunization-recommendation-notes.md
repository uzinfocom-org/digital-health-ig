> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` token tizimini uning qiymatidan ajratadi va URL kodlashda `%7C` sifatida ko'rsatilishi kerak. Ushbu o'zaro ta'sirlar standart FHIR R5 qidiruv parametrlaridan foydalanadi; ushbu resurs uchun yakunlanishiga qarab [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

**Tavsiyani server identifikatori bo'yicha o'qish**

```
GET [base]/ImmunizationRecommendation/[id]
```

**Foydali qidiruvlar**

```
# the current forecast for a patient
GET [base]/ImmunizationRecommendation?patient=Patient/[id]

# most recent forecast first
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# what a patient is due for, by status, target disease or vaccine type
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&status=due
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&target-disease=http://snomed.info/sct%7C14189004
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&vaccine-type=http://hl7.org/fhir/sid/cvx%7C03
```

**Tavsiya yaratish**

```
POST [base]/ImmunizationRecommendation
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"
    ]
  },
  ...
}
```

Ushbu resurs odatda qo'lda yaratilmaydi, balki tavsiya berish dvigateli tomonidan amaldagi jadval va bemorning emlash tarixi asosida shakllantiriladi.

**Tavsiyani yangilash** (yangi tarix kelib tushgan sari dvigatel prognozni almashtiradi)

```
PUT [base]/ImmunizationRecommendation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ImmunizationRecommendation",
  "id": "[id]",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"
    ]
  },
  ...
}
```

### Aloqador materiallar

- [Emlash ish jarayoni](workflow-immunization.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
