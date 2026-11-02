UZ Core MedicationAdministration records a medication administration event: a dose given, or an administration that did not occur. It connects the medication and recipient with the encounter, performer, timing, dosage, and (when applicable) the prescription being fulfilled. Use [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) for the order and [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) for supply of the medication; use this profile for the administration event itself.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when data is available ([Must Support](must-support.html)). Must Support means systems populate the element when they have the information and process it on receipt. See the [formal profile](#profile) for exact types, cardinalities, and bindings.

#### Each UZ Core MedicationAdministration Must Have

This profile adds no new mandatory cardinalities. Follow the base FHIR requirements, including the required administration `status` and `subject`.

#### Each UZ Core MedicationAdministration Must Support

- an identifier for the administration event;
- `status`, and `statusReason` when the medication was not given;
- `category` describing the administration setting;
- `medication`, as a UZ Core Medication reference or coded medication;
- `subject` (UZ Core Patient or Group) and the `encounter`;
- `occurence[x]` (the time or period of administration) and `recorded` (when the record was first entered);
- `performer.function` and `performer.actor`;
- `reason`, `request`, and `device` when applicable;
- dosage details, including dose, route, site, and rate when applicable;
- the administration location extension; funding source is also supported.

### Allergy safety: indication is different from reaction

Use `MedicationAdministration.reason` when the medicine was given to treat an allergy or allergic condition. It records why the medication was administered; it does not say that the medication caused an allergic reaction.

If an administration caused an allergic reaction, record the reaction in the patient's [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html), under `reaction`, and link that reaction to this administration using the standard `openEHR-administration` extension. The extension is on the reaction and its `valueReference` points to this `MedicationAdministration`. Do not use `reason` for this causal link. If both circumstances apply, record both relationships.

### A representative administration record

The example below shows a completed 500 mg oral paracetamol administration. `medication.concept` carries the coded medication; `subject` and `performer.actor` are references; and the dose uses UCUM. The standard FHIR element is spelled `occurence[x]` (one “r” after “u”).

```json
{
  "resourceType": "MedicationAdministration",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationadministration"]
  },
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/medication-admin-location",
      "code": "inpatient"
    }]
  }],
  "medication": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "387517004", "display": "Paracetamol" }]
    }
  },
  "subject": { "reference": "Patient/example-salim" },
  "request": { "reference": "MedicationRequest/example-medication-request" },
  "occurenceDateTime": "2026-08-28",
  "recorded": "2026-08-28",
  "performer": [{
    "function": {
      "coding": [{
        "system": "http://terminology.hl7.org/CodeSystem/med-admin-perform-function",
        "code": "performer"
      }]
    },
    "actor": { "reference": { "reference": "Practitioner/example-practitioner" } }
  }],
  "reason": [{
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "25064002", "display": "Headache" }]
    }
  }],
  "dosage": {
    "dose": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" },
    "route": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "26643006", "display": "Oral route" }]
    }
  }
}
```

The profile binds `status` and medication classification as required; category, status reason, performer function, reason, and site use preferred bindings; route is extensible. `reason` is a `CodeableReference`, so a coded indication is placed in `concept`, while a referenced clinical resource uses `reference`.
