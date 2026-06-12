UZ Core Socioeconomic Observation captures a patient's preferential/benefit category and socioeconomic status - the facts that influence reimbursement eligibility, such as a disability or social-benefit group, as well as education, profession, and social status. It is modelled as an [Observation](StructureDefinition-uz-core-observation.html) so it lives alongside clinical observations but is categorised distinctly. Use the Observation endpoint to read and search these records.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Socioeconomic Observation Must Have

Every Socioeconomic Observation must carry a subject - the [Patient](StructureDefinition-uz-core-patient.html) the record is about (1..1), a code carrying the socioeconomic observation type through the required socioeconomicType coding slice (1..1) - one of *Eligible for benefit*, *Educational achievement*, *Occupation*, or *Social status* (SNOMED CT, bound to the DHP socioeconomic-observation-codes value set) - an effectiveDateTime (when the data was recorded or applies, 1..1), and a status inherited from the base resource.

#### Each UZ Core Socioeconomic Observation Must Support



- the subject, the code (with its `socioeconomicType` slice), and the effectiveDateTime listed above.

> The `value[x]` is a CodeableConcept whose value set depends on the `code`: benefits use BenefitsVS, education uses EducationVS, profession uses PositionAndProfessionVS, and social status uses SocialStatusVS. Pick the value set that matches the chosen type code.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a fully populated socioeconomic record. Copy one and adapt it - every value shown validates against this profile. The full reference instances are linked at the bottom of the page (for example [education](Observation-example-salim-education.html), [social status](Observation-example-salim-social-status.html), [profession](Observation-example-salim-profession.html), [benefits](Observation-example-salim-benefits.html)).

#### The smallest socioeconomic observation you should send

Four elements carry the whole record: the `status` and the `subject` (the [Patient](StructureDefinition-uz-core-patient.html) it is about), the `code` saying which kind of socioeconomic fact this is (through the required `socioeconomicType` coding slice, always a SNOMED CT code from `http://snomed.info/sct`), and the `effectiveDateTime` when it was recorded. The result itself goes in `valueCodeableConcept`. This education-level record already passes validation:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105421008",
        "display": "Educational achievement"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs",
        "code": "regis0005.00004",
        "display": "O'rtacha"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

The `code` is what selects the kind of fact; here `105421008` (Educational achievement) means the `valueCodeableConcept` is drawn from EducationVS. The `subject` is a plain `Reference`, so the target sits directly under `reference` (`"subject": { "reference": "Patient/example-salim" }`).

#### A social-status record

Swap the type code and the result value set together - they always move as a pair. For a patient's social status, the `code` is `82996008` (Social status) and the `valueCodeableConcept` is drawn from SocialStatusVS:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "82996008", "display": "Social status" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs",
        "code": "regis0010.00003",
        "display": "Ishlaydi"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

#### Choosing the type code and its value set

The only thing that changes between a benefits, education, profession, or social-status record is the SNOMED `code` and the matching `valueCodeableConcept` system. Keep the two in step - the result code system below must match the type code in the same row. Each system links to the value set of codes you can use:

| Socioeconomic fact | `code` (SNOMED CT) | `valueCodeableConcept` system |
|---|---|---|
| Eligible for benefit | `1303306008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs`](ValueSet-benefits-vs.html) |
| Educational achievement | `105421008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs`](ValueSet-education-vs.html) |
| Occupation | `14679004` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs`](ValueSet-position-and-profession-vs.html) |
| Social status | `82996008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs`](ValueSet-social-status-vs.html) |

For an occupation record, the `code` is `14679004` (Occupation) and the result comes from the profession code system:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "14679004", "display": "Occupation" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs",
        "code": "1321.20",
        "display": "Bosh mexanik"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

See [Terminology](general-guidance.html#terminology) for how the bound value sets are published.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
