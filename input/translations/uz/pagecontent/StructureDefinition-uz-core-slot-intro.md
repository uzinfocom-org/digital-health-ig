> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Slot jadvaldagi qabulga yozilish mumkin bo'lgan yoki allaqachon band yoki bloklangan vaqt oralig'ini ifodalaydi, masalan onlayn yozilish uchun ochilgan umumiy amaliyot shifokorining 30 daqiqalik qabuli. Har bir slot jadvalga (Schedule) tegishli bo'lib, u bu kimning vaqti ekanini ko'rsatadi - masalan [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [UZ Core Location](StructureDefinition-uz-core-location.html) yoki [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html). Qabulga yozuv (Appointment) `Appointment.slot` orqali bir yoki bir nechta slotni egallaydi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Slot da bo'lishi shart

Har bir Slot da u tegishli bo'lgan jadval `schedule`, `status`, shuningdek `start` va `end` bo'ladi (barchasi asosiy FHIR R5 da majburiy). Slot boshlanganidan keyin tugashi shart.

#### Har bir UZ Core Slot qo'llab-quvvatlashi shart

- yozilish mumkin bo'lgan xizmatning keng toifasi `serviceCategory` (masalan, konsultatsiya, diagnostika yoki laboratoriya);
- xizmat uchun zarur tibbiy mutaxassislik `specialty` (masalan, umumiy amaliyot yoki kardiologiya);
- qabul turi `appointmentType` (rejali / oldindan yozilmasdan / profilaktik ko'rik / takroriy / shoshilinch);
- slot tegishli bo'lgan jadval `schedule`;
- `status` (free / busy / busy-unavailable / busy-tentative / entered-in-error);
- slotning vaqt mintaqasi siljishi bilan boshlanishi `start` va tugashi `end`;
- `overbooked` - slotga u ruxsat berganidan ko'proq qabul yozilganmi;
- matnli izoh `comment`.

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollar minimal slotdan yozilish uchun ochiq bo'sh slotga va band qilingan slotga qadar boradi. Har bir misolda ushbu profil `meta.profile` da ko'rsatilgan.

#### Minimal slot

Eng kichik yaroqli Slot da jadval `schedule`, `status`, shuningdek boshlanish va tugash vaqti bo'ladi. `start` va `end` `instant` turida, shuning uchun har doim soniyalar va vaqt mintaqasi siljishini o'z ichiga oladi, O'zbekistonda `+05:00`:

```json
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "schedule": { "reference": "Schedule/example-schedule" },
  "status": "free",
  "start": "2026-11-02T09:00:00+05:00",
  "end": "2026-11-02T09:30:00+05:00"
}
```

#### Yozilish uchun ochiq bo'sh slot

Yozilish uchun taklif qilingan slot bemorga unda nimaga yozilish mumkinligini aytadi: yozilish uchun xizmat toifalari mahalliy kod tizimidan `serviceCategory`, kasb mutaxassisliklari kod tizimidan `specialty` va HL7 v2 qabul turi `appointmentType`. Mahalliy kodlarning ko'rsatiladigan nomlari o'zbek tilida, shuning uchun resursda `language` `uz` ga teng:

```json
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "language": "uz",
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
      "code": "394814009",
      "display": "Umumiy amaliyot"
    }]
  }],
  "appointmentType": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
      "code": "ROUTINE"
    }]
  }],
  "schedule": { "reference": "Schedule/example-schedule" },
  "status": "free",
  "start": "2026-11-02T09:00:00+05:00",
  "end": "2026-11-02T09:30:00+05:00"
}
```

#### Band qilingan slot

Slotga qabul yozilgach, uning `status` i `busy` ga aylanadi. `overbooked` slotga u ruxsat berganidan ko'proq qabul yozilganini ko'rsatadi, `comment` esa slot haqida izohni o'z ichiga oladi:

```json
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "language": "uz",
  "serviceCategory": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs",
      "code": "270",
      "display": "Konsultatsiya"
    }]
  }],
  "appointmentType": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/v2-0276",
      "code": "FOLLOWUP"
    }]
  }],
  "schedule": { "reference": "Schedule/example-schedule" },
  "status": "busy",
  "start": "2026-11-02T09:30:00+05:00",
  "end": "2026-11-02T10:00:00+05:00",
  "overbooked": false,
  "comment": "Oldindan yozilish bo'yicha qabul"
}
```

To'liq FSH misollari: [bo'sh slot](Slot-example-slot-free.html) va [band slot](Slot-example-slot-busy.html), ikkalasi ham [umumiy amaliyot shifokori jadvalida](Schedule-example-schedule.html).

API chaqiruvlari misollari sahifa pastidagi [Tezkor boshlash](#quick-start) bo'limida keltirilgan.
