Ushbu jarayon yo'llanma qanday yaratilishi va bajarilishini ko'rsatadi. Yo'llanmalar bilan ishlashda dasturchilar ko'pincha qiyinchilikka duch keladi, chunki bu jarayonda ikkita resurs ishtirok etadi va ularning o'zaro bog'liqligi profil jadvallaridan aniq ko'rinmaydi. Asosiy qoida bir jumlada quyidagicha:

> `ServiceRequest` - yo'llanmaning o'zi, ya'ni *nima* bajarilishi kerakligini ifodalaydi. `Task` - uni bajarish bo'yicha ishni, ya'ni ishni *kim* bajargani, *qachon* bajargani va *qaysi bosqichda* ekanini ifodalaydi.

> Profillarning holati: ServiceRequest va Task profillari ishlab chiqilmoqda. Ushbu sahifada tizimlar integratsiyani hozirdanoq shu model asosida amalga oshirishi uchun rejalashtirilgan modellashtirish yondashuvi tavsiflangan. Profillar e'lon qilingunga qadar FHIR R5 bazaviy resurslari va quyidagi qoidalardan foydalaning. Yo'llanmani bajarishda qo'llaniladigan [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html), [Encounter](StructureDefinition-uz-core-encounter.html) va [Condition](StructureDefinition-uz-core-condition.html) resurslari profillangan.

Ishtirokchilar: yo'llanma beruvchi klinitsist; kelishish komissiyalari (davlat tomonidan moliyalashtiriladigan yo'llanmalar uchun); xizmat ko'rsatuvchi tibbiyot tashkiloti.

<div>{% include referral-sequence.svg %}</div><br clear="all"/>

### 1. Yo'llanmani yaratish

Klinitsist yo'llanmaning tasniflash ma'lumotlarini o'z ichiga oluvchi `ServiceRequest` (`intent = order`) resursini yaratadi: so'ralgan xizmat `code` elementida, shoshilinchlik darajasi `priority` elementida (`routine` \| `urgent` \| `stat`), maqsadli xizmat `HealthcareService` orqali, klinik asos `reason` elementida va moliyalashtirish turi [PaymentType](StructureDefinition-payment-type.html) kengaytmasida (`Free` \| `Paid` \| `Insurance` \| `State-funded`) ko'rsatiladi.

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest", "status": "active", "intent": "order",
  "priority": "routine",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "..." }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }] }
```

### 2. Kelishish bosqichlari zanjiri (faqat davlat tomonidan moliyalashtiriladigan uchun)

Bu asosiy qaror qabul qilish qoidasidir:

> Agar ServiceRequest ning PaymentType qiymati `State-funded` bo'lsa, platforma kelishish uchun `Task` resurslari zanjirini yaratadi; aks holda Task yaratilmaydi va yo'llanma bevosita davom etadi.

Har bir kelishish bosqichi ServiceRequest resursiga reference saqlovchi alohida `Task` resursi bilan ifodalanadi (`Task.focus`/`basedOn`), `Task.code` elementida esa kelishish toifalari to'plamidagi kod ko'rsatiladi:

`approve-family-doctor` &rarr; `approve-specialist` &rarr; `approve-regional-commission` &rarr; `approve-national-commission` &rarr; `approve-insurance-fund` &rarr; `approve-hospitalization`

Task resursida ikkita mustaqil status yo'nalishi mavjud: FHIR-status `Task.status` (hayotiy sikl: `requested`, `accepted`, `in-progress`, `completed`, `rejected`, `on-hold`, `failed`, …) va `Task.businessStatus` (foydalanuvchilarga ko'rsatiladigan biznes holati: `in-review`, `confirmed`, `overdue`, …).

> Task resurslari uchun alohida foydalanuvchi interfeysi nazarda tutilmagan. Menejerlar jarayon hodisalari asosida harakat qiladi va Task resursini bevosita yakunlamaydi. Bu asosiy ish bajarilmasdan turib bosqichni yakunlangan deb belgilashning oldini oladi.

### 3. Statuslarni sinxronlashtirish qoidalari

ServiceRequest va unga bog'liq Task resurslari quyidagi qoidalar asosida o'zaro muvofiq holatda saqlanadi:

| Hodisa | Natija |
|-------|--------|
| ServiceRequest `active` statusiga o'tadi (state-funded) | birinchi kelishish Task resursi `status=requested` bilan yaratiladi |
| ServiceRequest `revoked` statusiga o'tkaziladi | barcha ochiq Task resurslariga `revoked` statusi beriladi |
| ServiceRequest `entered-in-error` statusiga o'tkaziladi | barcha Task resurslariga `entered-in-error` statusi beriladi |
| Yakuniy kelishish Task resursi `completed` statusiga o'tadi | ServiceRequest `completed` statusiga o'tkaziladi |
| Komissiya Task resursi `failed`/rejected statusiga o'tadi | ServiceRequest `revoked` statusiga o'tkaziladi |
| Qayta ishlash uchun qaytarish | Task &rarr; `on-hold` / `in-review`; ServiceRequest &rarr; `on-hold`, so'ngra yangi kelishish Task resursi bilan yana `active` statusiga qaytariladi |
| SLA buzilishi | faqat `Task.businessStatus = overdue` - ServiceRequest statusi o'zgarmaydi |

<div>{% include referral-states.svg %}</div><br clear="all"/>

Foydalanuvchiga ko'rsatiladigan yorliq Task holatidan kelib chiqib shakllantiriladi - masalan, `businessStatus=overdue` &rarr; «Muddati o'tgan», `status=requested` &rarr; «Qabul qilinishini kutmoqda», `status=rejected` &rarr; «Rad etilgan».

### 4. Yo'llanmani bajarish

Xizmat ko'rsatilganda, xizmat ko'rsatuvchi tibbiyot tashkiloti natijani yo'llanma bilan bog'langan holda qayd etadi: [Procedure](StructureDefinition-uz-core-procedure.html) va/yoki [Observation](StructureDefinition-uz-core-observation.html) resursini (tashrif uchun esa [Encounter](StructureDefinition-uz-core-encounter.html) resursini) yaratadi; ularning har biri `basedOn` orqali ServiceRequest resursiga reference saqlaydi. Tasviriy tekshiruv natijalari uchun `ImagingStudy`/`DocumentReference`, matnli xulosa uchun esa `DiagnosticReport` qo'llaniladi. Jarayon yakunlanganda yakuniy Task resursiga `completed` statusi, ServiceRequest resursiga ham `completed` statusi beriladi.

```
GET [base]/Task?based-on=ServiceRequest/[id]&_sort=-modified
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/Procedure?based-on=ServiceRequest/[id]
```

Bekor qilingan yo'llanma bajarilishi mumkin emas; faol ServiceRequest mavjud bo'lmasa, Procedure boshlanishi mumkin emas; yakunlangan Procedure resursini o'zgartirish mumkin emas.

### Bog'liq materiallar

- Yo'llanmani bajarishda qo'llaniladigan profillar: [Procedure](StructureDefinition-uz-core-procedure.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Jarayonlar haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
