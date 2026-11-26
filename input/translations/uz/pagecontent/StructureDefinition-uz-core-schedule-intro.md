> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Schedule rejalashtirish ufqida tibbiyot xodimlari, xonalar, uskunalar yoki xizmatlarning mavjudligini ifodalaydi, masalan onlayn yozilish uchun ochilgan umumiy amaliyot shifokori kabinetining jadvali. Jadval bu kimning vaqti ekanini ko'rsatadi - o'zining `actor` i, masalan [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), xona sifatida [UZ Core Location](StructureDefinition-uz-core-location.html), [UZ Core Device](StructureDefinition-uz-core-device.html) yoki [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html). Jadvalning o'zida vaqtlar yo'q: yozilish mumkin bo'lgan, band yoki bloklangan har bir oraliq - bu `Slot.schedule` orqali jadvalga havola qiladigan Slot.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Schedule da bo'lishi shart

Har bir Schedule da kamida bitta `actor` (asosiy FHIR R5 da majburiy) bo'ladi - kimning mavjudligini ifodalashi.

#### Har bir UZ Core Schedule qo'llab-quvvatlashi shart

- `active` - jadval ishlatilayotganmi (endi ishlatilmasa false);
- taklif qilinadigan xizmatlarning keng toifasi `serviceCategory` (masalan, konsultatsiya, diagnostika yoki laboratoriya);
- xizmatlar uchun zarur tibbiy mutaxassislik `specialty` (masalan, umumiy tibbiy amaliyot yoki kardiologiya);
- foydalanuvchilarga ko'rsatiladigan jadval nomi `name`;
- `actor` - bemor, tibbiyot xodimi, tibbiyot xodimi roli, davolash jamoasi, qarindosh, buyum, tibbiy xizmat yoki xona (Location);
- `planningHorizon` - jadval mavjudlikni belgilaydigan davr;
- matnli izoh `comment`.

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollar minimal jadvaldan umumiy amaliyot shifokori kabinetining jadvaliga qadar boradi. Har bir misolda ushbu profil `meta.profile` da ko'rsatilgan.

#### Minimal jadval

Eng kichik yaroqli Schedule o'zining `actor` ini ko'rsatadi, bu yerda - tibbiyot xodimi roli:

```json
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "actor": [{ "reference": "PractitionerRole/example-practitionerrole" }]
}
```

#### Umumiy amaliyot shifokori kabinetining jadvali

Yozilish uchun ochilgan jadval bemorga unda nimaga yozilish mumkinligini aytadi: yozilish uchun xizmat toifalari mahalliy kod tizimidan `serviceCategory` va kasb mutaxassisliklari kod tizimidan `specialty`. Unda bir nechta `actor` bo'lishi mumkin - bu yerda tibbiyot xodimi roli va kabinet. `planningHorizon` jadval qamrab oladigan davrni beradi; uning ichidagi yozilish oraliqlari - Slot. Mahalliy kodlarning ko'rsatiladigan nomlari va `name` o'zbek tilida, shuning uchun resursda `language` `uz` ga teng:

```json
{
  "resourceType": "Schedule",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-schedule"]
  },
  "language": "uz",
  "active": true,
  "serviceCategory": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs",
      "code": "270",
      "display": "Konsultatsiya"
    }]
  }],
  "specialty": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs",
      "code": "408443003",
      "display": "Umumiy tibbiy amaliyot"
    }]
  }],
  "name": "Umumiy amaliyot kabineti jadvali",
  "actor": [
    { "reference": "PractitionerRole/example-practitionerrole" },
    { "reference": "Location/example-location" }
  ],
  "planningHorizon": {
    "start": "2026-11-02T08:00:00+05:00",
    "end": "2026-11-02T18:00:00+05:00"
  },
  "comment": "Oldindan yozilish bo'yicha qabul"
}
```

To'liq FSH misoli: [umumiy amaliyot shifokori kabinetining jadvali](Schedule-example-gp-schedule.html).

API chaqiruvlari misollari sahifa pastidagi [Tezkor boshlash](#quick-start) bo'limida keltirilgan.
