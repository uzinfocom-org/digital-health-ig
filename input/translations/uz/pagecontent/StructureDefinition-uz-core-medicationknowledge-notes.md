> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` identifikator tizimini uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Server id si bo'yicha o'qish**

```
GET [base]/MedicationKnowledge/[id]
```

**Yaratishdan oldin yozuvni topish (odatiy birinchi qadam)**

```
GET [base]/MedicationKnowledge?identifier=https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge|MK-2026-000123
```

**Boshqa foydali qidiruvlar**

```
GET [base]/MedicationKnowledge?status=active
GET [base]/MedicationKnowledge?source-cost=DTSJ
```

MedicationKnowledge hali [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'rsatilmagan; yuqoridagi qidiruvlar FHIR R5 dagi standart MedicationKnowledge qidiruv parametrlaridir (`identifier`, `status`, `source-cost`).

**Yaratish** (faqat yozuv yo'qligiga ishonch hosil qilgandan keyin)

```
POST [base]/MedicationKnowledge
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge" ] },
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/[id]" } ],
  "cost": [ { "effectiveDate": [ { "start": "..." } ], "type": { ... }, "costMoney": { ... } } ],
  ...
}
```

**Yangilash** (masalan, yangi narx tasdiqlandi yoki mahsulot muomaladan chiqarildi) - to'liq resursni o'zgargan `cost` yozuvlari yoki `status` bilan PUT orqali qayta yuboring:

```
PUT [base]/MedicationKnowledge/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "MedicationKnowledge",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge" ] },
  ...
}
```

Xato yaratilgan yozuv o'chirilmaydi: uning `status` ini `entered-in-error` ga o'rnating.

### Aloqador

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html)
- [Elektron retsept va dori berish](workflow-prescription.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
