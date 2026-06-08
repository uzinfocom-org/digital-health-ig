> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu ish jarayoni milliy emlash jadvali qanday qilib shaxsiylashtirilgan tavsiyani shakllantirishini va vaksina dozasi qanday qayd etilishini ko'rsatadi. Bu yerda ishlatilgan barcha to'rtta resurs UZ Core'da profillangan.

Ishtirokchilar: Emlash dasturi menejeri / Ma'lumotlar boshqaruvchisi (jadvalni yuritadi); bemor yoki ota-ona/vasiy (tavsiyalarni ko'radi); shifokor va hamshira (yaroqlilikni baholaydi va emlaydi).

Zanjir:

<div>{% include immunization-flow.svg %}</div><br clear="all"/>

### 1. Jadval kod sifatida

Milliy jadval bir marta [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) sifatida e'lon qilinadi. Har bir tavsiya etilgan doza `PlanDefinition.action` hisoblanadi; vaksina va dozalash tafsilotlari `definitionCanonical` orqali `ActivityDefinition`ga yoki milliy kengaytmalar (`doseSequence`, `maximumInterval`, `gracePeriod`) orqali harakat ustida olib boriladi. Dozalar orasidagi minimal intervallar `action.relatedAction.offsetDuration`dan foydalanadi; yaroqlilik `action.condition`dan foydalanadi.

```
GET [base]/PlanDefinition?status=active&context-type-value=focus$vaccination
```

> Berilgan ko'lam/yurisdiksiya uchun bir vaqtning o'zida faqat bitta jadval versiyasi faol bo'lishi mumkin va jadval validatsiya qoidalarini qondirishi shart (doza ketma-ketligida uzilishlar yo'q, imkonsiz vaqt oynalari yo'q, ikkita bir-biriga ustma-ust tushadigan faol versiya yo'q). [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) sahifasiga qarang.

### 2. Tavsiyani shakllantirish

Tavsiya mexanizmi faol PlanDefinition'ni, bemorning mavjud [Immunization](StructureDefinition-uz-core-immunization.html) tarixini va bemorning demografik ma'lumotlarini o'qiydi hamda [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) hosil qiladi. Har bir yozuv `vaccineCode` va/yoki `targetDisease`, `doseNumber`, `forecastStatus` (muddati keldi, muddati o'tdi, …) va `dateCriterion` (eng erta/tavsiya etilgan/eng kech sanalar) ni olib boradi.

```
# read what a patient is due for
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# read the doses already given
GET [base]/Immunization?patient=Patient/[id]&status=completed
```

Tavsiya *hisoblab chiqiladi*, qo'lda kiritilmaydi - mijozlar uni ko'rsatadi, ular uni yaratmaydi.

### 3. Baholash va emlash

Shifokor tavsiyani va tarixni ko'rib chiqadi hamda bemorning yaroqliligini hal qiladi. Hamshira emlaydi va tizim `Immunization` qayd etadi. `status` natijani olib boradi:

| Natija | `Immunization.status` | Shuningdek o'rnatiladi |
|---------|------------------------|----------|
| Vaksina berildi | `completed` | `occurrence`, `vaccineCode`, `administeredProduct`, `lotNumber`, `doseQuantity`, `performer` |
| Tibbiy istisno | `not-done` | `statusReason` = `MEDPREC` (tibbiy ehtiyot chorasi) yoki `IMMUNE` (immunitet) |
| Rad etish | `not-done` | `statusReason` = `PATOBJ` (bemorning e'tirozi) |
| Mahsulot mavjud emas | `not-done` | `statusReason` = `OSTOCK` (mahsulot zaxirada yo'q) |
| Xato bilan qayd etilgan | `entered-in-error` | - |

`statusReason` [Immunization status reason value set](ValueSet-immunization-status-reason-vs.html)ga (required) bog'langan; yuqoridagi to'rtta kod, HL7 v3 ActReason'dan, yagona yaroqli qiymatlardir.

```
POST [base]/Immunization
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03" }] },
  "patient": { "reference": "Patient/[id]" },
  "occurrenceDateTime": "2026-05-30",
  "lotNumber": "AB-2231",
  "performer": [{ "actor": { "reference": "PractitionerRole/[id]" } }],
  "protocolApplied": [{ "doseNumberPositiveInt": 1 }]
}
```

> Doza bemor + vaccineCode + occurrence + lotNumber bo'yicha yagona tarzda aniqlanadi - bir xil kombinatsiyani ikki marta yubormang.

### 4. Reaksiyani qayd etish (agar bo'lsa)

Agar bemorda emlashdan keyingi reaksiya bo'lsa, `suspectEntity`si Immunization'ga ishora qiluvchi [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)ni qayd eting, ixtiyoriy ravishda reaksiyani tavsiflovchi [Observation](StructureDefinition-uz-core-observation.html) bilan.

### Bog'liq

- Profillar: [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) &middot; [Immunization](StructureDefinition-uz-core-immunization.html) &middot; [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)
- [Ish jarayonlari sharhi](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
