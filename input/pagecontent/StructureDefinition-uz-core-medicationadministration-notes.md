### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); encode the `|` separator between a coding system and code as `%7C`.

**Read by server id**

```
GET [base]/MedicationAdministration/[id]
```

**Search administrations**

```
GET [base]/MedicationAdministration?patient=Patient/[id]
GET [base]/MedicationAdministration?subject=Patient/[id]&status=completed
GET [base]/MedicationAdministration?encounter=Encounter/[id]
GET [base]/MedicationAdministration?date=ge2026-01-01&date=le2026-12-31
GET [base]/MedicationAdministration?medication=Medication/[id]
GET [base]/MedicationAdministration?request=MedicationRequest/[id]
GET [base]/MedicationAdministration?identifier=https://example.org/administration-id%7CMA-123
```

**Create**

```
POST [base]/MedicationAdministration
{
  "resourceType": "MedicationAdministration",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationadministration"]
  },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "occurenceDateTime": "2026-08-28",
  "recorded": "2026-08-28",
  "dosage": { "dose": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
}
```

The abbreviated payload illustrates the resource shape; include the required base-resource fields and all applicable details. For a medication given to treat an allergy, put that indication in `reason`. When this administration caused a reaction, document it in the patient's [AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) and link its `reaction` to this resource with `openEHR-administration`.

**Update** (for example, to correct an event or change its status): send the complete resource with `PUT [base]/MedicationAdministration/[id]`. Use the server's version-aware update behavior where supported.

The [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) lists the supported search parameters. The `patient` and `subject` searches can find patient administrations; `date`, `medication`, `request`, `encounter`, `performer`, `status`, and `identifier` are also supported.

### Related

- [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html)
- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) &middot; [UZ Core MedicationDispense](StructureDefinition-uz-core-medication-dispense.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
