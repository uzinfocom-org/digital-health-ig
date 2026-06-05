> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash

Ushbu profil uchun keng tarqalgan API o'zaro aloqalar. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi tizimni qiymatdan ajratadi va `%7C` sifatida URL-kodlangan bo'lishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/QuestionnaireResponse/[id]
```

**Javoblarni topish**

```
GET [base]/QuestionnaireResponse?patient=Patient/[id]
GET [base]/QuestionnaireResponse?patient=Patient/[id]&status=completed
GET [base]/QuestionnaireResponse?questionnaire=https://dhp.uz/fhir/core/Questionnaire/health-declaration
GET [base]/QuestionnaireResponse?patient=Patient/[id]&authored=ge2025-01-01
GET [base]/QuestionnaireResponse?author=Practitioner/[id]
GET [base]/QuestionnaireResponse?encounter=Encounter/[id]
GET [base]/QuestionnaireResponse?based-on=ServiceRequest/[id]
```

**Yaratish**

```
POST [base]/QuestionnaireResponse
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response" ]
  },
  "questionnaire": "https://dhp.uz/fhir/core/Questionnaire/health-declaration",
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "item": [ ... ],
  ...
}
```

**Yangilash** (masalan, yuborilgan javobga tuzatish kiritish yoki qisman saqlangan javobni yakunlash) - to'liq resursni yangi `status` va javoblar bilan PUT orqali qaytaring:

```
PUT [base]/QuestionnaireResponse/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

### Aloqador

- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
- [Ish jarayonlari](workflows.html)
