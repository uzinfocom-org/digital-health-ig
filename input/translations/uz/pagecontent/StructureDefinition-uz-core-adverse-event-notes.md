### Tezkor boshlash

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` belgisi token tizimini uning qiymatidan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak. Ushbu amallarda standart FHIR R5 qidiruv parametrlaridan foydalaniladi; ushbu resurs uchun [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) yakuniy holatga keltirilishi davomida uni tekshirib boring.

**Nojo'ya hodisani server identifikatori bo'yicha o'qish**

```
GET [base]/AdverseEvent/[id]
```

**Foydali qidiruvlar**

```
# bemorning barcha nojo'ya hodisalari
GET [base]/AdverseEvent?subject=Patient/[id]

# faqat jiddiy hodisalar, eng so'nggilari birinchi
GET [base]/AdverseEvent?subject=Patient/[id]&seriousness=http://terminology.hl7.org/CodeSystem/adverse-event-seriousness%7Cserious&_sort=-date

# sana, status yoki hodisa kodi bo'yicha
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

**Nojo'ya hodisani yangilash** (masalan, ma'lum bo'lgach oqibat yoki yuzaga kelgan Condition ni qo'shish)

```
PUT [base]/AdverseEvent/[id]
If-Match: W/"3"   # oxirgi o'qishda olingan ETag; o'shandan beri o'zgargan bo'lsa 412
{
  "resourceType": "AdverseEvent",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

### Bog'liq materiallar

- [Immunization ish jarayoni](workflow-immunization.html)
- [Ushbu qo'llanmani qanday o'qish](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
