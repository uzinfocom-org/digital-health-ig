> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core Claim - bu tibbiyot tashkiloti ko'rsatilgan yordam uchun to'lov olish yoki to'lovchi uni qoplashini oldindan bilish uchun to'lovchiga yuboradigan talabnoma. Bugungi kunda yagona to'lovchi - Davlat tibbiy sug'urta jamg'armasi (DTSJ), talabnomalar esa [Reimbursatsiya](components.html#reimbursement) komponentining bir qismi. Talabnoma [bemorni](StructureDefinition-uz-core-patient.html), to'lovchi bilan shartnoma tuzgan provayder [tashkilotni](StructureDefinition-uz-core-organization.html) ([To'lovchilarni identifikatsiyalash](payor-identification.html) sahifasida tavsiflanganidek identifikatsiyalanadi), sug'urtachini, yordam ko'rsatiladigan muassasani, tashxislarni, sug'urta qoplamasini va umumiy summani ko'rsatadi. Uning asosi - talabnoma tayanadigan yo'llanma ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html)) yoki imtiyozli retsept ([MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)). To'lovchi [ClaimResponse](StructureDefinition-uz-core-claim-response.html) bilan javob beradi, u `request` da talabnomaga havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core Claim quyidagilarga ega bo'lishi shart

Profil o'zidan majburiy elementlar qo'shmaydi; majburiy elementlar bazaviy resursdan keladi: `status`, `type`, `use`, bemor `patient` va yaratilgan sana `created`. Har bir `insurance` yozuvi yuborilganda o'z `sequence` ini, `focal` belgisini va `coverage` ni, har bir `diagnosis` yozuvi esa o'z `sequence` ini va tashxisning o'zini o'z ichiga olishi shart.

#### Har bir UZ Core Claim quyidagilarni qo'llab-quvvatlashi shart

- talabnoma raqami (`identifier`);
- talabnoma holati `status` (active / cancelled / draft / entered-in-error);
- talabnoma turi `type` (institutional / oral / pharmacy / professional / vision);
- talabnoma maqsadi (`use`: claim / preauthorization / predetermination);
- yordam olgan yoki oladigan bemor `patient`;
- talabnoma yaratilgan sana `created`;
- talabnoma yuboriladigan sug'urtachi `insurer` va unga mas'ul provayder `provider`;
- uni asoslovchi imtiyozli retsept (`prescription`) yoki yo'llanma (`referral`);
- yordam ko'rsatiladigan muassasa `facility`;
- kod yoki Condition ga havola ko'rinishidagi tashxislar (`diagnosis`);
- foydalaniladigan sug'urta qoplamasi (`insurance`, `focal` va `coverage` bilan);
- qiymati va valyutasi bilan umumiy summa `total`.

### Talabnoma, oldindan ruxsat va oldindan baholash

`use` to'lovchiga provayder nimani so'rayotganini bildiradi:

| `use` | Qachon | To'lovchi nima javob beradi |
|---|---|---|
| `preauthorization` | Yordamdan oldin, avval tasdiqlashni talab qiladigan xizmatlar uchun, masalan davlat sug'urtasi yo'llanmasi bo'yicha rejali gospitalizatsiya | Tasdiqlash yoki rad etish, `ClaimResponse.preAuthRef` dagi ruxsat raqami va `ClaimResponse.preAuthPeriod` dagi uning amal qilish davri |
| `predetermination` | Yordamdan oldin, yordam ko'rsatish majburiyatisiz, to'lovchi qancha to'lashini bilish uchun | To'lovchi to'laydigan summalar |
| `claim` | Yordamdan keyin, uning uchun to'lov olish uchun | To'lovga qabul qilingan summalar |

