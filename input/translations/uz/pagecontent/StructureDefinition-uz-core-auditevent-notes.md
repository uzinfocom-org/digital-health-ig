> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR serverining bazaviy URL manzili](api-access.html#endpoints); `|` belgisi kod tizimini uning qiymatidan ajratadi va URL kodlashda `%7C` ko'rinishida yozilishi shart.

AuditEvent yozuvlari platforma tomonidan yoziladi va mijozlar uchun faqat o'qish uchun mo'ljallangan - yaratish yoki yangilash yo'li mavjud emas. Audit jurnalini o'qish va qidiruv orqali so'rang.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/AuditEvent/[id]
```

**Audit jurnalini qidirish**

```
GET [base]/AuditEvent?patient=Patient/[id]
GET [base]/AuditEvent?patient=Patient/[id]&date=ge2025-01-01
GET [base]/AuditEvent?agent=PractitionerRole/[id]
GET [base]/AuditEvent?patient=Patient/[id]&action=R
GET [base]/AuditEvent?patient=Patient/[id]&category=http://dicom.nema.org/resources/ontology/DCM%7C110112
GET [base]/AuditEvent?patient=Patient/[id]&entity=Condition/[id]
GET [base]/AuditEvent?patient=Patient/[id]&outcome=http://hl7.org/fhir/issue-severity%7Cerror
```

FHIR R5 da hodisalar guruhlanishi `category` orqali, aniq sub-tip esa `code` orqali qidiriladi (R4 dagi `type` / `subtype`). Ushbu profilda `outcome.code` issue-severity qiymatlar to'plamiga bog'langan, shuning uchun rad etilgan yoki muvaffaqiyatsiz tugagan kirish `success` emas, balki `error` (yoki `fatal`) sifatida qidiriladi.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
