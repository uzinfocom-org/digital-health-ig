UZ Core Specimen represents a laboratory or other clinical specimen collected from a patient on the Digital Health Platform. In the laboratory flow it sits between the order and the result: it references the ServiceRequest that triggered collection, and the resulting [Observation](StructureDefinition-uz-core-observation.html) references back to the specimen it was measured on.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Specimen Must Have

This profile adds no mandatory cardinality of its own, and the base Specimen resource has no mandatory elements - every constrained element is optional but Must Support.

#### Each UZ Core Specimen Must Support



- an identifier used by the source system (e.g. the LIS) and an accessionIdentifier assigned by the laboratory on receipt;
- a status (e.g. available, unavailable) bound to the DHP specimen-status value set;
- a type (e.g. venous blood, urine, swab; preferred binding);
- a subject - where the specimen came from: a [Patient](StructureDefinition-uz-core-patient.html), a [Location](StructureDefinition-uz-core-location.html), or a Substance;
- a receivedTime - when the laboratory received the specimen;
- a parent specimen reference when this specimen is derived/aliquoted from another;
- a request - the `ServiceRequest` that ordered the collection;
- a combined flag (whether the container holds a pooled specimen; required binding) and a role (preferred binding);
- collection details: the collector ([Practitioner](StructureDefinition-uz-core-practitioner.html)), the collected[x] date/time, the duration, the quantity, the method, the bodySite, and the fastingStatus[x] (required binding).

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full laboratory specimen. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is linked at the bottom of the page ([venous blood for CBC](Specimen-example-specimen-blood-cbc.html)).

#### The smallest Specimen you should send

This profile adds no mandatory cardinality, and base Specimen has no mandatory elements - so the very smallest payload is just the `meta.profile`. That is rarely useful on its own. In practice the first three things a lab cares about are *what* the specimen is (`type`), its lifecycle `status`, and *whose* it is (`subject`). The `subject` is a plain `Reference` to a [Patient](StructureDefinition-uz-core-patient.html):

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`status` is bound to the DHP specimen-status value set (required) and `type` to the specimen-types value set (preferred). The `type` value `BLD` above is from HL7 v2 table 0487. `subject` may also reference a [Location](StructureDefinition-uz-core-location.html) (e.g. an environmental sample) or a Substance.

#### A specimen received and ordered

Once the laboratory accepts the specimen, record when it arrived (`receivedTime`), the order that triggered the collection (`request`, a plain `Reference` to a `ServiceRequest`), and the specimen's `role` in the workflow. This is the typical payload created when a sample is logged in:

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "receivedTime": "2025-11-04T08:30:00Z",
  "request": [
    { "reference": "ServiceRequest/example-cbc-order" }
  ],
  "role": [
    { "coding": [{ "system": "http://hl7.org/fhir/specimen-role", "code": "p", "display": "Patient" }] }
  ]
}
```

`request` is what links the specimen to the ordered tests; the resulting [Observation](StructureDefinition-uz-core-observation.html) then references this specimen back through its own `specimen` element. `role` is a preferred binding - `p` (Patient) marks an ordinary patient sample.

#### Adding the collection details

The `collection` block carries how and when the sample was taken: the `collector` (a plain `Reference` to a [Practitioner](StructureDefinition-uz-core-practitioner.html)), the `collectedDateTime` (the `collected[x]` choice element), the `duration` and `quantity` as UCUM-coded values, and a free-text `note`. Always send the machine-readable `system` and `code` on quantities, not just the human `unit`:

```json
{
  "resourceType": "Specimen",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen"] },
  "status": "available",
  "type": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0487", "code": "BLD", "display": "Whole blood" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "receivedTime": "2025-11-04T08:30:00Z",
  "request": [
    { "reference": "ServiceRequest/example-cbc-order" }
  ],
  "role": [
    { "coding": [{ "system": "http://hl7.org/fhir/specimen-role", "code": "p", "display": "Patient" }] }
  ],
  "collection": {
    "collector": { "reference": "Practitioner/example-practitioner" },
    "collectedDateTime": "2025-11-04T08:10:00Z",
    "duration": { "value": 5, "code": "min", "system": "http://unitsofmeasure.org" },
    "quantity": { "value": 3, "unit": "mL", "code": "mL", "system": "http://unitsofmeasure.org" }
  },
  "note": [
    { "text": "Venous blood collected into EDTA tube. No visible hemolysis." }
  ]
}
```

Note that `collectedDateTime` is one form of the `collected[x]` choice - use `collectedPeriod` instead for a timed collection that spans a start and end. See [Units and quantities](general-guidance.html#units-and-quantities) for the UCUM rules on `duration` and `quantity`.

#### Recording the fasting status

When fasting affects interpretation of the result, record it inside `collection`. The `fastingStatus[x]` element is a required binding; as a coded value it is `fastingStatusCodeableConcept`. Here the patient confirmed they did not fast:

```json
{
  "collection": {
    "fastingStatusCodeableConcept": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0916",
          "code": "NF",
          "display": "The patient indicated they did not fast prior to the procedure."
        }
      ]
    }
  }
}
```

This `collection` block slots into the same resource as the stage above. Use the code that matches the patient's actual state (the required value set lists each one); do not omit `fastingStatus` for tests where fasting matters.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
