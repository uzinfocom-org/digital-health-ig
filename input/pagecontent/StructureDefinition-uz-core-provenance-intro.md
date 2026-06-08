UZ Core Provenance records the origin, authorship and signature of a clinical record on the Digital Health Platform. Every clinically significant record should have a Provenance saying who recorded it and when; for signed documents it carries the digital signature - obtained when the practitioner authenticates via oneID in a DHP-hosted iframe - and references the signed resource. Your system writes the Provenance alongside the data it submits - both to record who authored the record and, for signed documents, to carry the signature.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Provenance Must Have

This profile adds no mandatory cardinality of its own. The required elements are the ones inherited from the base resource: at least one target (the resource this Provenance describes) and at least one agent with a who (the actor responsible). Here the target is constrained to a [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) or Medication, and the agent's who to a [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html).

#### Each UZ Core Provenance Must Support



- the target - the record this Provenance is about;
- the occurredDateTime - when the activity took place;
- the activity that was performed (required binding);
- the patient the activity involved;
- an agent with its type (the participation role, required binding) and who (a PractitionerRole);
- an entity with its role (required binding) and what it points to;
- a signature carrying its type (required binding), when it was made, who signed (a PractitionerRole), the sigFormat and the signature data.

> For signed documents, the signature blob lives in `signature.data`; `target` references the document that was signed.

### Building the JSON, step by step

You build a Provenance when you submit clinically significant data - to record who authored it and, for signed documents, to carry the signature. The examples below go from the smallest record the server will accept to a fully signed document event. Copy one and adapt it - every value shown validates against this profile. The full reference instance is the [example Provenance](Provenance-example-provenance.html).

#### The smallest Provenance you should send

A Provenance needs at least one `target` (the record it is about) and at least one `agent` with a `who` (the actor responsible). Here `target` is constrained to a [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) or Medication, and `agent.who` to a [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html). Both `target` and `agent.who` are plain References. In practice you also send `occurredDateTime` (when the activity happened), the `activity` performed, and the `patient` it involved:

```json
{
  "resourceType": "Provenance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-provenance"] },
  "target": [
    { "reference": "DocumentReference/example-pdf-document" }
  ],
  "occurredDateTime": "2025-02-05T12:58:00+05:00",
  "activity": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion", "code": "LA" }]
  },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type", "code": "author" }]
      },
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ]
}
```

`activity` and `agent.type` each use a required binding - the value must come from the bound value set (the Snapshot view below lists each one). `agent.who` must reference a PractitionerRole.

#### Adding the digital signature

The reason this profile exists is to carry the digital signature the platform returns after the practitioner authenticates via oneID in a DHP-hosted iframe. Add a `signature` entry: its `type` says how it was made (required binding), `when` is the moment it was applied, `who` references the same PractitionerRole, `sigFormat` is the media type of the blob, and `data` is the base64-encoded signature itself:

```json
{
  "resourceType": "Provenance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-provenance"] },
  "target": [
    { "reference": "DocumentReference/example-pdf-document" }
  ],
  "occurredDateTime": "2025-02-05T12:58:00+05:00",
  "activity": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion", "code": "LA" }]
  },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type", "code": "author" }]
      },
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "signature": [
    {
      "type": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/signature-type-cs", "code": "biometricAuth" }
      ],
      "when": "2025-02-05T12:58:00+05:00",
      "who": { "reference": "PractitionerRole/example-practitionerrole" },
      "sigFormat": "application/signature+xml",
      "data": "dGhpcyBibG9iIGlzIHNuaXBwZWQ="
    }
  ]
}
```

`target` here references the [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) that was signed. The `data` value is the base64 signature blob (truncated above); send the full blob in production.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
