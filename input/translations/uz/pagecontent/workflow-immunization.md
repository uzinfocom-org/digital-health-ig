Ushbu ish jarayoni milliy vaksinatsiya jadvali bemor uchun shaxsiy tavsiyani qanday shakllantirishini, bemor qabulga yozilish, konsultatsiya va vaksinatsiya tashriflaridan qanday o'tishini hamda vaksina dozasi qanday qayd etilishini ko'rsatadi. Bu yerda foydalaniladigan barcha resurslar UZ Core'da profillangan.

Ishtirokchilar: Vaksinatsiya dasturi rahbari / ma'lumotlarni boshqarish uchun mas'ul mutaxassis (jadvalni yuritadi); tibbiy registrator (bemorni qabulga yozadi); bemor yoki ota-ona/qonuniy vakil (tavsiyalarni ko'radi); shifokor va hamshira (muvofiqlikni baholaydi va vaksinani yuboradi). Klinik tashriflar FHIR [Encounter](StructureDefinition-uz-core-encounter.html) resurslari ko'rinishida qayd etiladi - konsultatsiya uchun bitta Encounter va vaksinatsiya uchun alohida Encounter.

Jarayon ketma-ketligi:

<div>{% include immunization-flow.svg %}</div><br clear="all"/>

### 1. Vaksinatsiya jadvali kod ko'rinishida

Milliy vaksinatsiya jadvali [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) sifatida bir marta e'lon qilinadi. Har bir tavsiya etilgan doza `PlanDefinition.action` orqali ifodalanadi; vaksina va dozalash tafsilotlari action'da `definitionCanonical` orqali `ActivityDefinition`'ga reference berish yordamida ko'rsatiladi. Maqsadli yosh yoki jadval `action.timing[x]` (`Age` yoki `Timing`) orqali beriladi; dozalar orasidagi eng qisqa vaqt oralig'i `action.relatedAction.offsetDuration` orqali, muvofiqlik shartlari esa `action.condition` orqali belgilanadi.

```
GET [base]/PlanDefinition?status=active&context-type-value=focus$http://snomed.info/sct|33879002
```

> Muayyan qo'llanish sohasi/yurisdiksiya uchun bir vaqtning o'zida jadvalning faqat bitta versiyasi faol bo'lishi mumkin. Jadval validatsiya qoidalariga mos kelishi shart (dozalar ketma-ketligida uzilishlar, bajarib bo'lmaydigan vaqt oralig'i va bir-birini qoplaydigan ikkita faol versiya bo'lmasligi kerak). [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) sahifasiga qarang.

### 2. Tavsiyani shakllantirish

Tavsiyalarni shakllantirish mexanizmi faol PlanDefinition'ni, bemorning mavjud [Immunization](StructureDefinition-uz-core-immunization.html) tarixini va demografik ma'lumotlarini o'qiydi hamda [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) yaratadi. Har bir yozuvda `vaccineCode` va/yoki `targetDisease`, `doseNumber`, `forecastStatus` (due, overdue, …) hamda `dateCriterion` (eng erta/tavsiya etilgan/eng kech sanalar) bo'ladi.

```
# bemor uchun muddati kelgan dozalarni olish
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# avval yuborilgan dozalarni olish
GET [base]/Immunization?patient=Patient/[id]&status=completed
```

Tavsiya odatda mexanizm tomonidan jadval va bemor tarixiga asoslanib *computed* tarzda shakllantiriladi - mijoz tizimlari uni ko'rsatadi. Konsultatsiya vaqtida tibbiyot xodimi tavsiyani ko'rib chiqishi yoki mexanizm uni shakllantirmagan bo'lsa, qo'lda yaratishi mumkin.

### 3. Konsultatsiya uchun Encounter

Tibbiy yordam [Encounter](StructureDefinition-uz-core-encounter.html) doirasida ko'rsatiladi. Bemorni qabulga yozish va konsultatsiya butun tashrif davomida saqlanadigan bitta konsultatsiya Encounter resursi doirasida amalga oshiriladi; tashrif davom etishi bilan uning `status` qiymati o'zgaradi - har bir tibbiyot xodimi uchun yangi Encounter yaratilmaydi:

