> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu ish jarayoni laboratoriya tahlili qanday buyurtirilishini va natija qanday qaytishini ko'rsatadi. Bu FHIR ning kanonik diagnostika zanjiri bo'lib, unda havolalar bog'lanishi aniq ko'rsatilgan - profil jadvali sizga `Observation.specimen` *mavjudligini* aytadi, ammo ushbu sahifa uning aynan shu buyurtmadan olingan namunaga ishora qilishi kerakligini bildiradi.

Ishtirokchilar: buyurtma beruvchi shifokor; laboratoriya (LIS); platforma (DHP).

O'zaro ta'sirlar ketma-ketligi:

<div>{% include lab-sequence.svg %}</div><br clear="all"/>

Zanjir va uning havolalari:

<div>{% include lab-references.svg %}</div><br clear="all"/>

> Profil holati: [Specimen](StructureDefinition-uz-core-specimen.html) va [Observation](StructureDefinition-uz-core-observation.html) UZ Core da profillangan. ServiceRequest va DiagnosticReport profillari ishlab chiqilmoqda - ular e'lon qilinmaguncha, `meta.profile` ni tashlab qoldirib yoki asosiy resursga o'rnatib, asosiy FHIR R5 resurslaridan foydalaning va quyidagi bog'lanishga amal qiling.

### 1. Tahlilni buyurtirish

Shifokor `ServiceRequest` yaratadi: `intent = order`, `code` da tahlil yoki panel, `subject` da bemor, buyurtmachi va `reasonCode`/`reasonReference` (tekshirilayotgan Condition). Buyurtirish mumkin bo'lgan tahlillar [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) yozuvlari sifatida e'lon qilinadi; `priority` qiymati `routine`, `urgent` yoki `asap`.

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest", "status": "active", "intent": "order",
  "code": { "coding": [{ "system": "http://loinc.org", "code": "58410-2" }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "priority": "routine" }
```

Avvalgi tahlilning takrori `ServiceRequest.basedOn` ni dastlabki buyurtmaga o'rnatadi.

### 2. Namunani olish

Laboratoriya [Specimen](StructureDefinition-uz-core-specimen.html) ni qayd etadi: uning `type` i, olingan sana/vaqti va identifikatori, `subject` da bemor va eng muhimi `Specimen.request` ServiceRequest ga qaytib ishora qiladi.

```
POST [base]/Specimen
{ "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "subject": { "reference": "Patient/[id]" },
  "request": [{ "reference": "ServiceRequest/[id]" }],
  "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }] } }
```

### 3. Natijalarni qaytarish

Har bir analit - bu LOINC `code`, `value[x]`, `interpretation` (normal / high / low / critical) va `referenceRange` ga ega [Observation](StructureDefinition-uz-core-observation.html). Har bir Observation `basedOn` ni ServiceRequest ga va `specimen` ni Specimen ga o'rnatadi. To'plam `DiagnosticReport` orqali jamlanadi: uning `basedOn` i ServiceRequest, `result` i esa Observation larni sanab o'tadi.

```
GET [base]/DiagnosticReport?based-on=ServiceRequest/[id]&_include=DiagnosticReport:result
GET [base]/Observation?patient=Patient/[id]&category=laboratory&_sort=-date
```

Butun to'plamni bitta transaction Bundle sifatida qaytarish maqsadga muvofiq, shunda buyurtma, namuna, kuzatuvlar va hisobot atomar tarzda yetib keladi. Yakunlangan, imzolangan hisobot document Bundle sifatida yig'iladi (`Composition` sarlavhasi natijalarga ishora qiladi va [Provenance](StructureDefinition-uz-core-provenance.html) orqali imzolanadi) - `Composition` resurslarni takrorlamasdan ularga ishora qiladi. Qarang: [Umumiy ko'rsatmalar &rarr; Bundle lar](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

### Holat va parallellik

`ServiceRequest.status` buyurtma hayotiy tsikliga amal qiladi (draft &rarr; active &rarr; completed yoki revoked); `entered-in-error`/`unknown` tuzatishlar uchun ajratilgan. Bekor qilish faol buyurtmani `revoked` ga o'tkazadi (izoh bilan), yakunlangan buyurtmani esa o'zgartirib bo'lmaydi. Parallel tahrirlar optimistik parallellikdan foydalanadi - oxirgi o'qishdan olingan `ETag` ni `If-Match` sifatida yuboring; eskirgan versiya `412 Precondition Failed` bilan rad etiladi. Qaytadan o'qing va qayta urinib ko'ring - qarang: [Parallellik](api-access.html#concurrency).

### Aloqador

- Profillar: [Specimen](StructureDefinition-uz-core-specimen.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Ish jarayonlari sharhi](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html) &middot; [Hayotiy ko'rsatkichlar](vital-signs.html)
