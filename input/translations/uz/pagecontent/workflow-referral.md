Ushbu jarayon yo'llanma qanday yaratilishi va bajarilishini ko'rsatadi. Yo'llanmalar bilan ishlashda dasturchilar ko'pincha qiyinchilikka duch keladi, chunki bu jarayonda ikkita resurs ishtirok etadi va ularning o'zaro bog'liqligi profil jadvallaridan aniq ko'rinmaydi. Asosiy qoida bir jumlada quyidagicha:

> [`ServiceRequest`](StructureDefinition-uz-core-servicerequest.html) - yo'llanmaning o'zi, ya'ni *nima* bajarilishi kerakligini ifodalaydi. [`Task`](StructureDefinition-uz-core-referral-approval-task.html) - uni bajarish bo'yicha ishni, ya'ni ishni *kim* bajargani, *qachon* bajargani va *qaysi bosqichda* ekanini ifodalaydi.

Ishtirokchilar: yo'llanma beruvchi klinitsist; kelishish komissiyalari (davlat tomonidan moliyalashtiriladigan yo'llanmalar uchun); xizmat ko'rsatuvchi tibbiyot tashkiloti.

<div>{% include referral-sequence.svg %}</div><br clear="all"/>

### 1. Yo'llanmani yaratish

Klinitsist yo'llanmaning tasniflash ma'lumotlarini o'z ichiga oluvchi `ServiceRequest` (`intent = order`) resursini yaratadi: so'ralgan xizmat `code` elementida, shoshilinchlik darajasi `priority` elementida (`routine` \| `urgent` \| `asap` \| `stat`), maqsadli [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) xizmati `performer` elementida, klinik asos `reason` elementida va moliyalashtirish turi [PaymentType](StructureDefinition-payment-type.html) kengaytmasida [to'lov turlari](CodeSystem-payment-type-cs.html) bo'yicha kodlangan holda (`paytype-0001-0001` Bepul \| `paytype-0001-0002` Pullik \| `paytype-0001-0003` Sug'urta \| `paytype-0001-0004` Davlat tarifi \| `paytype-0001-0005` Boshqalar) ko'rsatiladi.

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
    "valueCodeableConcept": { "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
      "code": "paytype-0001-0004", "display": "Davlat tarifi" }] } }],
  "status": "active", "intent": "order", "priority": "routine",
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "306206005", "display": "Referral to service" }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "performer": [{ "reference": "HealthcareService/[id]" }],
  "reason": [{ "reference": { "reference": "Condition/[id]" } }] }
```

`code` - `CodeableReference`, shuning uchun kodlash `concept` ichida joylashadi. Xizmat [ServiceRequest muolajalari va tekshiruvlari](ValueSet-service-request-code-vs.html) to'plamidan olinadi. Nur diagnostikasi va yadro tibbiyoti xizmatlari milliy [TXMK klassifikatori](CodeSystem-txmk-cs.html) bilan kodlanadi, masalan `5204488` Bosh miyaning kompyuter tomografiyasi:

```
"code": { "concept": { "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/txmk-cs",
  "code": "5204488", "display": "Bosh miyaning kompyuter tomografiyasi" }] } }
