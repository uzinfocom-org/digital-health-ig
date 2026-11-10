UZ Core Flag records a prospective warning or notification about a [UZ Core Patient](StructureDefinition-uz-core-patient.html) that users of the Digital Health Platform should be aware of when dealing with that patient. The flag code currently covers blood donation eligibility: whether the patient may donate blood or is under a medical deferral. A flag can be linked to the [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) in which it was raised and to its author.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Flag Must Have

Every Flag must carry a `status`, a `code` saying what the flag is about, and a `subject` (the patient) - all three are mandatory in base FHIR R5.

#### Each UZ Core Flag Must Support

- a business `identifier` with its `system`, when the source system assigns one;
- the `status` of the flag (active / inactive / entered-in-error) - it describes the flag itself, not what the flag records, so a medical deferral that still applies is an `active` flag;
- the `code` - what the flag is about (eligible for blood donation / medical deferral);
- the `subject` - the patient the flag is about.

The `category` (administrative, clinical and so on), the `period` the flag applies to, the [Encounter](StructureDefinition-uz-core-encounter.html) in which it was raised and its `author` ([Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Organization](StructureDefinition-uz-core-organization.html), [Device](StructureDefinition-uz-core-device.html), [Patient](StructureDefinition-uz-core-patient.html) or [RelatedPerson](StructureDefinition-uz-core-relatedperson.html)) are optional; send them when known.

### Building the JSON, step by step

The examples below go from a minimal blood donation decision to an eligibility flag with its context and a medical deferral. Each example names this profile in `meta.profile`.

#### The smallest Flag you should send

A minimal Flag needs its status, the blood donation eligibility decision and the patient. The decision code comes from the local blood donor eligibility code system, so its display is in Uzbek and the resource sets `language` to `uz`:

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
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-eligible",
      "display": "Qon donorligiga ruxsat berilgan"
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
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-eligible",
      "display": "Qon donorligiga ruxsat berilgan"
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

A deferral uses the `blood-donation-deferred` code and stays `active` while it applies:

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
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-deferred",
      "display": "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "period": { "start": "2026-11-09T09:00:00+05:00" },
  "author": { "reference": "Practitioner/example-practitioner" }
}
```

The complete FSH examples are the [minimal flag](Flag-example-donation-minimal-flag.html), the [eligible donor flag](Flag-example-donation-eligible-flag.html) and the [medical deferral flag](Flag-example-donation-deferred-flag.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
