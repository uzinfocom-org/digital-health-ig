> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` identifikator tizimini uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Dorini server id bo'yicha o'qish**

```
GET [base]/Medication/[id]
```

**Ro'yxatdan o'tkazishdan oldin dorini topish (odatdagi birinchi qadam)**

```
# by national identifier - any of the five identifier slices
GET [base]/Medication?identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/gtin|04780123456789
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/marking|010478012345678921AbC9xQ
GET [base]/Medication?identifier=https://uzpharminfo.uz/icps|02804001001000000

# by code - INN (substance) or ATC (classification)
GET [base]/Medication?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?code=http://www.whocc.no/atc|A06AH03
```

**Boshqa foydali qidiruvlar**

```
GET [base]/Medication?lot-number=LOT20241201
GET [base]/Medication?expiration-date=le2026-12-31
GET [base]/Medication?status=active&form=https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs|TAB101
GET [base]/Medication?ingredient-code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?marketingauthorizationholder=Organization/[id]
```

**Yangi dorini ro'yxatdan o'tkazish** (faqat mos keladigan yozuv yo'qligini tasdiqlagandan keyin)

```
POST [base]/Medication
{
  "resourceType": "Medication",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication" ] },
  "identifier": [ { "use": "official", "system": "https://uzpharminfo.uz/registration_number", "value": "..." } ],
  "code": { ... },
  "status": "active",
  ...
}
```

**Mavjud dorini yangilash** (masalan, ro'yxatga olish muddati tugaganda `status` ni `inactive` ga o'rnatish yoki yangi seriyani yozib qo'yish)

```
PUT [base]/Medication/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Medication",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication" ] },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html)ga, dori identifikator tizimi URI manzillari uchun esa yuqoridagi [identifikator slayslari](#identifier-slices) jadvaliga qarang.

### Aloqador

- [Elektron retsept va dori berish](workflow-prescription.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
