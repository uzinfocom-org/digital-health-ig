### Tezkor boshlash {#quick-start}

So'rovlar uchun JWT kirish tokeni talab qilinadi - [Xavfsizlik va autentifikatsiya](api-access.html#security) ga qarang. `[base]` - [FHIR-serverning bazaviy URL manzili](api-access.html#endpoints); tizim va kod orasidagi `|` belgisi `%7C` sifatida kodlanadi.

**Server identifikatori bo'yicha olish**

```
GET [base]/MedicationAdministration/[id]
```

**Yuborish hodisalarini qidirish**

```
GET [base]/MedicationAdministration?patient=Patient/[id]
GET [base]/MedicationAdministration?subject=Patient/[id]&status=completed
GET [base]/MedicationAdministration?encounter=Encounter/[id]
GET [base]/MedicationAdministration?date=ge2026-01-01&date=le2026-12-31
GET [base]/MedicationAdministration?medication=Medication/[id]
GET [base]/MedicationAdministration?request=MedicationRequest/[id]
GET [base]/MedicationAdministration?identifier=https://example.org/administration-id%7CMA-123
```

**Yaratish**

```
POST [base]/MedicationAdministration
{
  "resourceType": "MedicationAdministration",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationadministration"] },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "occurenceDateTime": "2026-08-28",
  "recorded": "2026-08-28",
  "dosage": { "dose": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
}
```

Bu qisqartirilgan namuna resurs tuzilishini ko'rsatadi; bazaviy resursning majburiy elementlari va tegishli tafsilotlarni ham kiriting. Dori allergiyani davolash uchun yuborilgan bo'lsa, ko'rsatmani `reason` ga kiriting. Yuborish reaksiya keltirib chiqargan bo'lsa, uni bemorning [AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) resursida qayd eting va `reaction` ni `openEHR-administration` bilan ushbu resursga bog'lang.

**Yangilash** (masalan, hodisani tuzatish yoki statusni o'zgartirish): to'liq resursni `PUT [base]/MedicationAdministration/[id]` orqali yuboring. Qo'llab-quvvatlansa, server versiyasiga asoslangan yangilashdan foydalaning.

Qo'llab-quvvatlanadigan qidiruv parametrlariga [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) da qarang: `patient`, `subject`, `date`, `medication`, `request`, `encounter`, `performer`, `status` va `identifier`.

### Bog'liq materiallar

- [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html)
- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) &middot; [UZ Core MedicationDispense](StructureDefinition-uz-core-medication-dispense.html)
- [Ushbu qo'llanmani qanday o'qish kerak](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Umumiy ko'rsatmalar](general-guidance.html)
