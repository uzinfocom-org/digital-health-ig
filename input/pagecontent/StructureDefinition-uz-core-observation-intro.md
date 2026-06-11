UZ Core Observation represents a measurement or finding about a patient on the Digital Health Platform - laboratory results, vital signs, and other clinical observations - coded with LOINC (SNOMED CT is also allowed). A laboratory Observation links back to the order that produced it (a ServiceRequest, CarePlan, or MedicationRequest) and to the [Specimen](StructureDefinition-uz-core-specimen.html) it was measured on. See also [Vital signs](vital-signs.html).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Observation Must Have

This profile adds no mandatory cardinality of its own. The elements required come from the base resource: a status (registered \| preliminary \| final \| amended ...) and a code identifying what was observed.

#### Each UZ Core Observation Must Support



- an identifier, instantiates[x] (the definition followed), and basedOn (0..1 - the originating ServiceRequest, CarePlan, or MedicationRequest);
- triggeredBy (the observation that triggered this one, with its reason) and partOf (a procedure, immunization, imaging study, or medication event);
- the status (required binding) and the category (vital-signs, laboratory ...);
- the code (preferred LOINC / SNOMED binding) and the subject (usually the patient);
- a focus and the encounter the observation belongs to;
- the effective[x] time and the issued instant;
- the performer (practitioner, role, or organization);
- the result value[x], or a dataAbsentReason when there is no value;
- a free-text note;
- the specimen measured and the device used;
- a referenceRange (low, high, normalValue, age, text);
- hasMember and derivedFrom links to related observations or responses;
- component parts, each with their own code and value[x].

> Use `component` for panels whose parts share one effective time and subject (e.g. systolic + diastolic on one blood-pressure Observation); use `hasMember` to group separately-resulted Observations under a panel.

### Building the JSON, step by step

The examples below go from a single numeric result to a multi-part panel. Copy one and adapt it - every value shown validates against this profile. The full reference instances are linked at the bottom of the page (for example [oxygen saturation](Observation-oxygen-saturation-example.html), [blood pressure](Observation-blood-pressure-example.html), [CBC panel](Observation-cbc-panel-example.html)).

#### A single quantitative result

An Observation always needs a `status` and a `code` saying what was measured. In practice you send more: the `category` that groups it, the `subject` it is about, when it was taken (`effective[x]`), and the result in `value[x]`. A numeric result is a `valueQuantity` carrying a UCUM unit - always include the machine-readable `system` and `code`, not just the human `unit`:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [ { "system": "http://loinc.org", "code": "8310-5", "display": "Body temperature" } ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "valueQuantity": {
    "value": 36.5,
    "unit": "C",
    "system": "http://unitsofmeasure.org",
    "code": "Cel"
  }
}
```

`code` is bound to LOINC/SNOMED (preferred) and says *what* was observed; `category` (`vital-signs`, `laboratory`, ...) keeps the kinds apart. See [Vital signs](vital-signs.html) for the standard vital-sign codes and [Units and quantities](general-guidance.html#units-and-quantities) for the UCUM rules.

#### Adding an interpretation and a reference range

For a result that has a normal range, send the `referenceRange` and flag the value with an `interpretation` (normal / high / low / critical):

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "2708-6",
        "display": "Oxygen saturation in Arterial blood"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "valueQuantity": { "value": 95, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
  "interpretation": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code": "N",
          "display": "Normal"
        }
      ]
    }
  ],
  "referenceRange": [
    {
      "low": { "value": 90, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
      "high": { "value": 99, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

#### A panel with components (e.g. blood pressure)

When several measurements share one time and subject - systolic and diastolic, or the analytes of one lab panel - put each part in `component` and leave the parent `value[x]` empty. The parent `code` names the panel:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://loinc.org", "code": "85354-9", "display": "Blood pressure panel" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "component": [
    {
      "code": {
        "coding": [
          { "system": "http://loinc.org", "code": "8480-6", "display": "Systolic blood pressure" }
        ]
      },
      "valueQuantity": {
        "value": 120,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    },
    {
      "code": {
        "coding": [
          { "system": "http://loinc.org", "code": "8462-4", "display": "Diastolic blood pressure" }
        ]
      },
      "valueQuantity": {
        "value": 80,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    }
  ]
}
```

Use `component` only when the parts share one effective time and subject. To group separately-resulted Observations (each its own resource) under a panel, use `hasMember` instead.

#### When there is no result

If the test was performed but produced no value (sample unusable, patient declined), do not silently omit `value[x]` - send a `dataAbsentReason` in its place. On an Observation this is a coded `CodeableConcept`, not the `_value` extension used on Patient identifiers:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "2708-6",
        "display": "Oxygen saturation in Arterial blood"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "dataAbsentReason": {
    "coding": [
      { "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason", "code": "unknown" }
    ]
  }
}
```

Oxygen saturation is a vital sign, so the `vital-signs` `category` is still required even when the value itself is absent - dropping the result does not drop the category. See [Missing & suppressed data](general-guidance.html#missing-data) for choosing the right absence mechanism.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
