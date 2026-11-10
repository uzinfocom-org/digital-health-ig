UZ Core Flag records a donation eligibility decision for a [UZ Core Patient](StructureDefinition-uz-core-patient.html). The decision can be linked to a [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) and its author. An active flag may record either eligibility or medical deferral: the status describes the flag's lifecycle.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Flag Must Have

A status, a donation eligibility code and a patient reference are mandatory in base FHIR R5.

#### Each UZ Core Flag Must Support

- the business identifier, with its system, when assigned;
- the status of the flag;
- the donation eligibility decision;
- the patient to whom the decision applies.

### Building the JSON, step by step

The examples below go from a minimal donation decision to an eligibility flag with its context and a medical deferral. Each example names this profile in `meta.profile`.

#### The smallest Flag you should send

A minimal Flag needs its status, the donation eligibility decision and the patient. The decision code comes from the local donor eligibility code system, so its display is in Uzbek and the resource sets `language` to `uz`:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-eligible",
      "display": "Donorlikka ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

#### An eligibility decision with its context

Add the HL7 flag category, the validity period, the encounter in which the decision was made and its author. HL7 category codes keep their original system:

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/flag-category",
      "code": "admin"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-eligible",
      "display": "Donorlikka ruxsat berilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": {
    "start": "2026-11-09T09:00:00+05:00",
    "end": "2026-11-09T18:00:00+05:00"
  },
  "encounter": { "reference": "Encounter/example-encounter" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

#### A medical deferral

A deferral uses the `donation-deferred` code. The flag stays `active` while the deferral applies: the status describes the flag, not permission to donate.

```json
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/flag-category",
      "code": "clinical"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-deferred",
      "display": "Tibbiy sabablarga ko‘ra donorlikdan chetlatilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": { "start": "2026-11-09T09:00:00+05:00" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

The complete FSH examples are the [minimal flag](Flag-example-donation-minimal-flag.html), the [eligible donor flag](Flag-example-donation-eligible-flag.html) and the [medical deferral flag](Flag-example-donation-deferred-flag.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
