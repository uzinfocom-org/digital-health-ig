> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Buyumni server id bo'yicha o'qish**

```
GET [base]/Device/[id]
```

**Ro'yxatdan o'tkazishdan oldin buyumni topish (odatdagi birinchi qadam)**

```
GET [base]/Device?serial-number=SN-2023-001456
GET [base]/Device?type=http://snomed.info/sct%7C54953005&organization=Organization/[id]
```

**Boshqa foydali qidiruvlar**

```
GET [base]/Device?organization=Organization/[id]&status=active
GET [base]/Device?location=Location/[id]
GET [base]/Device?manufacturer=Siemens Healthineers&model=SOMATOM Edge
GET [base]/Device?device-name=SOMATOM
GET [base]/Device?lot-number=CU-2025-0412
GET [base]/Device?expiration-date=le2026-12-31
```

**Yangi buyumni ro'yxatdan o'tkazish** (faqat mos keladigan yozuv yo'qligini tasdiqlagandan keyin)

```
POST [base]/Device
{
  "resourceType": "Device",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-device" ] },
  "status": "active",
  "type": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "54953005" } ] } ],
  "serialNumber": "...",
  ...
}
```

**Mavjud buyumni yangilash** (masalan, `availabilityStatus` ni `damaged` ga yoki buyum foydalanishdan chiqarilganda `status` ni `inactive` ga o'rnatish)

```
PUT [base]/Device/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Device",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-device" ] },
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
