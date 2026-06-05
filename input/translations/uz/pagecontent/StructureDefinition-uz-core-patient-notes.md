> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi identifikator tizimini uning qiymatidan ajratadi va URL sifatida `%7C` ko'rinishida kodlanishi shart.

**Bemorni server identifikatori bo'yicha o'qish**

```
GET [base]/Patient/[id]
```

**Ro'yxatga olishdan oldin bemorni topish (odatdagi birinchi qadam)**

```
# by national identifier (PINFL) - the reliable match
GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|30211975910033

# by name + birth date when no identifier is to hand
GET [base]/Patient?family=Usmanov&birthdate=1994-01-27

# by name and gender
GET [base]/Patient?name=Salim&gender=male
```

**Yangi bemorni ro'yxatga olish** (faqat mos kelish mavjud emasligini tasdiqlagandan keyin)

```
POST [base]/Patient
{
  "resourceType": "Patient",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient" ] },
  ...
}
```

**Bemorni yangilash** (masalan, demografik ma'lumotlarni tuzatish yoki active bayrog'ini o'zgartirish)

```
PUT [base]/Patient/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

**Boshqa foydali qidiruvlar**

```
GET [base]/Patient?general-practitioner=Practitioner/[id]
GET [base]/Patient?organization=Organization/[id]
GET [base]/Patient?address-city=22070013
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga, barcha bemor identifikatori tizimi URI manzillari uchun esa [Identifikator tizimlari](identifiers.html) bo'limiga qarang.

### Boshqaruvchi tashkilotga biriktirish

Bemor o'zining asosiy yordam ko'rsatish nuqtasi bo'lib xizmat qiladigan birlamchi tibbiy yordam tashkilotiga (poliklinikaga) biriktiriladi. Bu ikkita element bilan qayd etiladi:

1. `Patient.managingOrganization` - bemor biriktirilgan [UZ Core Organization](StructureDefinition-uz-core-organization.html) ga havola.
2. `managingOrganizationAttachment` kengaytmasi - bemor biriktirilgan sana.

Bemor o'zining boshqaruvchi tashkilotini yiliga faqat bir marta o'zgartirishi mumkin; biriktirish sanasi buni ta'minlash uchun ishlatiladi.

```jsonc
{
  "resourceType": "Patient",
  "extension": [{
    "url": "https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment",
    "valueDate": "2024-03-15"    // Date when the patient was attached
  }],
  "managingOrganization": {
    "reference": "Organization/example-organization"
  }
  // ... other patient data
}
```

Bemorning boshqaruvchi tashkilotini yangilashda:

1. Mavjud `managingOrganizationAttachment` sanasini tekshiring.
2. Oxirgi biriktirishdan beri kamida bir yil o'tganligini tasdiqlang.
3. `managingOrganization` va kengaytma sanasini birgalikda yangilang.

### Aloqador materiallar

- [Identifikator tizimlari](identifiers.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
