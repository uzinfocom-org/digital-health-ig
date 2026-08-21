### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Server identifikatori bo'yicha olish**

```
GET [base]/Consent/[id]
```

**Bemorning rozilik bo'yicha qarorlarini qidirish**

```
GET [base]/Consent?patient=Patient/[id]
GET [base]/Consent?patient=Patient/[id]&status=active
GET [base]/Consent?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/consentcategorycodes%7Cinfa
GET [base]/Consent?patient=Patient/[id]&period=ge2025-01-01
GET [base]/Consent?patient=Patient/[id]&date=ge2025-01-01
```

**Yaratish** - bemorning ma'lumot almashishni rad etishini qayd etish; Consent mavjud bo'lmasa, almashishga sukut bo'yicha ruxsat beriladi

```
POST [base]/Consent
{
  "resourceType": "Consent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent" ] },
  "status": "active",
  "subject": { "reference": "Patient/[id]" },
  "decision": "deny",
  ...
}
```

**Yangilash** - masalan, bemor almashishni rad etsa yoki qayta ruxsat bersa: to'liq resursni yangi `decision` qiymati bilan yuboring:

```
PUT [base]/Consent/[id]
If-Match: W/"3"   # oxirgi o'qishdagi ETag; resurs shu vaqtdan beri o'zgargan bo'lsa, 412
```

Consent odatda bemor tomonidan portalda belgilanadi. Consent kirishni taqiqlasa, ma'lumot so'rovlari HTTP 403 bilan rad etiladi; mijoz tizimlari bu natijani to'g'ri qayta ishlashi kerak.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
