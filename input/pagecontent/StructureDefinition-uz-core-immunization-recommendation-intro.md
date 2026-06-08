UZ Core ImmunizationRecommendation is a computed forecast of which vaccines a patient is due, overdue or scheduled for on the Digital Health Platform. It is generated automatically from the active national immunization schedule (see [PlanDefinition](StructureDefinition-uz-core-plan-definition.html)), the patient's [Immunization](StructureDefinition-uz-core-immunization.html) history, and their demographics - it is not hand-entered. Each recommendation entry names a vaccine and/or target disease, the forecast status (due, overdue, and so on), the dose number in the series, and the dates that drive the recommendation. It references the [Patient](StructureDefinition-uz-core-patient.html) the forecast is for.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core ImmunizationRecommendation Must Have

Every ImmunizationRecommendation must name the patient the forecast is for, the date the recommendation was created, and at least one recommendation entry. Each entry must carry a forecast status (due, overdue, scheduled, etc.) and either a vaccine code or a target disease - the uzcore-imrec-1 rule requires at least one of the two - and where a date criterion is given, both its code (which kind of date) and its value (the date itself) are mandatory.

#### Each UZ Core ImmunizationRecommendation Must Support



- a business identifier and the responsible authority organization;
- within each recommendation entry: the vaccine code, target disease, any contraindicated vaccine code, the forecast reason, and the date criterion (e.g. earliest date to give, date due, date overdue);
- the description, series name, dose number and total series doses;
- the supporting immunization records and supporting patient information the forecast was based on.

> This resource is produced by the recommendation engine. Clients read it to know what is due; they should not author it directly.

### Building the JSON, step by step

This resource is produced by the recommendation engine, but it helps to know its shape when you read one. The examples below go from the smallest valid instance to a fully populated forecast - every value shown validates against this profile. The full reference instance is linked at the bottom of the page ([example recommendation](ImmunizationRecommendation-example-uz-core-immunization-recommendation.html)).

#### The smallest valid recommendation

A recommendation needs the `patient` it is for, the `date` it was created, and at least one `recommendation` entry. Each entry must carry a `forecastStatus` and either a `vaccineCode` or a `targetDisease` (the `uzcore-imrec-1` rule requires at least one of the two). Every UZ Core resource also names the profile it claims to conform to in `meta.profile`. This much already validates:

```json
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"]
  },
  "patient": { "reference": "Patient/example-emma" },
  "date": "2025-08-01T10:00:00+05:00",
  "recommendation": [
    {
      "vaccineCode": [
        { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03", "display": "measles, mumps and rubella virus vaccine" }] }
      ],
      "forecastStatus": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status", "code": "due", "display": "Due" }]
      }
    }
  ]
}
```

`patient` is a plain `Reference` to a [Patient](StructureDefinition-uz-core-patient.html). `vaccineCode` is bound to the national vaccine value set (CVX above), and `forecastStatus` (due, overdue, scheduled, ...) says where the patient stands in the schedule.

#### A fully populated forecast

In practice the engine emits much more: the responsible `authority` organization, the `targetDisease` the vaccine protects against, the `forecastReason` behind the status, a `dateCriterion` (when the dose is earliest, due or overdue), the `series`/`doseNumber`/`seriesDoses`, and the `supportingImmunization` and `supportingPatientInformation` the forecast was based on:

```json
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"]
  },
  "patient": { "reference": "Patient/example-emma" },
  "date": "2025-08-01T10:00:00+05:00",
  "authority": { "reference": "Organization/example-organization" },
  "recommendation": [
    {
      "vaccineCode": [
        { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03", "display": "measles, mumps and rubella virus vaccine" }] }
      ],
      "targetDisease": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "14189004", "display": "Measles" }] }
      ],
      "forecastStatus": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status", "code": "due", "display": "Due" }]
      },
      "forecastReason": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "77386006", "display": "Pregnancy" }] }
      ],
      "dateCriterion": [
        {
          "code": { "coding": [{ "system": "http://loinc.org", "code": "30981-5", "display": "Earliest date to give" }] },
          "value": "2025-08-10T09:00:00+05:00"
        }
      ],
      "description": "Patient is recommended to receive measles vaccination according to the national immunization schedule.",
      "series": "Routine measles immunization series",
      "doseNumber": "1",
      "seriesDoses": "2",
      "supportingImmunization": [ { "reference": "Immunization/example-measles-immunization" } ],
      "supportingPatientInformation": [ { "reference": "Condition/example-pregnancy" } ]
    }
  ]
}
```

`authority`, `supportingImmunization` (to an [Immunization](StructureDefinition-uz-core-immunization.html)) and `supportingPatientInformation` are all plain `Reference` types. `dateCriterion.code` selects which date the `value` is (earliest to give, due, overdue); see [Terminology](general-guidance.html#terminology) for the bound value sets.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
