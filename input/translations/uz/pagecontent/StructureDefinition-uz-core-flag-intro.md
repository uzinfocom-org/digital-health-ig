> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Flag [UZ Core bemori](StructureDefinition-uz-core-patient.html) uchun donorlikka ruxsat yoki tibbiy chetlatish qarorini qayd etadi. U [tashrif](StructureDefinition-uz-core-encounter.html) va muallifga havola berishi mumkin. Faol belgi ruxsatni ham, tibbiy chetlatishni ham bildirishi mumkin: status belgining hayotiy siklini ifodalaydi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Flag quyidagilarga ega bo'lishi shart

Holat, donorlik qarori kodi va bemorga havola bazaviy FHIR R5 da majburiy.

#### Har bir UZ Core Flag quyidagilarni qo'llab-quvvatlashi shart

- berilgan bo'lsa, biznes-identifikator va uning tizimi;
- belgining holati;
- donorlikka ruxsat qarori;
- qaror tegishli bo'lgan bemor.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar minimal donorlik qaroridan kontekstli ruxsat belgisigacha va tibbiy chetlatishgacha boradi. Har bir misol `meta.profile` da ushbu profilni ko'rsatadi.

#### Yuborish mumkin bo'lgan eng kichik Flag

Minimal Flag holat, donorlikka ruxsat qarori va bemorni o'z ichiga oladi. Qaror kodi mahalliy donorlikka ruxsat kodlar tizimidan olinadi, shuning uchun uning ko'rinadigan nomi o'zbekcha va resursning `language` qiymati `uz`:

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
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-eligible",
      "display": "Donorlikka ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

#### Kontekstli ruxsat qarori

HL7 belgi toifasini, amal qilish davrini, qaror qabul qilingan tashrifni va uning muallifini qo'shing. HL7 toifa kodlari asl tizimini saqlaydi:

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
      "code": "admin"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-eligible",
      "display": "Donorlikka ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": {
    "start": "2026-11-09T09:00:00+05:00",
    "end": "2026-11-09T18:00:00+05:00"
  },
  "encounter": { "reference": "Encounter/example-encounter" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

#### Tibbiy chetlatish

Chetlatish uchun `donation-deferred` kodi ishlatiladi. Chetlatish amal qilayotgan paytda belgi `active` bo'lib qoladi: holat donorlikka ruxsatni emas, belgining o'zini tavsiflaydi.

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
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-deferred",
      "display": "Tibbiy sabablarga ko‘ra donorlikdan chetlatilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": { "start": "2026-11-09T09:00:00+05:00" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

To'liq FSH misollari: [minimal belgi](Flag-example-donation-minimal-flag.html), [ruxsat belgisi](Flag-example-donation-eligible-flag.html) va [tibbiy chetlatish belgisi](Flag-example-donation-deferred-flag.html).

API chaqiruvlari misollari uchun ushbu sahifaning pastidagi [Tez boshlash](#quick-start) bo'limiga qarang.
