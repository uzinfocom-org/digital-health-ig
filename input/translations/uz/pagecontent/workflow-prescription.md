> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu ish jarayoni dori qanday qilib elektron tarzda tayinlanishi, dorixonada berilishi va kompensatsiya uchun Davlat sog'liqni saqlash sug'urtasi jamg'armasiga (SHIF) hisobot qilinishini ko'rsatadi. Buni ikkita resurs amalga oshiradi: `MedicationRequest` - bu retsept, ya'ni *nima* buyurtma qilingani; `MedicationDispense` esa uni topshirish harakati, ya'ni amalda *nima* va *qancha miqdorda* berilgani.

> Profil holati: MedicationRequest va MedicationDispense profillari ishlab chiqilmoqda. Ushbu sahifa mo'ljallangan modellashtirishni tavsiflaydi, shunda tizimlar hozirdan unga moslab qurilishi mumkin; profillar nashr etilgunga qadar `meta.profile` tashlab ketilgan bazaviy FHIR R5 resurslaridan foydalaning. [Condition](StructureDefinition-uz-core-condition.html) (ko'rsatma/indikatsiya) va [Patient](StructureDefinition-uz-core-patient.html) profillangan.

Ishtirokchilar: tayinlovchi shifokor; farmatsevt; platforma (DHP); Davlat sog'liqni saqlash sug'urtasi jamg'armasi (SHIF).

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Tayinlash

Klinisist elektron retseptni `MedicationRequest` (`intent = order`) sifatida chiqaradi: dori `medication` da, bemor `subject` da, tayinlovchi shifokor `requester` da, dozalash `dosageInstruction` da, klinik ko'rsatma esa `reason` da (davolanayotgan [Condition](StructureDefinition-uz-core-condition.html)). Retsept uni identifikatsiya qiluvchi QR kod bilan chop etiladi.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }] }
```

### 2. Dori berish

Dorixonada farmatsevt `MedicationRequest` ni olish uchun QR kodni skanerlaydi, so'ngra topshirilgan narsani `MedicationDispense` sifatida qayd etadi. Dori berish `authorizingPrescription` orqali retseptga qaytib ishora qiladi, bu esa zanjirni kuzatib boriladigan qiladi:

```
POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "quantity": { "value": 1 },
  "whenHandedOver": "2026-05-30" }
```

Dorixona retseptning butunini bir vaqtda yoki qismlarga bo'lib berishi mumkin. Qisman ta'minlash - bu berilgan miqdor uchun `status = completed` bo'lgan `MedicationDispense`; retsept qolgan qism uchun ochiq qoladi.

| Resurs | Status oqimi |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (to'liq berilgan) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; topshirilmasa `declined` |

### 3. SHIF ga hisobot berish

Kompensatsiya qilinadigan dori uchun platforma retsept va uning berilishini kompensatsiya hisob-kitobi uchun SHIF ga uzatadi. Bu asinxron jarayon - DHP resurslarni e'lon qiladi, SHIF esa ularni iste'mol qiladi; DHP da'voni o'zi hal qilmaydi. `MedicationDispense.authorizingPrescription` aloqasi SHIF ga *nima buyurtma qilingani* ni *nima ta'minlangani* ga nisbatan solishtirish imkonini beradi.

> DHP SHIF ga kerakli tibbiy ma'lumotlarni uzatadi; kompensatsiya qarori va to'lov SHIF ning o'z tizimida amalga oshiriladi. Faqat validatsiyadan o'tgan yozuvlar uzatiladi.

### 4. Qayta o'qish

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
```

`authorizingPrescription` aloqasi shuni anglatadiki, dori berish har doim uni vakolat bergan retseptga nisbatan qayta o'qiladi, shu sababli SHIF va bemor har bir buyurtma uchun to'liq ta'minlash tarixini ko'radi.

### Aloqador

- Profillar: [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Ish jarayonlari sharhi](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
