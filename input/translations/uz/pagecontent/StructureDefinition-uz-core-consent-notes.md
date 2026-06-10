> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang [Xavfsizlik va autentifikatsiya](api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi kod tizimini uning qiymatidan ajratadi va `%7C` sifatida URL-kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Consent/[id]
```

**Bemorning rozilik qarorlarini topish**

```
GET [base]/Consent?patient=Patient/[id]
GET [base]/Consent?patient=Patient/[id]&status=active
GET [base]/Consent?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/consentcategorycodes%7Cinfa
GET [base]/Consent?patient=Patient/[id]&period=ge2025-01-01
GET [base]/Consent?patient=Patient/[id]&date=ge2025-01-01
```

**Yaratish** (bemorni rad etishga o'tkazish - Consent mavjud bo'lmasa, ma'lumotlar almashinuviga sukut bo'yicha ruxsat beriladi)

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

**Yangilash** (masalan, bemor rad etadi yoki qaytadan ruxsat beradi) - yangi `decision` bilan to'liq resursni qaytarib PUT qiling:

```
PUT [base]/Consent/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Rozilik odatda bemor tomonidan portalda o'rnatiladi. Rad etilgan rozilik ma'lumotlar so'rovlarining HTTP 403 bilan rad etilishiga olib keladi; mijozlar bu natijani qayta ishlashi kerak.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
