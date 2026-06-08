> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - bu [FHIR server bazaviy URL manzili](api-access.html#endpoints); `|` token tizimini uning qiymatidan ajratadi va URL-kodlash sifatida `%7C` ko'rinishida kodlanishi shart. Ushbu o'zaro ta'sirlar standart FHIR R5 qidiruv parametrlaridan foydalanadi; ushbu resurs uchun yakunlangani sari [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) hujjatiga qarang.

**Nojo'ya hodisani server identifikatori bo'yicha o'qish**

```
GET [base]/AdverseEvent/[id]
```

**Foydali qidiruvlar**

```
# all adverse events for a patient
GET [base]/AdverseEvent?subject=Patient/[id]

# serious events only, most recent first
GET [base]/AdverseEvent?subject=Patient/[id]&seriousness=http://terminology.hl7.org/CodeSystem/adverse-event-seriousness%7Cserious&_sort=-date

# by date, status, or event code
GET [base]/AdverseEvent?subject=Patient/[id]&date=ge2026-01-01
GET [base]/AdverseEvent?status=completed
GET [base]/AdverseEvent?code=http://snomed.info/sct%7C39579001
```

**Yangi nojo'ya hodisani qayd etish**

```
POST [base]/AdverseEvent
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

**Nojo'ya hodisani yangilash** (masalan, ma'lum bo'lgach natija yoki yuzaga kelgan holatni qo'shish)

```
PUT [base]/AdverseEvent/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "AdverseEvent",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

### Aloqador

- [Immunizatsiya ish jarayoni](workflow-immunization.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
