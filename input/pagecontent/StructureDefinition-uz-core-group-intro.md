UZ Core Group describes a set of people or other entities that are treated together: the target group of a screening, vaccination or donation programme, and the cohorts that come out of it, such as patients who were invited, screened, vaccinated or excluded, or donors who did or did not donate. A group either defines its members by shared characteristics (adults with a body mass index of 25 or more, for example) or lists them one by one. A [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) names the group a programme is for in `subjectReference`, and a [CarePlan](StructureDefinition-uz-core-careplan.html) or [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) can have a group as its `subject`. Members are usually [Patients](StructureDefinition-uz-core-patient.html), but can also be practitioners, organizations, locations, devices, specimens or other groups.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core Group Must Have

The profile adds no mandatory elements of its own; the required ones come from the base resource: the `type` of members and the `membership` basis. Each `characteristic`, when sent, must carry its `code`, its value and the `exclude` flag, and each `member` must carry the `entity` it points to.

#### Each UZ Core Group Must Support

- the group's business identifier (`identifier`) and whether the group is in use (`active`);
- the `type` of members (person / practitioner / organization / location / device / specimen and others);
- how membership is decided (`membership`: definitional / enumerated);
- the purpose or kind of the group (`code`), such as a screening target group or a vaccinated cohort;
- the `name`, a `description` and the number of members (`quantity`);
- the organization or person who manages the group (`managingEntity`);
- the characteristics that include or exclude members (`characteristic`, with its `code`, value, `exclude` flag and `period`);
- the listed members (`member`, with the `entity`, the `period` of membership and the `inactive` flag).

### Definitional and enumerated groups

A programme usually needs both kinds:

| `membership` | Members are | Typical use |
|---|---|---|
| `definitional` | everyone who matches the `characteristic` entries; no `member` list | The target group of a screening, vaccination or donation programme |
| `enumerated` | the entities listed in `member` | An outcome cohort: patients invited, screened, vaccinated or excluded, donors who donated |

The two are separate Group resources with different `code` values. A definitional group can still give the estimated number of matching people in `quantity`.

### Building the JSON, step by step

The examples below go from the smallest valid instance to a defined target group and a listed cohort. Each one validates against this profile. The complete reference instances are the [type 2 diabetes screening target group](Group-example-diabetes-screening-target-group.html) and the [measles-vaccinated cohort](Group-example-measles-vaccinated-group.html).

#### The smallest Group you should send

The required elements come from the base resource. Every UZ Core resource also names its profile in `meta.profile`, which tells the server which rules to validate against. This much passes validation:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "type": "person",
  "membership": "enumerated"
}
```

`type` and `membership` are plain codes, so send the bare value. A group of patients has `type` `person`.

#### A screening target group defined by characteristics

The target group of a type 2 diabetes screening programme takes in adults with a body mass index of 25 kg/m2 or more and leaves out patients who already have the diagnosis:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "active": true,
  "type": "person",
  "membership": "definitional",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00001" }
    ],
    "text": "Screening target group"
  },
  "name": "Type 2 diabetes screening target group",
  "description": "Adults with a BMI of 25 kg/m2 or higher, excluding patients already diagnosed with type 2 diabetes",
  "quantity": 1875,
  "managingEntity": { "reference": "Organization/example-organization" },
  "characteristic": [
    {
      "code": { "coding": [ { "system": "http://loinc.org", "code": "39156-5" } ], "text": "Body mass index (BMI)" },
      "valueRange": {
        "low": { "value": 25, "unit": "kg/m2", "system": "http://unitsofmeasure.org", "code": "kg/m2" }
      },
      "exclude": false
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-characteristic-kind-local-cs",
            "code": "diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "valueCodeableConcept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "E11" } ] },
      "exclude": true
    }
  ]
}
```

`characteristic.code` says what is tested: a LOINC code for a measurement or an assessment, such as age or body mass index, or a local code for a trait LOINC does not cover, such as the region of residence, the healthcare organization, a diagnosis or a previous screening. The value is a `valueRange`, `valueQuantity`, `valueCodeableConcept`, `valueBoolean` or `valueReference`; use ICD-10 codes for diagnoses. `exclude: true` turns the characteristic into an exclusion. All characteristics apply together. The `code` of the group and the local characteristic codes have Uzbek primary displays, so either leave `display` out and use `text`, as here, or set the resource `language` to match the display you send.

#### A listed cohort

Patients who received a measles-containing vaccine at the polyclinic in the first quarter of 2026 are listed one by one. `member.period.start` is the date each patient joined the cohort:

```json
{
  "resourceType": "Group",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-group"] },
  "active": true,
  "type": "person",
  "membership": "enumerated",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00008" }
    ],
    "text": "Vaccinated patients"
  },
  "name": "Measles-vaccinated patients cohort",
  "quantity": 2,
  "managingEntity": { "reference": "Organization/example-organization" },
  "member": [
    {
      "entity": { "reference": "Patient/example-salim" },
      "period": { "start": "2026-01-15" },
      "inactive": false
    },
    {
      "entity": { "reference": "Patient/example-emma" },
      "period": { "start": "2026-02-03" },
      "inactive": false
    }
  ]
}
```

To take someone out of the cohort without losing the history, set `inactive` to `true` and close their `period` rather than removing the entry. Keep `quantity` equal to the number of active members. `managingEntity` is the Organization, Practitioner, PractitionerRole or RelatedPerson responsible for the group.

Retrieving the data of every member in one request through the Bulk Data Access [Group export](https://hl7.org/fhir/uv/bulkdata/en/export.html#endpoint---group-of-patients) (`GET [base]/Group/[id]/$export`) is planned but not yet available.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
