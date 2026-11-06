> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core ChargeItem bemorga berilgan dorining haqiqiy qiymatini qayd etadi. Resurs hisob yozuvini bemor va dori berilganini qayd etuvchi MedicationDispense bilan bog'laydi hamda haq olinayotgan xizmatni ko'rsatadi. Profildagi identifier bo'lagi tibbiy axborot tizimi bergan ChargeItem identifikatorini olib yuradi.

### Majburiy va qo'llab-quvvatlanishi kerak bo'lgan (Must Support) ma'lumotlar

Quyidagi elementlar doimo bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)). Must Support belgilanishi elementni o'z-o'zidan majburiy qilmaydi. [Rasmiy profil](#profile) aniq kardinallik, tur va terminologik bog'lanishlarni belgilaydi.

#### Har bir UZ Core ChargeItem da bo'lishi kerak

Asosiy ChargeItem resursida `status`, haq olinayotgan xizmatni ifodalovchi `code` va hisob kimga tegishli ekanini ko'rsatuvchi `subject` majburiy. Ushbu profilda `status` qiymati `billable` qilib belgilangan.

#### Har bir UZ Core ChargeItem qo'llab-quvvatlashi kerak

- tibbiy axborot tizimi belgilagan tizimga ega `identifier`;
- `billable` holati va haq olinayotgan xizmatning `code` i;
- mavjud bo'lsa `subject` va `occurrence[x]`;
- `performer` va `performingOrganization`;
- `quantity` va `totalPriceComponent`;
- hisob tegishli bo'lgan `service`, masalan dori berilganini qayd etgan MedicationDispense.

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollarda minimal ChargeItem va identifikator hamda dori berish tafsilotlari kiritilgan variant ko'rsatiladi. Har bir misolda profil `meta.profile` ichida berilgan.

#### Eng kichik ChargeItem

Minimal ChargeItem da holat, xizmat kodi va bemor ko'rsatiladi. Ushbu profil `billable` holatini belgilaydi, misoldagi kod esa dori berishni anglatadi:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item"]
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
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item"]
  },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/dmed/preferential-referral",
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
  "occurrenceDateTime": "2026-11-06T10:30:00+05:00",
  "quantity": {
    "value": 10,
    "unit": "dona",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "totalPriceComponent": [{
    "type": {
      "coding": [{
        "system": "http://hl7.org/fhir/invoice-price-component-type",
        "code": "base"
      }]
    },
    "amount": { "value": 15000, "currency": "UZS" }
  }],
  "service": {
    "reference": { "reference": "MedicationDispense/example-medication-dispense-outpatient" }
  }
}
```

`service` elementi `CodeableReference` turida: maqsadli havola `reference` ichiga joylanadi. Manba tizimdagi haqiqiy identifikator, vaqt, miqdor, summa va dori berish havolasidan foydalaning. To'liq FSH misoli: [ChargeItem namunasi](ChargeItem-example-charge-item-medication-dispense.html).
