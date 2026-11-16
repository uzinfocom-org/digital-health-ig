> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core ChargeItem haq olinadigan pozitsiyani qayd etadi: [bemorga](StructureDefinition-uz-core-patient.html) ko'rsatilgan xizmat, berilgan mahsulot yoki dori, ularning miqdori va narxi bilan. Resurs nima uchun haq olinayotganini ko'rsatadi va hisob yozuvini uni taqdim etgan hodisa bilan bog'laydi, masalan [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html), [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html) yoki [ServiceRequest](StructureDefinition-uz-core-servicerequest.html). Profildagi identifier bo'lagi tibbiy axborot tizimi bergan ChargeItem identifikatorini olib yuradi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (majburiy) yoki tegishli ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](must-support.html)) kerak. Ularning barchasi ham majburiy emas, biroq tizim ma'lumotga ega bo'lsa, har bir Must Support elementini to'ldirishi va uni qabul qilganda qayta ishlashi kerak. Quyida inson o'qishi uchun mo'ljallangan qisqacha tavsif berilgan; pastdagi [formal ko'rinishlarda](#profile) aniq karralilik, turlar va terminologik bog'lanishlar keltirilgan.

#### Har bir UZ Core ChargeItem da bo'lishi kerak

Asosiy ChargeItem resursida `status`, haq olinayotgan xizmatni ifodalovchi `code` va hisob kimga tegishli ekanini ko'rsatuvchi `subject` majburiy.

#### Har bir UZ Core ChargeItem qo'llab-quvvatlashi kerak

- tibbiy axborot tizimi belgilagan tizimga ega `identifier`;
- `status` (planned / billable / not-billable / aborted / billed / entered-in-error / unknown) va haq olinayotgan xizmat yoki mahsulotning `code` i;
- mavjud bo'lsa `subject` va `occurrence[x]`;
- ma'lum bo'lsa, hisob yuzaga kelgan `encounter`;
- `performer` va `performingOrganization`;
- `quantity` va `totalPriceComponent`;
- hisob tegishli bo'lgan `service`, masalan dori berish, muolaja yoki tahlil.

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollarda minimal ChargeItem va identifikator, miqdor, narx hamda dori berish yozuvi kiritilgan dori berish uchun hisob yozuvi ko'rsatiladi. Har bir misolda profil `meta.profile` ichida berilgan.

#### Eng kichik ChargeItem

Minimal ChargeItem da holat, nima uchun haq olinayotganining kodi va bemor ko'rsatiladi. Bu yerda hisob yozuvi `billable` holatida, ya'ni hisob-kitobga tayyor, kod esa dori berishni anglatadi:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem"]
  },
  "status": "billable",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "373784005",
      "display": "Dispensing medication"
    }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

#### Dori berish uchun hisob yozuvi

Tibbiy axborot tizimi bergan identifikator, hisob vaqti, miqdor va summa hamda dori berish yozuviga havolani qo'shing. Identifier tizimi profilda belgilangan; qiymatni ko'rsatilgan tizim bilan yuboring:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem"]
  },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/charge-item",
    "value": "CI-2026-0001"
  }],
  "status": "billable",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "373784005",
      "display": "Dispensing medication"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-03-02T11:00:00+05:00",
  "performer": [{
    "actor": { "reference": "Practitioner/example-practitioner" }
  }],
  "performingOrganization": { "reference": "Organization/tashkent-diseases-hospital" },
  "quantity": {
    "value": 10,
    "unit": "dona",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "totalPriceComponent": {
    "type": "base",
    "amount": { "value": 15000, "currency": "UZS" }
  },
  "service": [{
    "reference": { "reference": "MedicationDispense/example-medication-dispense-outpatient" }
  }]
}
```

`service` elementi `CodeableReference` turida: maqsadli havola `reference` ichiga joylanadi. Manba tizimdagi haqiqiy identifikator, vaqt, miqdor, summa va xizmat havolasidan foydalaning. To'liq FSH misoli: [ChargeItem namunasi](ChargeItem-example-charge-item-medication-dispense.html).

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
