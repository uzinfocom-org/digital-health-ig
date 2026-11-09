> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core MedicationDispense dori vositasi berilganini qayd etadi: dorixona tayinlangan dorini bemorga yoki uni olayotgan shaxsga beradi yoki shifoxona dorixonasi bo'limdagi bemor uchun dori beradi. Resurs qaysi [Medication](StructureDefinition-uz-core-medication.html) qancha miqdorda, qaysi [Patient](StructureDefinition-uz-core-patient.html) uchun berilganini, kim tayyorlagani va topshirganini, kim qabul qilganini va qachonligini ko'rsatadi. Berish o'zi bajaradigan retseptga - [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) ga - `authorizingPrescription` da havola qiladi. Bu bog'lanish Davlat tibbiy sug'urta jamg'armasiga [Elektron retsept va dori vositasini berish](workflow-prescription.html) jarayonida tavsiflanganidek, tayinlangan narsani berilgan narsa bilan solishtirish imkonini beradi. Ushbu profildan dorini berish uchun foydalaning; bemorga doza kiritilganda [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) ni qayd eting.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core MedicationDispense quyidagilarga ega bo'lishi shart

Ushbu profil majburiy elementlar qo'shmaydi, lekin bazaviy MedicationDispense resursi uchtasini talab qiladi: `status`, `medication` va `subject`. Har bir `performer` o'z `actor` ini ko'rsatishi shart.

#### Har bir UZ Core MedicationDispense quyidagilarni qo'llab-quvvatlashi shart

- berish raqami (`identifier`);
- berish holati `status` (preparation / in-progress / cancelled / on-hold / completed / entered-in-error / stopped / declined / unknown), bajarilmaganlik sababi (`notPerformedReason`) va holat oxirgi marta o'zgargan vaqt (`statusChanged`);
- toifa `category`: dori qayerda ishlatiladi (inpatient / outpatient / community);
- dori vositasi `medication` - [UZ Core Medication](StructureDefinition-uz-core-medication.html) ga havola yoki ATC yoki INN kodi;
- bemor (`subject`);
- dorini kim bergani (`performer.actor`), masalan farmatsevt va dorixona;
- berish bajaradigan retsept (`authorizingPrescription`);
- berilgan miqdor `quantity`, uning `value`, `unit`, `system` va `code` i bilan;
- berish qachon qayd etilgani (`recorded`), tayyorlangani (`whenPrepared`) va topshirilgani (`whenHandedOver`);
- dorini kim yoki qayer qabul qilgani (`receiver`).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik yaroqli berishdan rad etilgan berishgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [parasetamolni ambulator berish](MedicationDispense-example-medication-dispense-outpatient.html) va [amoksitsillinni berish](MedicationDispense-example-medication-dispense.html).

#### Yuborishingiz kerak bo'lgan eng kichik MedicationDispense

Har bir UZ Core resursi o'z profilini `meta.profile` da ko'rsatadi - server shu orqali qaysi qoidalar bo'yicha validatsiya qilishni biladi. Bundan tashqari, bazaviy resurs `status`, `medication` va `subject` ni talab qiladi. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`medication` - bu `CodeableReference`: [UZ Core Medication](StructureDefinition-uz-core-medication.html) ga havola `reference` ostida (oddiy `Reference` dan bir daraja chuqurroqda), kod esa `concept` ostida joylashadi. [Havolalar va CodeableReference lar](how-to-read.html#references-and-codeablereferences)ga qarang. `status` HL7 kodlaridan foydalanadi. Ularning inglizcha ko'rsatiladigan nomlari bazaviy kod tizimidan, o'zbekcha va ruscha nomlari esa DHP qo'shimchasidan olinadi, shuning uchun `display` ni yozmasangiz ham bo'ladi.

#### Dorixonada retsept bo'yicha dori berish

