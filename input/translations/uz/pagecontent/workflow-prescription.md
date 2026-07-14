Ushbu jarayon dori vositasi elektron shaklda qanday tayinlanishi, dorixonada qanday berilishi va xarajatni qoplab berish uchun SHIF (State Health Insurance Fund - Davlat tibbiy sug'urta jamg'armasi)ga qanday yuborilishini ko'rsatadi. Jarayon ikkita resurs orqali ifodalanadi: `MedicationRequest` - retsept, ya'ni *nima* tayinlanganligi; `MedicationDispense` - dori vositasini berish fakti, ya'ni amalda *nima* berilganligi va *qancha miqdorda* berilganligi.

> Profillarning holati: MedicationRequest va MedicationDispense profillari ishlab chiqilmoqda. Ushbu sahifada tizimlar hozirdanoq shu model asosida ishlab chiqilishi uchun mo'ljallangan model tavsiflangan; profillar e'lon qilingunga qadar `meta.profile` elementini ko'rsatmasdan FHIR R5 bazaviy resurslaridan foydalaning. [Condition](StructureDefinition-uz-core-condition.html) (klinik ko'rsatma) va [Patient](StructureDefinition-uz-core-patient.html) profillangan.

Ishtirokchilar: retsept yozuvchi klinitsist; farmatsevt; DHP (Digital Health Platform - Raqamli sog'liqni saqlash platformasi); SHIF.

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Retsept yozish

Klinitsist elektron retseptni `MedicationRequest` (`intent = order`) sifatida rasmiylashtiradi: dori vositasi `medication` elementida, bemor `subject` elementida, retsept yozuvchi klinitsist `requester` elementida, dozalash bo'yicha ko'rsatmalar `dosageInstruction` elementida, klinik ko'rsatma esa `reason` elementida (davolanayotgan [Condition](StructureDefinition-uz-core-condition.html)) ko'rsatiladi. Retsept uni identifikatsiya qiluvchi QR-kod bilan chop etiladi.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }] }
```

### 2. Dori vositasini berish

Dorixonada farmatsevt `MedicationRequest` resursini olish uchun QR-kodni skanerlaydi, so'ng amalda berilgan dori vositasi haqidagi ma'lumotlarni `MedicationDispense` sifatida qayd etadi. `MedicationDispense.authorizingPrescription` elementida retseptga reference ko'rsatiladi; aynan shu bog'lanish butun zanjirni kuzatish imkonini beradi:

```
POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "quantity": { "value": 1 },
  "whenHandedOver": "2026-05-30" }
```

Dorixona retsept bo'yicha dori vositasini to'liq bir martada yoki qismlarga bo'lib berishi mumkin. Qisman berish amalda berilgan miqdor uchun `status = completed` bo'lgan `MedicationDispense` resursi bilan qayd etiladi; `MedicationRequest` esa qolgan miqdor uchun faol holatda qoladi.

| Resurs | Statuslar o'zgarishi |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (to'liq berilgan) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; dori vositasi berilmagan bo'lsa `declined` |

### 3. SHIFga ma'lumot yuborish

Xarajati qoplab beriladigan dori vositasi uchun platforma retsept va dori vositasini berish haqidagi ma'lumotlarni qoplab berish hisobini yuritish uchun SHIFga yuboradi. Ma'lumot almashinuvi asinxron tarzda amalga oshiriladi: DHP resurslarni e'lon qiladi, SHIF esa ularni qabul qiladi; DHP qoplab berish talabini o'zi ko'rib chiqib, qaror qabul qilmaydi. `MedicationDispense.authorizingPrescription` orqali ko'rsatilgan reference SHIFga *nima tayinlangani* va *amalda nima berilganini* solishtirish imkonini beradi.

> DHP SHIF uchun zarur bo'lgan tibbiy ma'lumotlarni uzatadi; qoplab berish to'g'risidagi qaror va to'lov SHIFning o'z tizimida amalga oshiriladi. Faqat validatsiyadan o'tgan yozuvlar uzatiladi.

### 4. Ma'lumotlarni olish

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
```

`authorizingPrescription` orqali ko'rsatilgan reference tufayli `MedicationDispense` ma'lumotlari doimo dori vositasini berish uchun asos bo'lgan retsept bilan birga olinadi. Shu sababli SHIF va bemor har bir tayinlash bo'yicha dori vositasini berishning to'liq tarixini ko'rishi mumkin.

### Bog'liq materiallar

- Profillar: [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Jarayonlar haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
