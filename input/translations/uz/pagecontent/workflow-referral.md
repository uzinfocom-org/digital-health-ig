> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu ish jarayoni yo'llanma qanday yaratilishini va bajarilishini ko'rsatadi. Yo'llanmalar dasturchilar eng ko'p adashadigan joy hisoblanadi, chunki bunda ikkita resurs ishtirok etadi va ularning o'zaro bog'liqligi profil jadvallaridan aniq ko'rinmaydi. Bir qatorli qoida:

> `ServiceRequest` — bu yo'llanmaning o'zi, ya'ni *nima* bajarilishi kerakligi. `Task` — bu uni bajarish ishi, ya'ni *kim* qildi, *qachon* va *qay darajada bajarildi*.

> Profil holati: ServiceRequest va Task profillari ishlab chiqilmoqda. Ushbu sahifa mo'ljallangan modellashtirishni tavsiflaydi, shunda tizimlar hozircha shunga asoslanib qurilishi mumkin; profillar e'lon qilinmaguncha, asosiy FHIR R5 resurslaridan va quyidagi qoidalardan foydalaning. Bajarishda ishlatiladigan [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html), [Encounter](StructureDefinition-uz-core-encounter.html) va [Condition](StructureDefinition-uz-core-condition.html) profillangan.

Ishtirokchilar: yo'llovchi shifokor; tasdiqlash komissiyalari (davlat sug'urtasi yo'llanmalari uchun); xizmat ko'rsatuvchi muassasa.

<div>{% include referral-sequence.svg %}</div><br clear="all"/>

### 1. Yo'llanmani yaratish

Shifokor `ServiceRequest` (`intent = order`) yaratadi va unda yo'llanma tasnifini joylashtiradi: `code` da so'ralayotgan xizmat, `priority` da shoshilinchlik (`routine` \| `urgent` \| `stat`), `HealthcareService` orqali maqsadli xizmat, `reason` da klinik asoslanish va `coverageKind` kengaytmasida moliyalashtirish turi (`state-insurance` \| `insurance` \| `self-payment` \| `other`).

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest", "status": "active", "intent": "order",
  "priority": "routine",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "..." }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }] }
```

### 2. Tasdiqlash zanjiri (faqat davlat sug'urtasi)

Bu markaziy qaror qoidasi:

> Agar `ServiceRequest.coverageKind = state-insurance` bo'lsa, platforma tasdiqlash `Task`lari zanjirini yaratadi; aks holda hech qanday Task yaratilmaydi va yo'llanma to'g'ridan-to'g'ri davom etadi.

Har bir tasdiqlash bosqichi ServiceRequest ga (`Task.focus`/`basedOn`) murojaat qiluvchi `Task` bo'lib, uning `Task.code` qiymati tasdiqlash toifalari to'plamidan olinadi:

`approve-family-doctor` &rarr; `approve-specialist` &rarr; `approve-regional-commission` &rarr; `approve-national-commission` &rarr; `approve-insurance-fund` &rarr; `approve-hospitalization`

Task ikkita holat o'qini olib boradi: FHIR `Task.status` (hayot sikli: `requested`, `accepted`, `in-progress`, `completed`, `rejected`, `on-hold`, `failed`, …) va `Task.businessStatus` (foydalanuvchilarga ko'rsatiladigan domen holati: `in-review`, `confirmed`, `overdue`, …).

> Tasklarning foydalanuvchiga ko'rinadigan interfeysi yo'q. Menejerlar jarayon hodisalari asosida harakat qiladi; ular hech qachon Taskni to'g'ridan-to'g'ri yopmaydi. Bu asosiy ish bajarilmasdan turib bosqichning bajarilgan deb belgilanishining oldini oladi.

### 3. Sinxronizatsiya qoidalari

ServiceRequest va uning Tasklari quyidagi qoidalar orqali bir-biriga mos qoladi:

| Hodisa | Natija |
|-------|--------|
| ServiceRequest `active` holatiga o'tadi (davlat sug'urtasi) | birinchi tasdiqlash Task `status=requested` bilan yaratiladi |
| ServiceRequest `revoked` qilib belgilanadi | barcha ochiq Tasklar `revoked` qilib belgilanadi |
| ServiceRequest `entered-in-error` qilib belgilanadi | barcha Tasklar `entered-in-error` qilib belgilanadi |
| Yakuniy tasdiqlash Task `completed` | ServiceRequest `completed` qilib belgilanadi |
| Komissiya Task `failed`/rad etilgan | ServiceRequest `revoked` qilib belgilanadi |
| Qayta ko'rib chiqishga qaytarildi | Task &rarr; `on-hold` / `in-review`; ServiceRequest &rarr; `on-hold`, so'ngra yangi tasdiqlash Task bilan qaytadan `active` ga |
| SLA buzilishi | faqat `Task.businessStatus = overdue` — ServiceRequest holati o'zgarmaydi |

<div>{% include referral-states.svg %}</div><br clear="all"/>

Foydalanuvchiga ko'rinadigan yorliq Task holatidan kelib chiqib hosil qilinadi — masalan, `businessStatus=overdue` &rarr; "Muddati o'tgan", `status=requested` &rarr; "Qabul qilinishini kutmoqda", `status=rejected` &rarr; "Rad etilgan".

### 4. Bajarish

Xizmat ko'rsatilganda, xizmat ko'rsatuvchi muassasa natijani yo'llanmaga nisbatan qayd etadi: [Procedure](StructureDefinition-uz-core-procedure.html) va/yoki [Observation](StructureDefinition-uz-core-observation.html) (hamda tashrif uchun [Encounter](StructureDefinition-uz-core-encounter.html)), ularning har biri `basedOn` orqali ServiceRequest ga bog'lanadi. Tasvirlash natijalari `ImagingStudy`/`DocumentReference` dan foydalanadi; matnli xulosa esa `DiagnosticReport` dan foydalanadi. Yakunlanganda oxirgi Task `completed` bo'ladi va ServiceRequest `completed` bo'ladi.

```
GET [base]/Task?based-on=ServiceRequest/[id]&_sort=-modified
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/Procedure?based-on=ServiceRequest/[id]
```

Bekor qilingan yo'llanma bajarilishi mumkin emas, Procedure faol ServiceRequestsiz boshlanishi mumkin emas va yakunlangan Procedure o'zgartirilishi mumkin emas.

### Aloqador

- Bajarishda ishlatiladigan profillar: [Procedure](StructureDefinition-uz-core-procedure.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Ish jarayonlari haqida umumiy ma'lumot](workflows.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
