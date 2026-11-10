> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Javobni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/ClaimResponse/[id]
GET [base]/ClaimResponse/[id]/_history
```

**Qidiruv**

```
GET [base]/ClaimResponse?identifier=[system]%7C[value]
GET [base]/ClaimResponse?request=Claim/[id]
GET [base]/ClaimResponse?patient=Patient/[id]&use=preauthorization&status=active
GET [base]/ClaimResponse?patient=Patient/[id]&outcome=complete
GET [base]/ClaimResponse?insurer=Organization/[id]&created=ge2026-01-01
```

**To'lovchining javobini qayd etish**

```
POST [base]/ClaimResponse
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response" ] },
  "status": "active",
  "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ] },
  "use": "preauthorization",
  "patient": { "reference": "Patient/[id]" },
  "created": "2026-10-05",
  "insurer": { "reference": "Organization/[id]" },
  "request": { "reference": "Claim/[id]" },
  "outcome": "complete",
  "decision": { "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ] },
  ...
}
```

**Mavjud javobni yangilash** (masalan, oldindan ruxsat muddati tugaganda `status` ni `cancelled` ga o'rnatish va bekor qilish sababini qo'shish)

```
PUT [base]/ClaimResponse/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ClaimResponse",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/claim-response-cancellation-reason",
      "valueCodeableConcept": { ... }
    }
  ],
  "status": "cancelled",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core Claim](StructureDefinition-uz-core-claim.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)
- [To'lovchilarni identifikatsiyalash](payor-identification.html) &middot; [Komponentlar: Reimbursatsiya](components.html#reimbursement) &middot; [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