- Tibbiy registrator bemorni qabulga yozadi va `status = planned` bilan Encounter yaratadi. `subject` - bemorni, `serviceProvider` - klinikani, `participant` esa registrator va biriktirilgan hamshirani ko'rsatadi. Shundan so'ng bemor ushbu hamshiraning ish ro'yxatida paydo bo'ladi.
- Hamshira birlamchi qabul uchun tashrifni boshlaydi va o'sha Encounter'ni `status = in-progress` holatiga yangilaydi, tashrifning `reason` elementini va `actualPeriod` elementini qayd etadi.
- Oilaviy shifokor bemorni o'sha Encounter doirasida ko'rikdan o'tkazadi, [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html)'ni ko'rib chiqadi yoki yaratadi hamda `Encounter.reason` elementida ushbu tavsiyaga reference ko'rsatadi. Konsultatsiya tugagach, Encounter `status = completed` holatiga o'tadi.

```
# registrator bemorni qabulga yozadi (konsultatsiya uchun Encounter)
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "planned",
  "subject": { "reference": "Patient/[id]" },
  "serviceProvider": { "reference": "Organization/[clinic]" },
  "participant": [{ "actor": { "reference": "Practitioner/[nurse]" } }]
}

# hamshira tashrifni boshlaydi
PUT [base]/Encounter/[id]    # status -> in-progress, reason va actualPeriod'ni belgilash

# shifokor tavsiyani bog'laydi va konsultatsiyani yakunlaydi
PUT [base]/Encounter/[id]    # reason -> ImmunizationRecommendation, status -> completed
```

### 4. Vaksina dozasini yuborish

Vaksinatsiya odatda konsultatsiyadan boshqa tibbiyot muassasasida va boshqa kuni o'tkaziladi, shuning uchun u konsultatsiya Encounter resursida emas, alohida Encounter'da qayd etiladi. Hamshira vaksinani yuborish uchun ushbu Encounter'ni (`status = in-progress`) holatida ochadi, so'ng [Immunization](StructureDefinition-uz-core-immunization.html) resursini qayd etadi. U `Immunization.encounter` orqali vaksinatsiya Encounter'iga, `Immunization.basedOn` orqali esa tavsiyaga reference beradi. Natija `status` orqali ko'rsatiladi:

| Natija | `Immunization.status` | Shuningdek, quyidagilarni to'ldirish |
|---------|------------------------|----------|
| Vaksina yuborildi | `completed` | `occurrence`, `vaccineCode`, `administeredProduct`, `lotNumber`, `doseQuantity`, `performer` |
| Tibbiy cheklov | `not-done` | `statusReason` = `MEDPREC` (tibbiy ehtiyot chorasi) yoki `IMMUNE` (immunitet mavjudligi) |
| Rad etish | `not-done` | `statusReason` = `PATOBJ` (bemorning rad etishi) |
| Vaksina mavjud emas | `not-done` | `statusReason` = `OSTOCK` (vaksina mavjud emas) |
| Xato qayd etilgan | `entered-in-error` | - |

`statusReason` [Immunization status sabablari ValueSet](ValueSet-immunization-status-reason-vs.html)'iga majburiy (required) bog'langan; yuqorida keltirilgan HL7 v3 ActReason tizimidagi to'rtta kod yagona ruxsat etilgan qiymatlardir.

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

> Doza patient + vaccineCode + occurrence + lotNumber kombinatsiyasi orqali yagona tarzda aniqlanadi. Bir xil kombinatsiyani takroran yubormang.

### 5. Reaksiyani qayd etish (agar mavjud bo'lsa)

Bemorda vaksinatsiyadan keyingi reaksiya kuzatilsa, [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) resursini qayd eting; uning `suspectEntity` elementi Immunization'ga reference beradi. Zarur bo'lsa, reaksiyani tavsiflovchi [Observation](StructureDefinition-uz-core-observation.html) resursini ham qo'shish mumkin.

### Bog'liq materiallar

- Profillar: [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) &middot; [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Immunization](StructureDefinition-uz-core-immunization.html) &middot; [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)
- [Ish jarayonlari haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
