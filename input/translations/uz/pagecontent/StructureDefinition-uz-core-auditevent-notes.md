### Tezkor boshlash

Ushbu profil uchun odatiy API amallari. So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverining bazaviy URL manzili](api-access.html#endpoints); `|` belgisi kod tizimini qiymatdan ajratadi va URLda `%7C` ko'rinishida kodlanishi kerak.

AuditEvent resurslari platforma tomonidan yaratiladi va mijozlar uchun faqat o'qish rejimida mavjud - yaratish yoki yangilash yo'li mavjud emas. Audit jurnalidan ma'lumot olish uchun o'qish va qidirish amallaridan foydalaning.

**Server identifikatori bo'yicha olish**

```
GET [base]/AuditEvent/[id]
```

**Audit jurnalida qidirish**

```
GET [base]/AuditEvent?patient=Patient/[id]
GET [base]/AuditEvent?patient=Patient/[id]&date=ge2025-01-01
GET [base]/AuditEvent?agent=PractitionerRole/[id]
GET [base]/AuditEvent?patient=Patient/[id]&action=R
GET [base]/AuditEvent?patient=Patient/[id]&category=http://dicom.nema.org/resources/ontology/DCM%7C110112
GET [base]/AuditEvent?patient=Patient/[id]&entity=Condition/[id]
GET [base]/AuditEvent?patient=Patient/[id]&outcome=http://hl7.org/fhir/issue-severity%7Cerror
```

FHIR R5 da hodisalar guruhi `category` parametri, muayyan quyi tur esa `code` parametri bo'yicha qidiriladi (FHIR R4 da `type` / `subtype` ishlatilgan). Ushbu profilda `outcome.code` issue-severity ValueSet bilan bog'langan, shu sababli rad etilgan yoki muvaffaqiyatsiz kirish `success` emas, `error` (yoki `fatal`) qiymati bo'yicha qidiriladi.

Qo'llab-quvvatlanadigan barcha qidiruv parametrlari [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq materiallar

- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
