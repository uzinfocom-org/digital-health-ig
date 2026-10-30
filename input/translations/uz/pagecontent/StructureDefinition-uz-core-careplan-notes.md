> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) ga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); tizim va kod orasidagi `|` belgisi `%7C` sifatida kodlanadi.

**Server identifikatori bo'yicha olish**

```
GET [base]/CarePlan/[id]
```

**Rejalarni qidirish**

```
GET [base]/CarePlan?identifier=https://mis.dmed.uz%7CCP-2015-000123
GET [base]/CarePlan?patient=Patient/[id]&status=active
GET [base]/CarePlan?patient=Patient/[id]&category=http://snomed.info/sct%7C773130005
GET [base]/CarePlan?encounter=Encounter/[id]
GET [base]/CarePlan?activity-reference=ServiceRequest/[id]
GET [base]/CarePlan?date=ge2026-01-01
```

**Yaratish**

```
POST [base]/CarePlan
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "status": "active",
  "intent": "plan",
  "subject": { "reference": "Patient/[id]" },
  "activity": [{ "plannedActivityReference": { "reference": "ServiceRequest/[id]" } }]
}
```

**Yangilash** (masalan, tadbir qo'shish yoki rejani yakunlash): to'liq resursni `PUT [base]/CarePlan/[id]` orqali, o'qilgan versiyani o'z ichiga olgan `If-Match` sarlavhasi bilan yuboring, shunda parallel o'zgarish ustidan yozilmaydi.

Qo'llab-quvvatlanadigan qidiruv parametrlariga [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da qarang, jumladan `based-on`, `part-of`, `custodian`, `care-team`, `condition`, `goal`, `intent` va `instantiates-canonical`.

### Bog'liq materiallar

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Procedure](StructureDefinition-uz-core-procedure.html) &middot; [UZ Core Goal](StructureDefinition-uz-core-goal.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
