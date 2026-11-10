> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core MedicationRequest - bu elektron retsept: DMED yoki mahalliy tibbiy axborot tizimida yozilgan, bitta bemor uchun dori vositasini tayinlash. Resurs qaysi [Medication](StructureDefinition-uz-core-medication.html) qaysi [Patient](StructureDefinition-uz-core-patient.html) ga, kim tomonidan va qaysi [Encounter](StructureDefinition-uz-core-encounter.html) davomida tayinlanganini, nima sababdan ([Condition](StructureDefinition-uz-core-condition.html) yoki [Observation](StructureDefinition-uz-core-observation.html)), uni qanday qabul qilish kerakligini, shuningdek dorixona qancha miqdorda va qaysi muddatgacha berishi mumkinligini ko'rsatadi. Chop etilgan retseptda ushbu resursni identifikatsiya qiluvchi QR-kod bo'ladi. Dorixona dorini berganda [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) unga `authorizingPrescription` da, doza kiritilganda [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) `request` da, xarajatni qoplash bo'yicha [Claim](StructureDefinition-uz-core-claim.html) `prescription` da, [CarePlan](StructureDefinition-uz-core-careplan.html) esa `activity.plannedActivityReference` da havola qiladi. [Elektron retsept va dori vositasini berish](workflow-prescription.html) jarayoni ularning o'zaro bog'lanishini ko'rsatadi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core MedicationRequest quyidagilarga ega bo'lishi shart

Ushbu profil majburiy elementlar qo'shmaydi, lekin bazaviy MedicationRequest resursi to'rttasini talab qiladi: `status`, `intent`, `medication` va `subject`.

#### Har bir UZ Core MedicationRequest quyidagilarni qo'llab-quvvatlashi shart

- DMED yoki mahalliy TAT dagi retsept raqami (`identifier`, uning `use`, `type` va `value` i bilan);
- retsept holati `status` (active / on-hold / ended / stopped / completed / cancelled / entered-in-error / draft / unknown), holat sababi `statusReason` va holat oxirgi marta o'zgargan vaqt (`statusChanged`);
- maqsad `intent` (odatda order);
- toifa `category`: dori qayerda qabul qilinadi (inpatient / outpatient / community) yoki xarajati qoplanadigan buyurtma;
- dori vositasi `medication` - [UZ Core Medication](StructureDefinition-uz-core-medication.html) ga havola yoki kod;
- bemor (`subject`) va retsept yozilgan murojaat `encounter`;
- trustee kengaytmasi: bemor nomidan dorini olishga vakolatli qarindosh yoki patronaj hamshirasi;
- retsept qachon yozilgani (`authoredOn`), kim yozgani (`requester`) va ma'lumotni kim bergani (`informationSource`);
- tayinlash sababi (`reason`);
- dozalar qabul qilinadigan davr (`effectiveDosePeriod`);
- sug'urta `insurance`: dori uning hisobidan to'lanadigan qoplama yoki xarajatni qoplash to'g'risidagi qaror;
- dozalash: bemor uchun ko'rsatmalar, qabul qilish tartibi, yuborish yo'li va doza (`dosageInstruction`);
- dorixona nimani berishi mumkin: miqdor `quantity`, retseptning amal qilish muddati va dorixona (`dispenseRequest`);
- farmatsevt yoki bemor uchun erkin shakldagi izohlar (`note`).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik yaroqli retseptdan qarindosh oladigan, xarajati qoplanadigan retseptgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [parasetamolga ambulator retsept](MedicationRequest-example-medication-request.html).

#### Yuborishingiz kerak bo'lgan eng kichik MedicationRequest

Har bir UZ Core resursi o'z profilini `meta.profile` da ko'rsatadi - server shu orqali qaysi qoidalar bo'yicha validatsiya qilishni biladi. Bundan tashqari, bazaviy resurs `status`, `intent`, `medication` va `subject` ni talab qiladi. Shuning o'zi validatsiyadan o'tadi:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "status": "active",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`medication` - bu `CodeableReference`: [UZ Core Medication](StructureDefinition-uz-core-medication.html) ga havola `reference` ostida (oddiy `Reference` dan bir daraja chuqurroqda), dori kodi esa `concept` ostida joylashadi. [Havolalar va CodeableReference lar](how-to-read.html#references-and-codeablereferences)ga qarang. Mahsulot dori vositalari katalogida bo'lsa, dorixona aniq ro'yxatdan o'tgan mahsulotni ko'rishi uchun havoladan foydalaning.

#### Ambulator retsept

