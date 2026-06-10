> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu ish jarayoni milliy emlash jadvali qanday qilib shaxsiylashtirilgan tavsiyani shakllantirishini, bemorni qabulga yozish, konsultatsiya va emlash tashriflarida qanday kuzatishini va vaksina dozasi qanday qayd etilishini ko'rsatadi. Bu yerda ishlatilgan barcha resurslar UZ Core'da profillangan.

Ishtirokchilar: Emlash dasturi menejeri / Ma'lumotlar boshqaruvchisi (jadvalni yuritadi); tibbiy registrator (bemorni yozadi); bemor yoki ota-ona/vasiy (tavsiyalarni ko'radi); shifokor va hamshira (yaroqlilikni baholaydi va emlaydi). Klinik tashriflar FHIR [Encounter](StructureDefinition-uz-core-encounter.html) resurslari sifatida olib boriladi — bitta konsultatsiya tashrifi va alohida emlash tashrifi.

Zanjir:

<div>{% include immunization-flow.svg %}</div><br clear="all"/>

### 1. Jadval kod sifatida

Milliy jadval bir marta [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) sifatida e'lon qilinadi. Har bir tavsiya etilgan doza `PlanDefinition.action` hisoblanadi; vaksina va dozalash tafsilotlari `definitionCanonical` orqali `ActivityDefinition`ga yoki milliy kengaytmalar (`doseSequence`, `maximumInterval`, `gracePeriod`) orqali harakat ustida olib boriladi. Dozalar orasidagi minimal intervallar `action.relatedAction.offsetDuration`dan foydalanadi; yaroqlilik `action.condition`dan foydalanadi.

```
GET [base]/PlanDefinition?status=active&context-type-value=focus$http://snomed.info/sct|33879002
```

> Berilgan ko'lam/yurisdiksiya uchun bir vaqtning o'zida faqat bitta jadval versiyasi faol bo'lishi mumkin va jadval validatsiya qoidalarini qondirishi shart (doza ketma-ketligida uzilishlar yo'q, imkonsiz vaqt oynalari yo'q, ikkita bir-biriga ustma-ust tushadigan faol versiya yo'q). [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) sahifasiga qarang.

### 2. Tavsiyani shakllantirish

Tavsiya mexanizmi faol PlanDefinition'ni, bemorning mavjud [Immunization](StructureDefinition-uz-core-immunization.html) tarixini va bemorning demografik ma'lumotlarini o'qiydi hamda [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) hosil qiladi. Har bir yozuv `vaccineCode` va/yoki `targetDisease`, `doseNumber`, `forecastStatus` (muddati keldi, muddati o'tdi, …) va `dateCriterion` (eng erta/tavsiya etilgan/eng kech sanalar) ni olib boradi.

```
# read what a patient is due for
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# read the doses already given
GET [base]/Immunization?patient=Patient/[id]&status=completed
```

Tavsiya odatda jadval va bemor tarixi asosida mexanizm tomonidan *hisoblab chiqiladi* - mijozlar uni ko'rsatadi. Konsultatsiya davomida klinisist uni ko'rib chiqishi yoki mexanizm uni shakllantirmagan hollarda yaratishi ham mumkin.

### 3. Konsultatsiya tashrifi

Tibbiy yordam [Encounter](StructureDefinition-uz-core-encounter.html) doirasida ko'rsatiladi. Yozuv va konsultatsiya bitta uzoq muddatli konsultatsiya tashrifidan foydalanadi, uning `status`i tashrif davom etishi bilan o'zgarib boradi — har bir medxodim uchun yangi Encounter yaratilmaydi:

- Tibbiy registrator bemorni yozadi va `status = planned` bilan Encounter yaratadi. `subject` — bemor, `serviceProvider` — klinika, `participant` esa registrator va tayinlangan hamshirani o'z ichiga oladi. Endi bemor o'sha hamshiraning ish ro'yxatida paydo bo'ladi.
- Hamshira birlamchi qabul uchun tashrifni ochadi va o'sha Encounter'ni `status = in-progress` ga yangilaydi, tashrif `reason`ini va `actualPeriod`ni qayd etadi.
- Oilaviy shifokor bemorni o'sha Encounter doirasida ko'rikdan o'tkazadi, [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html)ni ko'rib chiqadi yoki yaratadi va `Encounter.reason`ni o'sha tavsiyaga ishora qilib qo'yish orqali uni bog'laydi. Konsultatsiya tugagach, Encounter `status = completed` ga o'tadi.

```
# registrar books the patient (consultation encounter)
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "planned",
  "subject": { "reference": "Patient/[id]" },
  "serviceProvider": { "reference": "Organization/[clinic]" },
  "participant": [{ "actor": { "reference": "Practitioner/[nurse]" } }]
}

# nurse opens the visit
PUT [base]/Encounter/[id]    # status -> in-progress, set reason, actualPeriod

# doctor links the recommendation and closes the consult
PUT [base]/Encounter/[id]    # reason -> ImmunizationRecommendation, status -> completed
```

### 4. Dozani kiritish

Vaksinatsiya odatda konsultatsiyaga qaraganda boshqa muassasada, boshqa kunda o'tkaziladi - shu sababli u konsultatsiya tashrifi emas, balki alohida Encounter'ga qayd etiladi. Hamshira kiritish uchun o'sha emlash tashrifini (`status = in-progress`) ochadi, so'ngra unga `Immunization.encounter` orqali va tavsiyaga `Immunization.basedOn` orqali ishora qiluvchi [Immunization](StructureDefinition-uz-core-immunization.html)ni qayd etadi. `status` natijani olib boradi:

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
  "encounter": { "reference": "Encounter/[vaccination-encounter-id]" },
  "basedOn": [{ "reference": "ImmunizationRecommendation/[id]" }],
  "occurrenceDateTime": "2026-05-30",
  "lotNumber": "AB-2231",
  "performer": [{ "actor": { "reference": "PractitionerRole/[id]" } }],
  "protocolApplied": [{ "doseNumberPositiveInt": 1 }]
}
```

> Doza bemor + vaccineCode + occurrence + lotNumber bo'yicha yagona tarzda aniqlanadi - bir xil kombinatsiyani ikki marta yubormang.

### 5. Reaksiyani qayd etish (agar bo'lsa)

Agar bemorda emlashdan keyingi reaksiya bo'lsa, `suspectEntity`si Immunization'ga ishora qiluvchi [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)ni qayd eting, ixtiyoriy ravishda reaksiyani tavsiflovchi [Observation](StructureDefinition-uz-core-observation.html) bilan.

### Bog'liq

- Profillar: [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) &middot; [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Immunization](StructureDefinition-uz-core-immunization.html) &middot; [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)
- [Ish jarayonlari sharhi](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
