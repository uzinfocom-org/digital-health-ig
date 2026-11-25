> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini koddan ajratadi va URL da `%7C` sifatida kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Slot/[id]
```

**Slotlarni qidirish**

```
GET [base]/Slot?schedule=Schedule/[id]&status=free&start=ge2026-11-02&start=lt2026-11-03
GET [base]/Slot?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs%7C394814009&status=free
GET [base]/Slot?service-category=https://terminology.dhp.uz/fhir/core/CodeSystem/appointment-service-category-cs%7C270
GET [base]/Slot?identifier=[system]%7C[value]
```

Birinchi so'rov bitta jadvalning bir kundagi bo'sh slotlarini chiqaradi; ikkinchisi umumiy amaliyot shifokoridagi bo'sh slotlarni topadi.

**Yaratish**

```
POST [base]/Slot
{
  "resourceType": "Slot",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-slot"]
  },
  "schedule": { "reference": "Schedule/[id]" },
  "status": "free",
  "start": "2026-11-02T09:00:00+05:00",
  "end": "2026-11-02T09:30:00+05:00"
}
```

**Yangilash** (masalan, slotni band deb belgilash uchun): to'liq resursni `PUT [base]/Slot/[id]` orqali yuboring, `status` ni `busy` ga o'zgartiring va o'qilgan versiyani o'z ichiga olgan `If-Match` sarlavhasini qo'shing, shunda ikki bemor bir vaqtda bitta slotni egallay olmaydi.

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Slot1-36) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