Bitta yordam uchun oldindan ruxsat va keyingi talabnoma - bu ikkita alohida Claim resursi. Provayder tizimi javobdagi ruxsat raqamini saqlaydi, to'lovchi tasdiqlagan [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) esa o'zining `insurance` idan javobga havola qiladi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik yaroqli nusxadan imtiyozli retsept bo'yicha talabnomagacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [talabnoma misoli](Claim-example-claim.html).

#### Yuborishingiz kerak bo'lgan eng kichik Claim

Majburiy elementlar bazaviy resursdan keladi. Har bir UZ Core resursi o'z profilini `meta.profile` da ham ko'rsatadi, shunda server uni qaysi qoidalar bo'yicha tekshirishni biladi. Shuncha ma'lumot validatsiyadan o'tadi:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "claim",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-03"
}
```

`status` va `use` - oddiy kodlar, shuning uchun qiymatning o'zini yuboring. `type` - HL7 kodlari bilan `CodeableConcept`; ularning o'zbekcha va ruscha ko'rinadigan nomlari DHP qo'shimchalaridan olinadi, shuning uchun `display` ni ko'rsatmasangiz ham bo'ladi.

#### Rejali gospitalizatsiya uchun oldindan ruxsat

DTSJ bilan shartnoma tuzgan onkologiya markazi bemorni [davlat sug'urtasi yo'llanmasi](workflow-referral.html) bo'yicha yotqizishdan oldin tasdiqlash so'raydi. `referral` yo'llanmaga havola qiladi, `diagnosis` yotqizishni asoslovchi ICD-10 kodini, `total` esa kutilayotgan narxni o'z ichiga oladi:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-nodira" },
  "created": "2026-03-06",
  "provider": { "reference": "Organization/example-organization" },
  "referral": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "facility": { "reference": "Organization/example-organization" },
  "diagnosis": [
    {
      "sequence": 1,
      "diagnosisCodeableConcept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "C50.9" } ]
      }
    }
  ],
  "total": { "value": 4500000, "currency": "UZS" }
}
```

`provider` - to'lovchi shartnoma tuzgan yuridik shaxs. Yordamni filial ko'rsatsa, filialni `facility` ga qo'ying, bosh tashkilotni esa `provider` da qoldiring, chunki shartnoma to'lovchi kodiga ega tashkilot bo'yicha tekshiriladi ([To'lovchilarni identifikatsiyalash](payor-identification.html) ga qarang). `facility` [Location](StructureDefinition-uz-core-location.html) yoki Organization ni qabul qiladi. `diagnosis` takrorlanadi; yozuvlarni `sequence` da 1 dan boshlab raqamlang. `total.currency` - ISO 4217 kodi, o'zbek so'mi uchun `UZS`.

#### Imtiyozli retsept bo'yicha talabnoma

Yordam ko'rsatilgandan keyin provayder to'lovni talab qiladi. Imtiyozli dori uchun `type` `pharmacy` ga teng, `prescription` esa yo'llanma o'rniga retseptga havola qiladi. Bu yerda tashxis ICD-10 kodi bilan berilgan; `diagnosisReference` orqali [Condition](StructureDefinition-uz-core-condition.html) ga ham havola qilish mumkin:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "pharmacy" } ]
  },
  "use": "claim",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-03-03",
  "provider": { "reference": "Organization/tashkent-diseases-hospital" },
  "prescription": { "reference": "MedicationRequest/example-medication-request" },
  "diagnosis": [
    {
      "sequence": 1,
      "diagnosisCodeableConcept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "R51" } ]
      }
    }
  ],
  "total": { "value": 12000, "currency": "UZS" }
}
```

Qaysi sug'urta qoplamasi to'lashini ko'rsatish uchun o'z `sequence` i, to'lovchi foydalanishi kerak bo'lgan qoplama uchun `focal: true` va `coverage` ga havola bilan `insurance` yozuvini qo'shing. Qoplama - bazaviy FHIR Coverage resursi; UZ Core da hozircha Coverage profili yo'q. `insurer` - `type` `pay` bo'lgan to'lovchi tashkilot.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