Oilaviy shifokor bosh og'rig'i uchun parasetamol 500 mg ni kuniga ikki marta besh kun davomida, jami o'nta tabletka tayinlaydi. Retsept raqami `identifier` ga, ko'rsatma `reason` ga, dozalash `dosageInstruction` ga, dorixona beradigan miqdor esa `dispenseRequest` ga yoziladi:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "PLAC" } ] },
      "value": "12345678"
    }
  ],
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        { "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location", "code": "outpatient" }
      ]
    }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "authoredOn": "2026-03-02T06:44:12+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "reason": [ { "reference": { "reference": "Condition/example-headache" } } ],
  "effectiveDosePeriod": { "start": "2026-03-02", "end": "2026-03-06" },
  "dosageInstruction": [
    {
      "patientInstruction": "Take one tablet at 08:00 and one at 16:00 for five days",
      "timing": {
        "repeat": {
          "boundsPeriod": { "start": "2026-03-02", "end": "2026-03-06" },
          "frequency": 2,
          "period": 1,
          "periodUnit": "d",
          "timeOfDay": ["08:00:00", "16:00:00"]
        }
      },
      "route": { "coding": [ { "system": "http://snomed.info/sct", "code": "26643006", "display": "Oral route" } ] },
      "doseAndRate": [
        { "doseQuantity": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
      ]
    }
  ],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": {
      "value": 10,
      "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece"
    }
  }
}
```

`status`, `intent` va `category` HL7 kodlaridan foydalanadi. Ularning inglizcha ko'rsatiladigan nomlari bazaviy kod tizimlaridan, o'zbekcha va ruscha nomlari esa DHP qo'shimchalaridan olinadi, shuning uchun `display` ni yozmasangiz ham bo'ladi. `reason` ham `CodeableReference`: bemorning Condition i qayd etilgan bo'lsa, unga havola qiling yoki tashxis kodini `concept` ga joylashtiring. `dispenseRequest.validityPeriod` retsept yozilgan sanadan uning amal qilish muddati tugaydigan sanagacha davom etadi. `dispenseRequest.quantity` - dorixona berishi mumkin bo'lgan umumiy miqdor, [umumiy hajm birliklarida](ValueSet-medication-total-volume-units-vs.html): massa va hajm uchun UCUM, `piece` kabi sanaladigan birliklar uchun esa mahalliy birliklar kod tizimi.

#### Qabul qilish tartibini yozish

`dosageInstruction.timing.repeat` dozaning qanchalik tez-tez qabul qilinishini ko'rsatadi. Uning maydonlarini quyidagi usullardan biri bilan birlashtiring va inson o'qiy oladigan tavsifni `timing.code.text` yoki `patientInstruction` da saqlang:

| Ko'rsatma | `timing.repeat` |
|---|---|
| Kuniga ikki marta, soat 08:00 va 16:00 da | `frequency` 2, `period` 1, `periodUnit` d, `timeOfDay` 08:00:00 va 16:00:00 |
| Kuniga uch marta ovqatdan keyin | `frequency` 3, `period` 1, `periodUnit` d, `when` PC |
| Har 8 soatda | `frequency` 1, `period` 8, `periodUnit` h |
| Dushanba, chorshanba va juma kunlari | `dayOfWeek` mon, wed va fri |
| Jami 10 doza | `count` 10 |

Davolash sanalari uchun `boundsPeriod` ni yuboring. `when` va `timeOfDay` - muqobil variantlar: ikkalasini emas, bittasini ishlating. `dosageInstruction.timing` ning rasmiy ko'rinishi yana qaysi maydonlarni birga ishlatib bo'lmasligini sanab o'tadi.

#### Qarindosh oladigan, xarajati qoplanadigan retsept

Davlat tibbiy sug'urta jamg'armasi to'laydigan retseptda `category` da xarajatni qoplanadigan buyurtmaning milliy kodi bo'ladi va `insurance` da xarajatni qoplash to'g'risidagi qarorga havola qilinadi. Dorini boshqa shaxs olsa, trustee kengaytmasini qo'shing. `dispenseRequest.dispenser` retsept bo'yicha dori berilishi mumkin bo'lgan dorixonani ko'rsatadi:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/trustee",
      "valueReference": { "reference": "RelatedPerson/example-related-person" }
    }
  ],
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-request-order-type-cs",
          "code": "rembr-0001-00001"
        }
      ]
    }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-03-02T06:44:12+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "insurance": [ { "reference": "ClaimResponse/example-claim-response" } ],
  "dosageInstruction": [
    {
      "timing": {
        "code": { "text": "Three times a day after meals" },
        "repeat": { "frequency": 3, "period": 1, "periodUnit": "d", "when": ["PC"] }
      },
      "doseAndRate": [
        { "doseQuantity": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
      ]
    }
  ],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": {
      "value": 30,
      "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece"
    },
    "dispenser": { "reference": "Organization/tashkent-diseases-hospital" }
  }
}
```

[trustee](StructureDefinition-trustee.html) kengaytmasi takrorlanishi mumkin; uning qiymati [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) (qarindosh) yoki [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) (patronaj hamshirasi) ga havola. `insurance` Coverage yoki [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) ga havola qiladi.

#### Retseptni to'xtatish yoki bekor qilish

Qaytarib olingan retsept o'chirilmaydi. Uni yangilang: `status` ni `stopped` (dorining bir qismi allaqachon berilgan yoki qabul qilingan) yoki `cancelled` (hech narsa berilmagan) ga o'rnating, sababini `statusReason` da, o'zgarish vaqtini esa `statusChanged` da ko'rsating:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "status": "stopped",
  "statusReason": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason", "code": "salg" } ]
  },
  "statusChanged": "2026-03-04T09:15:00+05:00",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`statusReason` [holat sabablari](ValueSet-medicationrequest-status-reason-vs.html) qiymatlar to'plamiga majburiy (required) bog'langan; `salg` bemorda allergiya paydo bo'lganini bildiradi. To'liq berilgan retsept `completed` holatiga o'tadi.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