```

### 2. Kelishish bosqichlari zanjiri (faqat davlat tomonidan moliyalashtiriladigan uchun)

Bu asosiy qaror qabul qilish qoidasidir:

> Agar ServiceRequest ning PaymentType qiymati `paytype-0001-0004` Davlat tarifi bo'lsa, platforma kelishish uchun `Task` resurslari zanjirini yaratadi; aks holda Task yaratilmaydi va yo'llanma bevosita davom etadi.

Har bir kelishish bosqichi ServiceRequest resursiga reference saqlovchi alohida `Task` resursi bilan ifodalanadi (`Task.focus`/`basedOn`), `Task.code` elementida esa kelishish toifalari to'plamidagi kod ko'rsatiladi:

`approve-family-doctor` &rarr; `approve-specialist` &rarr; `approve-regional-commission` &rarr; `approve-national-commission` &rarr; `approve-insurance-fund` &rarr; `approve-hospitalization`

Task resursida ikkita mustaqil status yo'nalishi mavjud: FHIR-status `Task.status` (hayotiy sikl: `requested`, `accepted`, `in-progress`, `completed`, `rejected`, `on-hold`, `failed`, …) va `Task.businessStatus` (foydalanuvchilarga ko'rsatiladigan biznes holati: `in-review`, `confirmed`, `overdue`, …).

> Task resurslari uchun alohida foydalanuvchi interfeysi nazarda tutilmagan. Menejerlar jarayon hodisalari asosida harakat qiladi va Task resursini bevosita yakunlamaydi. Bu asosiy ish bajarilmasdan turib bosqichni yakunlangan deb belgilashning oldini oladi.

Orders integratsiyasi orqali uzatiladigan yo'llanmalar uning o'z ServiceRequest va kelishish Task profillaridan foydalanadi, ular yo'llanma maqsadi, mutaxassislik, davolash asosi va qo'shimcha biznes statuslarini qo'shadi: DHP Integrations IG dagi [Buyurtmalar](https://dhp.uz/fhir/integrations/uz/orders.html) sahifasiga qarang.

### 3. Statuslarni sinxronlashtirish qoidalari

ServiceRequest va unga bog'liq Task resurslari quyidagi qoidalar asosida o'zaro muvofiq holatda saqlanadi:

| Hodisa | Natija |
|-------|--------|
| ServiceRequest `active` statusiga o'tadi (state-funded) | birinchi kelishish Task resursi `status=requested` bilan yaratiladi |
| ServiceRequest `revoked` statusiga o'tkaziladi | barcha ochiq Task resurslariga `cancelled` statusi beriladi |
| ServiceRequest `entered-in-error` statusiga o'tkaziladi | barcha Task resurslariga `entered-in-error` statusi beriladi |
| Yakuniy kelishish Task resursi `completed` statusiga o'tadi | ServiceRequest `completed` statusiga o'tkaziladi |
| Komissiya Task resursi `failed`/`rejected` statusiga o'tadi | ServiceRequest `revoked` statusiga o'tkaziladi |
| Qayta ishlash uchun qaytarish | Task &rarr; `on-hold` / `in-review`; ServiceRequest &rarr; `on-hold`, so'ngra yangi kelishish Task resursi bilan yana `active` statusiga qaytariladi |
| SLA buzilishi | faqat `Task.businessStatus = overdue` - ServiceRequest statusi o'zgarmaydi |

<div>{% include referral-states.svg %}</div><br clear="all"/>

Foydalanuvchiga ko'rsatiladigan yorliq Task holatidan kelib chiqib shakllantiriladi - masalan, `businessStatus=overdue` &rarr; «Muddati o'tgan», `status=requested` &rarr; «Qabul qilinishini kutmoqda», `status=rejected` &rarr; «Rad etilgan».

### 4. Yo'llanmani bajarish

Xizmat ko'rsatilganda, xizmat ko'rsatuvchi tibbiyot tashkiloti natijani yo'llanma bilan bog'langan holda qayd etadi: [Procedure](StructureDefinition-uz-core-procedure.html) va/yoki [Observation](StructureDefinition-uz-core-observation.html) resursini (tashrif uchun esa [Encounter](StructureDefinition-uz-core-encounter.html) resursini) yaratadi; ularning har biri `basedOn` orqali ServiceRequest resursiga reference saqlaydi. Tasviriy tekshiruv natijalari uchun `ImagingStudy`, matnli xulosa uchun esa [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) qo'llaniladi. Jarayon yakunlanganda yakuniy Task resursiga `completed` statusi, ServiceRequest resursiga ham `completed` statusi beriladi.

```
GET [base]/Task?based-on=ServiceRequest/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/Procedure?based-on=ServiceRequest/[id]
```

Bekor qilingan yo'llanma bajarilishi mumkin emas; faol ServiceRequest mavjud bo'lmasa, Procedure boshlanishi mumkin emas; yakunlangan Procedure resursini o'zgartirish mumkin emas.

### Bog'liq materiallar

- Yo'llanmani bajarishda qo'llaniladigan profillar: [Procedure](StructureDefinition-uz-core-procedure.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- Komponent: [Yo'llanmalar](components.html#referrals)
- [Jarayonlar haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
