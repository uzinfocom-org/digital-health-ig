> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Server identifikatori bo'yicha olish**

```
GET [base]/Flag/[id]
```

**Belgilarni qidirish**

```
GET [base]/Flag?patient=Patient/[id]&status=active&code=donation-deferred
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Flag?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/flag-category%7Cclinical
GET [base]/Flag?identifier=[system]%7C[value]
GET [base]/Flag?encounter=Encounter/[id]
GET [base]/Flag?author=Practitioner/[id]
GET [base]/Flag?date=ge2026-01-01
```

`code` - [UZ Core qidiruv parametri](SearchParameter-uz-core-flag-code.html): FHIR R5 da `Flag.code` uchun bunday parametr yo'q. Birinchi so'rov bemorning amaldagi tibbiy chetlatishlarini topadi.

**Yaratish**

```
POST [base]/Flag
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-deferred"
    }]
  },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-09T09:00:00+05:00" }
}
```

**Yangilash** (masalan, tibbiy chetlatishni tugatish uchun): to'liq resursni `PUT [base]/Flag/[id]` orqali yuboring, `status` ni `inactive` ga o'zgartiring yoki `period.end` ni to'ldiring va o'qilgan versiyani o'z ichiga olgan `If-Match` sarlavhasini qo'shing, shunda parallel o'zgarish ustidan yozilmaydi.

Qo'llab-quvvatlanadigan qidiruv parametrlariga [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da qarang, jumladan `subject`, `_lastUpdated` va `_profile`.

### Bog'liq bo'limlar

- [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core Encounter](StructureDefinition-uz-core-encounter.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
