> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Flag [UZ Core bemori](StructureDefinition-uz-core-patient.html) haqida Raqamli sog'liqni saqlash platformasi foydalanuvchilari shu bemor bilan ishlaganda bilishi kerak bo'lgan ogohlantirish yoki xabarni qayd etadi. Hozircha belgi kodi qon donorligiga ruxsatni qamrab oladi: bemor qon donori bo'lishi mumkinmi yoki tibbiy chetlatilganmi. Belgi u qo'yilgan [tashrif](StructureDefinition-uz-core-encounter.html) va muallifga havola berishi mumkin.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Flag quyidagilarga ega bo'lishi shart

Har bir Flag da `status`, belgi nima haqida ekanini ko'rsatuvchi `code` va `subject` (bemor) bo'ladi - uchalasi ham bazaviy FHIR R5 da majburiy.

#### Har bir UZ Core Flag quyidagilarni qo'llab-quvvatlashi shart

- manba tizim bersa, `system` i bilan biznes-`identifier`;
- belgining `status` i (active / inactive / entered-in-error) - u belgi qayd etgan narsani emas, belgining o'zini tavsiflaydi, shuning uchun amaldagi tibbiy chetlatish `active` holatidagi belgidir;
- `code` - belgi nima haqida (qon donorligiga ruxsat / tibbiy chetlatish);
- `subject` - belgi tegishli bo'lgan bemor.

`category` (ma'muriy, klinik va hokazo), belgining amal qilish `period` i, u qo'yilgan [tashrif](StructureDefinition-uz-core-encounter.html) va uning `author` i ([Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Organization](StructureDefinition-uz-core-organization.html), [Device](StructureDefinition-uz-core-device.html), [Patient](StructureDefinition-uz-core-patient.html) yoki [RelatedPerson](StructureDefinition-uz-core-relatedperson.html)) ixtiyoriy; ma'lum bo'lsa, ularni yuboring.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar minimal qon donorligi qaroridan bemorning avvalgi ruxsat belgisiga va uning o'rnini egallagan tibbiy chetlatishga boradi. Har bir misol `meta.profile` da ushbu profilni ko'rsatadi.

#### Yuborish mumkin bo'lgan eng kichik Flag

Minimal Flag holat, qon donorligiga ruxsat qarori va bemorni o'z ichiga oladi. Qaror kodi mahalliy qon donorligiga ruxsat kodlar tizimidan olinadi, shuning uchun uning ko'rinadigan nomi o'zbekcha va resursning `language` qiymati `uz`:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-eligible",
      "display": "Qon donorligiga ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-nodira" }
}
```

#### Avvalgi ruxsat qarori

HL7 belgi toifasini, davrni va muallifni qo'shing. HL7 toifa kodlari asl tizimini saqlaydi. Bu belgi `inactive`: u quyidagi chetlatish qayd etilganda amal qilishni to'xtatgan va `period.end` shu vaqtni saqlaydi. Amaldagi belgida `period.end` bo'sh qoladi:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "inactive",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/flag-category",
      "code": "admin"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-eligible",
      "display": "Qon donorligiga ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": {
    "start": "2026-10-12T10:00:00+05:00",
    "end": "2026-11-09T09:00:00+05:00"
  },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

#### Tibbiy chetlatish

Chetlatish uchun `blood-donation-deferred` kodi ishlatiladi; chetlatish amal qilayotgan paytda belgi `period.end` siz `active` bo'lib qoladi:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/flag-category",
      "code": "clinical"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-deferred",
      "display": "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": { "start": "2026-11-09T09:00:00+05:00" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

To'liq FSH misollari: [minimal belgi](Flag-example-donation-minimal-flag.html), [ruxsat belgisi](Flag-example-donation-eligible-flag.html) va [tibbiy chetlatish belgisi](Flag-example-donation-deferred-flag.html).

API chaqiruvlari misollari uchun ushbu sahifaning pastidagi [Tez boshlash](#quick-start) bo'limiga qarang.