Farmatsevt retseptdagi QR-kodni skanerlaydi, [MedicationRequest](MedicationRequest-example-medication-request.html) ni oladi va bemorga unda tayinlangan o'nta parasetamol tabletkasini beradi. `authorizingPrescription` retseptga havola qiladi, `performer` farmatsevt va dorixonani ko'rsatadi, uchta vaqt belgisi esa dori qachon tayyorlangani, topshirilgani va qayd etilganini qayd qiladi:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "identifier": [ { "value": "MD-2026-00002" } ],
  "status": "completed",
  "category": [
    { "coding": [ { "system": "http://hl7.org/fhir/medicationdispense-admin-location", "code": "outpatient" } ] }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "performer": [
    { "actor": { "reference": "Practitioner/example-practitioner" } },
    { "actor": { "reference": "Organization/tashkent-diseases-hospital" } }
  ],
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ],
  "quantity": {
    "value": 10,
    "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "recorded": "2026-03-02T11:05:00+05:00",
  "whenPrepared": "2026-03-02T10:50:00+05:00",
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  "receiver": [ { "reference": "Patient/example-salim" } ]
}
```

`quantity.code` [umumiy hajm birliklariga](ValueSet-medication-total-volume-units-vs.html) majburiy (required) bog'langan: massa va hajm uchun UCUM, `piece` kabi sanaladigan birliklar uchun esa mahalliy birliklar kod tizimi. Faqat inson o'qiydigan `unit` ni emas, har doim `system` va `code` ni yuboring ([Birliklar va miqdorlar](general-guidance.html#units-and-quantities)ga qarang). Dorixona retsept bo'yicha dorini qismlarga bo'lib berishi mumkin: har bir qism berilgan miqdor uchun `completed` holatidagi alohida berish bo'ladi, retsept esa butun miqdor berilmaguncha `active` bo'lib qoladi.

#### Qarindosh oladigan dori

Dorini retseptda trustee sifatida ko'rsatilgan qarindosh olganda, `receiver` shu [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) ga havola qiladi. Bu yerda dori katalogga havola bilan emas, kod bilan berilgan:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "language": "en",
  "status": "completed",
  "medication": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
          "code": "005325",
          "display": "paracetamol"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" },
  "performer": [ { "actor": { "reference": "Organization/tashkent-diseases-hospital" } } ],
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ],
  "quantity": {
    "value": 10,
    "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  "receiver": [ { "reference": "RelatedPerson/example-related-person" } ]
}
```

`medication.concept` [dori vositalari tasnifi](ValueSet-medication-classification-vs.html) qiymatlar to'plamiga majburiy (required) bog'langan: INN kodi ta'sir qiluvchi moddani nomlaydi, ATC kodi (`http://www.whocc.no/atc`) uni JSST tasnifiga joylashtiradi. `display` resursning `language` iga mos kelishi shart. `receiver` shuningdek Practitioner, PractitionerRole, masalan dorini uyga yetkazib beruvchi patronaj hamshirasi, yoki dori yetkazilgan Location bo'lishi mumkin.

#### Amalga oshmagan berish

Dorixona tayinlangan dorini bera olmasa, berishni `status` = `declined`, sababini `notPerformedReason` da va vaqtini `statusChanged` da ko'rsatib qayd eting:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "status": "declined",
  "statusChanged": "2026-03-02T11:00:00+05:00",
  "notPerformedReason": {
    "concept": {
      "coding": [
        { "system": "http://hl7.org/fhir/CodeSystem/medicationdispense-status-reason", "code": "outofstock" }
      ]
    }
  },
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ]
}
```

`notPerformedReason` - bu `CodeableReference`: kodlangan sabab `concept` ga, DetectedIssue ga havola, masalan xavfsizlik tekshiruvi aniqlagan dorilar o'zaro ta'siri, esa `reference` ga yoziladi. Retsept `active` bo'lib qoladi, shuning uchun bemor dorini boshqa joydan olishi mumkin.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
