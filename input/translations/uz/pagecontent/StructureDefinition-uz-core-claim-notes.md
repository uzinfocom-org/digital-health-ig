> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API amallari. So'rovlar JWT kirish tokenini talab qiladi - [Xavfsizlik va autentifikatsiya](api-access.html#security) bo'limiga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va `%7C` ko'rinishida URL-kodlanishi kerak.

**Talabnomani server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/Claim/[id]
GET [base]/Claim/[id]/_history
```

**Qidiruv**

```
GET [base]/Claim?identifier=[system]%7C[value]
GET [base]/Claim?patient=Patient/[id]
GET [base]/Claim?patient=Patient/[id]&use=preauthorization&status=active
GET [base]/Claim?provider=Organization/[id]&created=ge2026-01-01
GET [base]/Claim?insurer=Organization/[id]
GET [base]/Claim?facility=Location/[id]
```

**Talabnomani to'lovchining javobi bilan birga topish**

```
GET [base]/Claim?patient=Patient/[id]&_revinclude=ClaimResponse:request
```

**Talabnoma yuborish**

```
POST [base]/Claim
{
  "resourceType": "Claim",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim" ] },
  "status": "active",
  "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ] },
  "use": "preauthorization",
  "patient": { "reference": "Patient/[id]" },
  "created": "2026-03-06",
  "insurer": { "reference": "Organization/[id]" },
  "provider": { "reference": "Organization/[id]" },
  "referral": { "reference": "ServiceRequest/[id]" },
  "insurance": [ { "sequence": 1, "focal": true, "coverage": { "reference": "Coverage/[id]" } } ],
  ...
}
```

**Mavjud talabnomani yangilash** (masalan, yordam endi tasdiqlashni talab qilmasa, `status` ni `cancelled` ga o'rnatish)

```
PUT [base]/Claim/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Claim",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim" ] },
  "status": "cancelled",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Claim1-25) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)
- [To'lovchilarni identifikatsiyalash](payor-identification.html) &middot; [Komponentlar: Reimbursatsiya](components.html#reimbursement) &middot; [Ish jarayonlari](workflows.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy tavsiyalar](general-guidance.html)
