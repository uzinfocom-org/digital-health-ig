> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` belgisi kod tizimini uning qiymatidan ajratadi va `%7C` shaklida URL-kodlangan bo'lishi kerak.

Provenance odatda u tavsiflaydigan ma'lumotlar bilan birga uni yaratuvchi tizim tomonidan yoziladi, shuning uchun ko'pchilik mijozlar uni bevosita yaratish o'rniga yozuvning `target` havolasini kuzatib o'qiydi.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Provenance/[id]
```

**Yozuvning provenance ma'lumotini yoki bemorning imzolangan yozuvlarini topish**

```
GET [base]/Provenance?target=DocumentReference/[id]
GET [base]/Provenance?patient=Patient/[id]
GET [base]/Provenance?patient=Patient/[id]&agent=PractitionerRole/[id]
GET [base]/Provenance?patient=Patient/[id]&when=ge2025-01-01
GET [base]/Provenance?entity=DocumentReference/[id]
```

Yozuvni uning provenance ma'lumoti bilan birga bitta so'rovda olish uchun teskari include (reverse include) dan foydalaning, masalan `GET [base]/DocumentReference?_id=[id]&_revinclude=Provenance:target`.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) ga qarang.

### Aloqador

- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
