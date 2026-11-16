> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core ClaimResponse - bu to'lovchining [Claim](StructureDefinition-uz-core-claim.html) talabnomasiga javobi: oldindan ruxsat tasdiqlanganmi va qancha muddatga, oldindan baholashda to'lovchi qancha to'lagan bo'lardi yoki talabnoma bo'yicha qancha summani to'lovga qabul qiladi. Bugungi kunda to'lovchi - Davlat tibbiy sug'urta jamg'armasi (DTSJ), javoblar esa [Reimbursatsiya](components.html#reimbursement) komponentining bir qismi. Javob `request` da o'zi javob berayotgan talabnomaga, [bemorga](StructureDefinition-uz-core-patient.html) va qaror qabul qilgan sug'urtachi [tashkilotga](StructureDefinition-uz-core-organization.html) havola qiladi. Imtiyozli dori uchun [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) o'zining `insurance` idan tasdiqlangan javobga havola qiladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)). Hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core ClaimResponse quyidagilarga ega bo'lishi shart

Majburiy elementlar bazaviy resursdan keladi: `status`, `type`, `use`, bemor `patient`, yaratilgan sana `created` va qayta ishlash natijasi `outcome`. Har bir `total` yozuvi yuborilganda `category` va `amount` ni o'z ichiga olishi shart. Bekor qilish sababi kengaytmasi yuborilganda kodni o'z ichiga olishi shart.

#### Har bir UZ Core ClaimResponse quyidagilarni qo'llab-quvvatlashi shart

- javob raqami (`identifier`);
- javob holati `status` (active / cancelled / draft / entered-in-error);
- javob berilgan talabnoma turi `type` (institutional / oral / pharmacy / professional / vision);
- talabnoma maqsadi (`use`: claim / preauthorization / predetermination);
- talabnoma tegishli bo'lgan bemor `patient`;
- javob yaratilgan sana `created`;
- qaror qabul qilgan sug'urtachi `insurer` va javob berilgan Claim (`request`);
- qayta ishlash tugaganmi (`outcome`: queued / complete / error / partial) va qaror `decision` (approved / denied / partial / pending);
- oldindan ruxsat uchun ruxsat raqami (`preAuthRef`) va uning amal qilish davri (`preAuthPeriod`);
- toifalar bo'yicha summalar (`total`);
- javob nima uchun bekor qilingani (bekor qilish sababi kengaytmasi), masalan oldindan ruxsat muddati tugagani uchun.

### Natija, qaror va bekor qilish

`outcome` va `decision` turli savollarga javob beradi. `outcome` to'lovchi talabnomani qayta ishlashda qanchalik ilgarilaganini ko'rsatadi: kutayotganda `queued`, qayta ishlash tugaganda `complete`, talabnomani qayta ishlab bo'lmaganda `error`. `decision` to'lovchi nima qaror qilganini ko'rsatadi: `approved`, `denied`, `partial` yoki `pending`. Javob bir vaqtning o'zida `complete` va `denied` bo'lishi mumkin.

Tasdiqlangan oldindan ruxsat faqat `preAuthPeriod` doirasida amal qiladi. Davr yordam ko'rsatilib, to'lovga talab qilinishidan oldin tugasa, to'lovchi `status` ni `cancelled` ga o'rnatadi va sababni [bekor qilish sababi](StructureDefinition-claim-response-cancellation-reason.html) kengaytmasida qayd etadi. `decision` avvalgidek qoladi, shuning uchun tasdiqlash tarixi saqlanadi.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar bitta oldindan ruxsatni to'lovchi uni qabul qilgan paytdan muddati tugaguncha kuzatib boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [bekor qilingan oldindan ruxsat](ClaimResponse-example-claim-response.html).

#### Yuborishingiz kerak bo'lgan eng kichik ClaimResponse

Majburiy elementlar bazaviy resursdan keladi. Har bir UZ Core resursi o'z profilini `meta.profile` da ham ko'rsatadi, shunda server uni qaysi qoidalar bo'yicha tekshirishni biladi. Javob faqat o'zi javob berayotgan `request` bilan foydali bo'ladi. Shuncha ma'lumot validatsiyadan o'tadi:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-03",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "queued"
}
```

`status`, `use` va `outcome` - oddiy kodlar, shuning uchun qiymatning o'zini yuboring. `type` HL7 kodlaridan foydalanadi; ularning o'zbekcha va ruscha ko'rinadigan nomlari DHP qo'shimchalaridan olinadi, shuning uchun `display` ni ko'rsatmasangiz ham bo'ladi. `type`, `use` va `patient` ni javob berilayotgan talabnomadan nusxalang.

#### Tasdiqlangan oldindan ruxsat

To'lovchi qaror qabul qilgach, `outcome` `complete` ga aylanadi, `decision` esa natijani o'z ichiga oladi. Ruxsat raqami `preAuthRef` ga, amal qilish davri `preAuthPeriod` ga, tasdiqlangan summa esa `total` ga yoziladi:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-05",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "complete",
  "decision": {
    "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ]
  },
  "preAuthRef": "PA-2026-001",
  "preAuthPeriod": { "start": "2026-10-05", "end": "2026-12-05" },
  "total": [
    {
      "category": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/adjudication", "code": "benefit" } ]
      },
      "amount": { "value": 100000, "currency": "UZS" }
    }
  ]
}
```

`total` takrorlanadi, har bir `category` uchun bitta yozuv; `benefit` - to'lovchi to'laydigan summa. `amount.currency` - ISO 4217 kodi, o'zbek so'mi uchun `UZS`. To'lovchini `insurer` da `type` `pay` bo'lgan tashkilotiga havola bilan ko'rsating ([To'lovchilarni identifikatsiyalash](payor-identification.html) ga qarang).

#### Muddati tugagan oldindan ruxsat

Yordam 2026-yil 5-dekabrgacha ko'rsatilmadi. To'lovchi o'sha javobni yangilab, tasdiqlashni bekor qiladi, shuning uchun `created` javob birinchi marta yaratilgan sanani saqlaydi:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/claim-response-cancellation-reason",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/cancellation-reason-cs",
            "code": "Reimb0001-00001"
          }
        ]
      }
    }
  ],
  "status": "cancelled",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-05",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "complete",
  "decision": {
    "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ]
  },
  "preAuthRef": "PA-2026-001",
  "preAuthPeriod": { "start": "2026-10-05", "end": "2026-12-05" }
}
```

`Reimb0001-00001` - [bekor qilish sabablari](CodeSystem-cancellation-reason-cs.html) kod tizimida "Muddati tugagan". Uning asosiy ko'rinadigan nomi o'zbekcha, shuning uchun yoki bu yerdagidek `display` ni ko'rsatmang, yoki resurs `language` ini yuborayotgan `display` ga moslab o'rnating.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
