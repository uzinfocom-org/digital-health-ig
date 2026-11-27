> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` identifikator tizimini uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Namunani server id si bo'yicha o'qish**

```
GET [base]/Substance/[id]
```

**Namunani topish**

```
# by sample identifier - the reliable match
GET [base]/Substance?identifier=https://dhp.uz/fhir/core/sid/prd/uz/substance-sample|NMN-2026-000123

# by batch number
GET [base]/Substance?identifier=https://dhp.uz/fhir/core/sid/prd/uz/substance-lot|SER-2611-15

# by national code, by SNOMED CT code - which also finds the narrower national names -
# or by the SubstanceDefinition entry
GET [base]/Substance?code=https://terminology.dhp.uz/fhir/core/CodeSystem/substance-names-cs|sbnam-0008-00013
GET [base]/Substance?code=http://snomed.info/sct|3718001
GET [base]/Substance?code-reference=SubstanceDefinition/[id]
```

**Boshqa foydali qidiruvlar**

```
GET [base]/Substance?category=http://snomed.info/sct|255620007&status=active
GET [base]/Substance?expiry=lt2027-01-01
```

**Yangi namunani yaratish**

```
POST [base]/Substance
{
  "resourceType": "Substance",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance" ] },
  "instance": true,
  "status": "active",
  "code": { "reference": { "reference": "SubstanceDefinition/[id]" } },
  ...
}
```

**Mavjud namunani yangilash** - to'liq resursni o'zgargan elementlar bilan PUT orqali qayta yuboring:

```
PUT [base]/Substance/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Substance",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance" ] },
  ...
}
```

Xato ro'yxatga olingan yoki olish dalolatnomasi bekor qilingan namuna o'chirilmaydi: uning `status` ini `entered-in-error` ga o'rnating.

Substance hali [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'rsatilmagan; yuqoridagi qidiruvlarda FHIR R5 ning standart qidiruv parametrlari ishlatiladi.

### Aloqador

- [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
