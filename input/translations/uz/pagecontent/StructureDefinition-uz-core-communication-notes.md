> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini koddan ajratadi va URL da `%7C` sifatida kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Communication/[id]
```

**Ogohlantirishlarni qidirish**

```
GET [base]/Communication?recipient=Patient/[id]&status=completed
GET [base]/Communication?category=comcat-0001-00001
GET [base]/Communication?recipient=Patient/[id]&sent=ge2026-11-01
GET [base]/Communication?identifier=[system]%7C[value]
```

Birinchi so'rov bemor Bemor portalida ko'radigan ogohlantirishlarni qaytaradi; ikkinchisi hudud aholisiga barcha ogohlantirishlarni topadi.

**Yaratish**

```
POST [base]/Communication
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00002"
    }]
  }],
  "sent": "2026-11-18T11:00:00+05:00",
  "recipient": [{ "reference": "Patient/[id]" }],
  "payload": [{
    "contentCodeableConcept": { "text": "[alert text]" }
  }]
}
```

**Yangilash** (masalan, xato bilan yaratilgan ogohlantirishni belgilash uchun): to'liq resursni `PUT [base]/Communication/[id]` orqali yuboring, `status` ni `entered-in-error` ga o'zgartiring va o'qilgan versiyani o'z ichiga olgan `If-Match` sarlavhasini qo'shing, shunda parallel o'zgarish ustidan yozilmaydi.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Communication1-57) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core Location](StructureDefinition-uz-core-location.html) &middot; [UZ Core Group](StructureDefinition-uz-core-group.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
