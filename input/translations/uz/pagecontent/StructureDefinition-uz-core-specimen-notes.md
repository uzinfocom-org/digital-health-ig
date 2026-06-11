> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash

Ushbu profil standart FHIR R5 qidiruv parametrlaridan foydalanadi. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi system va value ni ajratadi va URL kodlashda `%7C` sifatida kodlanishi shart.

**Server id bo'yicha o'qish**

```
GET [base]/Specimen/[id]
```

**Namunalarni topish**

```
GET [base]/Specimen?patient=Patient/[id]
GET [base]/Specimen?patient=Patient/[id]&type=http://terminology.hl7.org/CodeSystem/v2-0487%7CBLD
GET [base]/Specimen?patient=Patient/[id]&status=available
GET [base]/Specimen?patient=Patient/[id]&collected=ge2025-01-01
GET [base]/Specimen?accession=ACC-2025-000045
```

**Yaratish**

```
POST [base]/Specimen
{
  "resourceType": "Specimen",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen" ] },
  "status": "available",
  "type": { ... },
  "subject": { "reference": "Patient/[id]" },
  "request": [ { "reference": "ServiceRequest/[id]" } ],
  ...
}
```

**Yangilash** (masalan, namunani `unavailable` deb belgilash yoki uning `receivedTime` qiymatini qayd etish) - to'liq resursni yangi `status` bilan PUT orqali qaytaring:

```
PUT [base]/Specimen/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy yo'riqnoma](general-guidance.html)
- [Laboratoriya buyurtmasidan natijagacha](workflow-lab.html)
