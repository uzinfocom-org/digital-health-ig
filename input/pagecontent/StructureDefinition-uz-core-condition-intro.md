UZ Core Condition records a diagnosis, problem, or other clinical condition for a patient on the Digital Health Platform. Conditions are coded with ICD-10 or SNOMED CT (ICD-11 is planned). A Condition is anchored to its [Patient](StructureDefinition-uz-core-patient.html) and to the visit it was recorded in; an [Encounter](StructureDefinition-uz-core-encounter.html) in turn points back at the Condition as one of its diagnoses, and that diagnosis code is what flows through to reporting.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Condition Must Have

This profile adds no mandatory cardinality of its own. The required elements are inherited from the base resource: a clinical status (1..1) and a subject (the patient the condition belongs to).

#### Each UZ Core Condition Must Support



- a clinical status (active, recurrence, remission, resolved ...) bound to the DHP clinical-status value set;
- a verification status (provisional, confirmed, refuted, entered-in-error ...);
- a severity (preferred binding; a disability classification is required when the code is the SNOMED *Disability* concept);
- a code identifying the condition itself (ICD-10 or SNOMED CT; preferred binding to the DHP condition value set);
- a diagnosis-type extension (e.g. main diagnosis, referring-institution diagnosis), 0..1;
- a body site;
- the subject and the encounter it was recorded in;
- the onset[x] and abatement[x] timing and the recordedDate;
- a participant (0..1) - the actor who asserted the condition and their function;
- free-text notes.

> `verificationStatus` is not mandatory, but together with the mandatory `clinicalStatus` it governs whether downstream views treat the condition as an active, confirmed problem - populate both whenever the data is known.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full coded diagnosis. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([headache](Condition-example-headache.html), [cancer](Condition-example-cancer.html), [disability](Condition-example-disability.html)).

#### The smallest Condition you should send

A Condition's mandatory elements are `subject` (the patient it belongs to) and `clinicalStatus` (both 1..1), and a Condition is only useful with a `code` saying what the condition is. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`, so the server knows which rules to validate against. The `code` is bound to the DHP condition value set (ICD-10 or SNOMED CT; preferred); `clinicalStatus` is a `CodeableConcept` bound to the DHP clinical-status value set, and `subject` is a plain `Reference` to a [Patient](StructureDefinition-uz-core-patient.html). This much already passes validation:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" }
}
```

ICD-10 and SNOMED CT are the coding systems in use today (ICD-11 is planned). See [Terminology](general-guidance.html#terminology) for which system to use.

#### A realistic diagnosis

In practice you send the clinical context the platform expects you to support: `clinicalStatus` and `verificationStatus` (together they decide whether the condition is surfaced as an active, confirmed problem), when it began (`onsetDateTime`), and when it was recorded (`recordedDate`). A free-text `note` carries the clinician's narrative:

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-clinical", "code": "active", "display": "Active" }]
  },
  "verificationStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status", "code": "confirmed", "display": "Confirmed" }]
  },
  "code": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/icd-10", "code": "G43.9", "display": "Migraine, unspecified" }]
  },
  "subject": { "reference": "Patient/example-patient" },
  "onsetDateTime": "2025-07-25",
  "recordedDate": "2025-07-29",
  "note": [
    { "text": "Patient reported a mild migraine lasting two days; advised rest, hydration, and analgesia." }
  ]
}
```

`clinicalStatus` (active, recurrence, remission, resolved ...) and `verificationStatus` (provisional, confirmed, refuted, entered-in-error ...) are each bound to a DHP value set - take the values from those bindings (the Snapshot view below lists them).

#### Adding severity, body site, diagnosis type and who asserted it

A fuller record adds the Must-Support elements that classify and attribute the condition: a `severity` (SNOMED, preferred), a `bodySite` (SNOMED), the `diagnosisType` extension (main diagnosis, referring-institution diagnosis ...), and a `participant` naming who asserted it. The participant `actor` is a plain `Reference` to a [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), Patient, RelatedPerson, or Device:

```json
{
  "resourceType": "Condition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs",
            "code": "gencl-0001-00003",
            "display": "Main diagnosis"
          }
        ]
      }
    }
  ],
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active",
        "display": "Active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed",
        "display": "Confirmed"
      }
    ]
  },
  "severity": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "255604002", "display": "Mild" } ]
  },
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "254837009",
        "display": "Malignant neoplasm of breast"
      }
    ]
  },
  "bodySite": [
    {
      "coding": [
        { "system": "http://snomed.info/sct", "code": "76752008", "display": "Breast structure" }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-emma" },
  "onsetDateTime": "2025-08-15",
  "recordedDate": "2025-09-01",
  "participant": [
    {
      "actor": { "reference": "Practitioner/example-practitioner" },
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code": "author",
            "display": "Author"
          }
        ]
      }
    }
  ]
}
```

The `diagnosisType` extension carries its own URL (`https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type`) and a coded value from the DHP `diagnosis-type-cs` system. `bodySite` is a list of `CodeableConcept`. `participant` is 0..1 - one actor with their `function`.

#### A disability classification

When the `code` is the SNOMED *Disability* concept (`21134002`), the profile **requires** the `severity` to come from the DHP disability value set - the SNOMED severity scale does not apply. Send the disability group as the `severity`:

```json
{
  "resourceType": "Condition",
  "language": "uz",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed"
      }
    ]
  },
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "21134002", "display": "Disability" }
    ]
  },
  "severity": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/disability-cs",
        "code": "regis0011.00001",
        "display": "I guruh"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "onsetDateTime": "2020-03-10",
  "recordedDate": "2025-09-17"
}
```

The full instance is the [disability example](Condition-example-disability.html). For any other condition, leave `severity` bound to the preferred SNOMED scale (`Mild`, and so on) as shown above.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
