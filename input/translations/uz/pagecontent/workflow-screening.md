Ushbu ish jarayoni milliy skrining dasturi qanday belgilanishini, platforma bemorning skriningga muvofiqligini qanday baholashini, bemorning skrining rejasi (taklifi) qanday topilishi yoki yaratilishini, skrining tashrifi davomida so'rovnoma javoblari va natijalar ushbu reja doirasida qanday qayd etilishini hamda ijobiy topilma keyingi kuzatuvga qanday olib kelishini ko'rsatadi. Bu umumiy sxema. Muayyan dasturlarning qoidalari - dastur kodlari, natija profillari va rejani qaysi tizim yopishi - [DHP Integrations IG](https://dhp.uz/fhir/integrations/uz/cervical-breast-cancer-screening.html) qo'llanmasining bachadon bo'yni va ko'krak bezi saratoni skriningi sahifasida tavsiflangan.

Ishtirokchilar: skrining dasturi rahbari (dastur ta'rifini yuritadi); DHP (muvofiqlikni baholaydi va milliy takliflarni shakllantiradi); klinikaning tibbiy axborot tizimi (TAT) va skriningni o'tkazuvchi tibbiyot xodimlari; keyingi tekshiruvni bajaruvchi tibbiyot tashkiloti.

Asosiy qoida bir jumlada:

> Dastur - bu [PlanDefinition](StructureDefinition-uz-core-plan-definition.html). Bemorning skrining rejasi yoki taklifi - `intent = plan` bo'lgan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html). Skrining davomida qayd etilgan barcha ma'lumotlar `basedOn` orqali ushbu rejaga reference beradi.

<div>{% include screening-sequence.svg %}</div><br clear="all"/>

### 1. Dastur kod ko'rinishida

Skrining dasturi aynan bitta `focus` foydalanish konteksti SNOMED CT `360156006` (Screening intent - skrining maqsadi) bo'lgan PlanDefinition sifatida e'lon qilinadi. `jurisdiction` foydalanish kontekstlari dastur qayerda qo'llanilishini ko'rsatadi: milliy darajada (`UZ`) yoki alohida viloyatlarda. `subjectReference` maqsadli aholi guruhiga - `group-0001-00001` (Skriningning maqsadli guruhi) kodli [Group](StructureDefinition-uz-core-group.html) resursiga ishora qiladi; uning `characteristic` yozuvlari kim kiritilishi va kim chiqarib tashlanishini tavsiflaydi. Har bir skrining tadbiri o'z `timing[x]` (masalan, har uch yilda bir marta HbA1c tahlili), muvofiqlik sharti `condition` va `participant` elementlariga ega bo'lgan `action` hisoblanadi.

```
# faol skrining dasturlari
GET [base]/PlanDefinition?status=active&context=http://snomed.info/sct|360156006

# dastur kodi bo'yicha bitta dastur (bu yerda qandli diabet skriningi)
GET [base]/PlanDefinition?status=active&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004
```

```
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition"] },
  "url": "...", "name": "...", "description": "...",
  "status": "active",
  "subjectReference": { "reference": "Group/[target-group-id]" },
  "useContext": [{
    "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
    "valueCodeableConcept": { "coding": [{ "system": "http://snomed.info/sct", "code": "360156006", "display": "Screening intent" }] }
  }],
  "action": [{
    "linkId": "action-1",
    "title": "Glycated haemoglobin test",
    "code": { "coding": [{ "system": "http://hl7.org/fhir/action-code", "code": "order-service", "display": "Order a service" }] },
    "timingTiming": { "repeat": { "frequency": 1, "period": 3, "periodUnit": "a" } },
    "participant": [{ "type": "practitioner" }]
  }]
}
```

DHP Integrations IG dastur ta'rifiga ikkita element qo'shadi. Tizimi `https://dhp.uz/fhir/core/sid/prg/uz/program` bo'lgan va [skrining dasturlari turlari](ValueSet-screening-program-type-vs.html) dan kod oladigan dastur `identifier` elementi dasturni ko'rsatadi. `action.definitionCanonical` taklif shabloni bo'lgan [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) ga ishora qiladi (`kind = ServiceRequest`, `intent = plan`). Qo'llanish kontekstlari, maqsadli Group va davriylik uchun [hududiy skrining misoli](PlanDefinition-example-uz-core-regional-screening-plan-definition.html) ga, identifikator va taklif shabloni uchun esa DHP Integrations IG'dagi [HPV va bachadon bo'yni saratoni dasturi misoli](https://dhp.uz/fhir/integrations/uz/PlanDefinition-example-hpv-cervical-plan.html) ga qarang.

> Muayyan qo'llanish sohasi/yurisdiksiya uchun bir vaqtning o'zida jadvalning faqat bitta versiyasi faol bo'lishi mumkin. Validatsiya qoidalari uchun [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) sahifasiga qarang.

### 2. Skriningga muvofiqlikni baholash

Platforma bemorning skriningga muvofiqligini Patient resursining `$screening-evaluate` operatsiyasi yordamida baholaydi. Ushbu operatsiya ishchi va test [serverlari](api-access.html#endpoints) CapabilityStatement'ida `https://dhp.uz/fhir/core/OperationDefinition/patient-screening-evaluate` kanonik manzili bilan e'lon qilingan.

> OperationDefinition hali ushbu qo'llanmada e'lon qilinmagan. Uning parametrlari, chaqiruv darajasi - tur (`Patient/$screening-evaluate`) yoki instance (`Patient/[id]/$screening-evaluate`) - va natija tuzilmasi keyinroq tavsiflanadi. Ungacha bemorning ochiq rejalarini to'g'ridan-to'g'ri o'qing (3-qadam).

### 3. Bemorning skrining rejasi

Har bir bemor va har bir dastur uchun bitta ochiq reja mavjud: `intent = plan`, `category` SNOMED CT `310422005` (Profilaktika/skrining taklifi) va dastur `identifier` elementiga ega ServiceRequest. Milliy taklif - DHP tomonidan `status = draft` bilan va `instantiatesCanonical` elementida aniq `PlanDefinition.url|version` qiymati bilan yaratiladigan reja. Taklif bo'lmasa, TAT `instantiatesCanonical`siz, `active` holatidagi o'z rejasini yaratadi.

```
POST [base]/ServiceRequest
If-None-Exist: [rejaning to'liq identifikatsiyasi]
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "status": "active",
  "intent": "plan",
  "category": [{ "coding": [{ "system": "http://snomed.info/sct", "code": "310422005", "display": "Prevention/screening invitation" }] }],
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" }] } },
  "subject": { "reference": "Patient/[id]" },
  "authoredOn": "2026-10-09T09:00:00+05:00",
  "performer": [{ "reference": "Organization/[clinic]" }]
}
```

Har qanday skrining ma'lumotini saqlashdan oldin TAT aynan shu dastur uchun ochiq rejani qidiradi:

```
GET [base]/ServiceRequest?subject=Patient/[id]&intent=plan&status=draft,active&category=http://snomed.info/sct|310422005&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004&_sort=-_lastUpdated
```

| Qidiruv natijasi | Amal |
|---------------|--------|
| Bitta mos reja topildi | Undan foydalaning; milliy taklif `PUT` va `If-Match` orqali `draft` qiymatini `active` ga o'zgartirish bilan qabul qilinadi, qolgan elementlar saqlanadi |
| Ochiq reja yo'q | Yuqorida ko'rsatilganidek, `active` holatidagi TAT rejasini yarating |
| Bir nechta mos reja topildi | Natijalarni bog'lashdan oldin dublikatlarni bartaraf eting |

Takroriy so'rov dublikat yaratmasligi uchun rejani rejaning to'liq identifikatsiyasi bilan shartli yaratish (`If-None-Exist`) orqali yarating.

Milliy taklif uchun `instantiatesCanonical` ni dasturning joriy versiyasi bilan ham solishtiring: eskiroq ta'rifga tegishli taklifdan qayta foydalanilmaydi. Yangiroq taklif o'zi almashtiradigan taklifga `replaces` orqali reference beradi.

| Reja holati | `ServiceRequest.status` | `instantiatesCanonical` |
|------------|-------------------------|-------------------------|
| Milliy taklif, hali qabul qilinmagan | `draft` | <code>PlanDefinition.url&#124;version</code> |
| Taklif qabul qilingan yoki TATning o'z rejasi ishlatilmoqda | `active` | taklifda saqlanadi, TAT rejasida bo'lmaydi |
| Skrining yakunlangan | `completed` | o'zgarmaydi |

Reja holatini TAT o'zgartiradi; DHP qabul qilingan natijalarga asoslanib rejani yakunlangan deb hisoblamaydi. Reja qachon yakunlanishi dasturga bog'liq: bir dastur takroriy tekshiruvlar davomida rejani `active` holatida saqlaydi, boshqasi esa to'ldirilgan so'rovnomadan keyin uni yakunlaydi. [Skrining rejalari va takliflar](https://dhp.uz/fhir/integrations/uz/cervical-breast-cancer-screening.html#skrining-rejalari-va-takliflar), [Bemor rejasini to'ldirish](https://dhp.uz/fhir/integrations/uz/cervical-breast-cancer-screening.html#bemor-rejasini-toldirish) va [Rejani qidirish, faollashtirish va yaratish](https://dhp.uz/fhir/integrations/uz/cervical-breast-cancer-screening.html#rejani-qidirish-faollashtirish-va-yaratish) bo'limlariga qarang.

### 4. Skrining tashrifi: so'rovnomalar

Tashrif [Encounter](StructureDefinition-uz-core-encounter.html) resursi bilan ifodalanadi. Xavfni baholash uchun skrining [Questionnaire](StructureDefinition-uz-core-questionnaire.html) resursidan foydalaniladi; javoblar so'rovnomani kanonik manzili orqali ko'rsatadigan va `basedOn` orqali rejaga reference beradigan [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) da qayd etiladi. Yangi javoblar faqat `active` holatidagi so'rovnomalar uchun qabul qilinadi. Bir qator so'rovnomalar javoblar asosida umumiy ball va xavf darajasini hisoblaydi (masalan, qandli diabet so'rovnomasidagi `diabetes-total-score` va `diabetes-risk-category`).

```
# dastur so'rovnomasi
GET [base]/Questionnaire?status=active&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004

POST [base]/QuestionnaireResponse
{
  "resourceType": "QuestionnaireResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response"] },
  "questionnaire": "https://dhp.uz/fhir/integrations/Questionnaire/DiabetesScreeningQuestionnaire",
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "basedOn": [{ "reference": "ServiceRequest/[plan-id]" }],
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  "authored": "2026-10-09T09:15:00+05:00",
  "item": [ ... ]
}
```

Skrining so'rovnomalari DHP Integrations IG'da e'lon qilingan:

| So'rovnoma | Dastur identifikatori | Holati |
|---------------|--------------------|--------|
| [Yurak-qon tomir kasalliklari xavfi](https://dhp.uz/fhir/integrations/uz/Questionnaire-CVDRiskScreeningQuestionnaire.html) | `300007000` (Yurak-qon tomir tizimi kasalliklari skriningi) | `draft` |
| [Qandli diabet](https://dhp.uz/fhir/integrations/uz/Questionnaire-DiabetesScreeningQuestionnaire.html) | `171183004` (Qandli diabet skriningi) | `active` |
| [Serebrovaskulyar kasalliklar](https://dhp.uz/fhir/integrations/uz/Questionnaire-CerebrovascularScreeningQuestionnaire.html) | `mserv-0007-00003` (Serebrovaskulyar kasalliklarni erta aniqlash so'rovnomasi) | `draft` |
| [Bachadon bo'yni saratoni](https://dhp.uz/fhir/integrations/uz/Questionnaire-CervicalCancerScreeningQuestionnaire.html) | `mserv-0007-00009` (DMED bachadon bo'yni saratoni skrining dasturi) | `active` |
| [Ko'krak bezi saratoni](https://dhp.uz/fhir/integrations/uz/Questionnaire-BreastCancerScreeningQuestionnaire.html) | `mserv-0007-00007` (DMED ko'krak bezi saratoni skrining dasturi) | `active` |
| [Gijja kasalliklari](https://dhp.uz/fhir/integrations/uz/Questionnaire-HelminthScreeningQuestionnaire.html) | `171147008` (Ichak gelmintozlari skriningi) | `draft` |
| [Yurak ishemik kasalligining test oldi ehtimoli](https://dhp.uz/fhir/integrations/uz/Questionnaire-IhdPretestQuestionnaire.html) | `171223006` (Yurak ishemik kasalligi skriningi) | `draft` |
| [Onkogematologiya](https://dhp.uz/fhir/integrations/uz/Questionnaire-OncohematologyScreeningQuestionnaire.html) | `762445000` (Gematologik kasalliklar skriningi) | `active` |
| [Fertillik](https://dhp.uz/fhir/integrations/uz/Questionnaire-FertilityQuestionnaire.html) | `408961002` (Fertillikni baholash) | `active` |

`draft` holatidagi so'rovnomalar hali javoblarni yig'ish uchun ishlatilmaydi; `status=active` so'rovi ularni qaytarmaydi.

> Bemor tomonidan to'ldirilgan QuestionnaireResponse axborot xarakteriga ega. U avtomatik ravishda Condition yoki Observation'ga aylantirilmaydi; buning uchun tibbiyot xodimining Encounter doirasidagi harakati zarur.

### 5. Natijalar

Skrining davomida tayinlangan tahlil va tekshiruvlar [laboratoriya jarayoni](workflow-lab.html) bo'yicha o'tkaziladi: tayinlash ServiceRequest, so'ngra [Observation](StructureDefinition-uz-core-observation.html) va [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). Har bir natija o'z tayinlashiga reference'ni saqlaydi va qo'shimcha ravishda rejaga reference beradi:

| Resurs | Rejaga bog'lanish |
|----------|------------------|
| QuestionnaireResponse, Observation, DiagnosticReport, Procedure, tayinlash ServiceRequest | `basedOn` |
| Specimen | `request` |
| Condition | [event-basedOn](https://hl7.org/fhir/extensions/StructureDefinition-event-basedOn.html) kengaytmasi |

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "basedOn": [
    { "reference": "ServiceRequest/[order-id]" },
    { "reference": "ServiceRequest/[plan-id]" }
  ],
  "status": "final",
  "category": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory", "display": "Laboratory" }] }],
  "code": { "coding": [{ "system": "http://loinc.org", "code": "4548-4", "display": "Hemoglobin A1c/Hemoglobin.total in Blood" }] },
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  "effectiveDateTime": "2026-10-09T10:00:00+05:00",
  "valueQuantity": { "value": 6.1, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
}
```

Reja doirasida qayd etilgan barcha ma'lumotlarni olish:

```
GET [base]/QuestionnaireResponse?based-on=ServiceRequest/[plan-id]
GET [base]/Observation?based-on=ServiceRequest/[plan-id]
GET [base]/DiagnosticReport?based-on=ServiceRequest/[plan-id]
```

Muayyan dasturlarning natijalari (sitologiya, VPCh testi, kolposkopiya, mammografiya, gistologiya) uchun DHP Integrations IG'da alohida profillar belgilangan; [Klinik resurslarni bog'lash va holatni o'zgartirish](https://dhp.uz/fhir/integrations/uz/cervical-breast-cancer-screening.html#klinik-resurslarni-boglash-va-holatni-ozgartirish) bo'limiga qarang.

### 6. Ijobiy natijada keyingi kuzatuv

Natija me'yordan chetga chiqsa yoki so'rovnoma yuqori xavf darajasini ko'rsatsa, tibbiyot xodimi tashxis qo'yilgan bo'lsa, uni [Condition](StructureDefinition-uz-core-condition.html) sifatida qayd etadi va keyingi tekshiruvni `intent = order` bo'lgan ServiceRequest sifatida rasmiylashtiradi. U `basedOn` orqali rejaga reference beradi va topilmani `reason` elementida ko'rsatadi. Mutaxassisga yo'llanma so'ngra [elektron yo'llanmaning hayot sikli](workflow-referral.html) bo'yicha o'tadi.

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "306206005", "display": "Referral to service" }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "basedOn": [{ "reference": "ServiceRequest/[plan-id]" }],
  "reason": [{ "reference": { "reference": "Observation/[id]" } }]
}
```

Bemor bilan kelishilgan sog'liq maqsadi (masalan, HbA1c ning maqsadli darajasi) - `addresses` elementi orqali Condition yoki Observation'ga reference beradigan [Goal](StructureDefinition-uz-core-goal.html).

### Bog'liq materiallar

- Profillar: [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) &middot; [Group](StructureDefinition-uz-core-group.html) &middot; [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Questionnaire](StructureDefinition-uz-core-questionnaire.html) &middot; [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Goal](StructureDefinition-uz-core-goal.html)
- Komponent: [Skrining jadvallarini boshqarish](components.html#screening-schedules-management) &middot; [So'rovnomalar](forms.html)
- DHP Integrations IG: [Bachadon bo'yni va ko'krak bezi saratoni skriningi](https://dhp.uz/fhir/integrations/uz/cervical-breast-cancer-screening.html)
- [Ish jarayonlari haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
