> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` identifikator tizimini uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Yozuvni server id si bo'yicha o'qish**

```
GET [base]/SubstanceDefinition/[id]
```

**Yaratishdan oldin yozuvni topish (odatiy birinchi qadam)**

```
# by reference list number - the reliable match
GET [base]/SubstanceDefinition?identifier=https://dhp.uz/fhir/core/sid/doc/uz/substance-definition|1368

# by national code, or by SNOMED CT code - which also finds the narrower national names
GET [base]/SubstanceDefinition?code=https://terminology.dhp.uz/fhir/core/CodeSystem/substance-names-cs|sbnam-0008-00013
GET [base]/SubstanceDefinition?code=http://snomed.info/sct|3718001
```

**Boshqa foydali qidiruvlar**

```
GET [base]/SubstanceDefinition?name=Sigir
GET [base]/SubstanceDefinition?classification=http://snomed.info/sct|255620007
```

**Yangi yozuvni yaratish** (faqat yozuv yo'qligiga ishonch hosil qilgandan keyin)

```
POST [base]/SubstanceDefinition
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition" ] },
  "code": [ { "code": { "coding": [ { "system": "...", "code": "..." } ] } } ],
  "name": [ { "name": "...", "preferred": true } ],
  ...
}
```

**Mavjud yozuvni yangilash** (masalan, yozuv ma'lumotnomada tahrirlandi) - to'liq resursni o'zgargan elementlar va oshirilgan `version` bilan PUT orqali qayta yuboring:

```
PUT [base]/SubstanceDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SubstanceDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition" ] },
  ...
}
```

Ma'lumotnomadan o'chirilgan yozuv o'chirilmaydi: uning `status` ini `retired` ga o'rnating.

SubstanceDefinition hali [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da ko'rsatilmagan; yuqoridagi qidiruvlarda FHIR R5 ning standart qidiruv parametrlari ishlatiladi.

### Aloqador

- [UZ Core Substance](StructureDefinition-uz-core-substance.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
