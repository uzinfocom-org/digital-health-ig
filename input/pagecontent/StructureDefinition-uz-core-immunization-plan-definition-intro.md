UZ Core Immunization PlanDefinition holds the national immunization schedule of Uzbekistan expressed as computable logic - each recommended dose, its timing, the minimum intervals between doses, and the eligibility rules that decide who it applies to. This is the resource the recommendation engine reads to build each patient's [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html). Only one schedule version may be active at a time for a given scope or jurisdiction.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Immunization PlanDefinition Must Have

Every PlanDefinition must carry a url (the canonical identifier for this schedule), a machine-processable name, a status (draft, active, retired, unknown) inherited as mandatory from the base resource, and a description of what the schedule covers.

#### Each UZ Core Immunization PlanDefinition Must Support



- an identifier, version and version algorithm, a human-readable title, and the status (draft, active, retired);
- the subject the schedule applies to (a coded concept or a reference);
- the date, publisher, use context, approval date and effective period;
- the actions that make up the schedule, each with a linkId, title, description and code;
- per action: a condition (eligibility - its kind and FHIRPath expression), a related action (the target action, relationship, and offset as a duration or range for minimum intervals), the timing (an age or a schedule), a participant (its actor id and type), and the definition (a canonical link to an ActivityDefinition or other definition, or a uri).

> The schedule must satisfy schedule-validation rules: no gaps in the dose sequence, no impossible timing windows, and no two active overlapping versions for the same scope.

### Building the JSON, step by step

A PlanDefinition is mostly authored once and read by the recommendation engine, so the examples below are short. They go from the smallest instance the server will accept to a schedule that carries its actions. Copy one and adapt it - every value shown validates against this profile. The full reference instance is the [example PlanDefinition](PlanDefinition-example-uz-core-immunization-plan-definition.html).

#### The smallest PlanDefinition you should send

`url`, `name` and `description` are the mandatory elements, and `status` is mandatory on the base resource (draft \| active \| retired \| unknown - required binding). The `url` is the canonical identifier other resources link to, so it must be stable. Every UZ Core resource also names the profile it claims to conform to in `meta.profile`. This much already passes validation:

```json
{
  "resourceType": "PlanDefinition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition"]
  },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "status": "draft",
  "description": "Example PlanDefinition demonstrating actions and relationships."
}
```

`name` is the machine-processable name (no spaces); add a human-readable `title` when you have one. See [Metadata](general-guidance.html#metadata) for the publisher, date and version fields a published schedule should also carry.

#### A schedule with its actions

In practice the schedule is the `action` list. Each dose is one action with a `linkId`, `title`, `description` and a `code`. Add a `condition` for eligibility (its `kind` and a FHIRPath `expression`), a `participant` (who performs it - an `actorId` and a `type`), and a `definitionUri` (or `definitionCanonical`) pointing at the activity that carries the vaccine detail. A later dose uses `relatedAction` to point back at an earlier one by `targetId`, with the minimum interval in `offsetDuration`:

```json
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition" ] },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "title": "Example Vaccination Follow-up Plan",
  "status": "draft",
  "date": "2026-08-10",
  "publisher": "DHP Uzbekistan",
  "description": "Example PlanDefinition demonstrating actions and relationships.",
  "approvalDate": "2026-08-01",
  "effectivePeriod": { "start": "2026-08-01", "end": "2027-08-01" },
  "action": [
    {
      "id": "action-1",
      "linkId": "action-1",
      "title": "Initial vaccination",
      "description": "Administer first vaccine dose.",
      "code": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/action-code",
            "code": "recommend-immunization",
            "display": "Recommend an immunization"
          }
        ]
      },
      "condition": [
        {
          "kind": "applicability",
          "expression": {
            "description": "Patient must be 18 years or older",
            "language": "text/fhirpath",
            "expression": "Patient.birthDate <= today() - 18 years"
          }
        }
      ],
      "participant": [ { "type": "practitioner", "actorId": "vaccinator" } ],
      "definitionUri": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"
    },
    {
      "id": "action-2",
      "linkId": "action-2",
      "title": "Follow-up vaccination",
      "description": "Administer second vaccine dose.",
      "relatedAction": [
        {
          "targetId": "action-1",
          "relationship": "after-end",
          "offsetDuration": {
            "value": 30,
            "unit": "days",
            "system": "http://unitsofmeasure.org",
            "code": "d"
          }
        }
      ],
      "participant": [ { "type": "practitioner", "actorId": "vaccinator" } ],
      "definitionUri": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"
    }
  ]
}
```

`condition.kind`, `relatedAction.relationship` and `participant.type` each use a required binding - take the value from the bound value set (the Snapshot view below lists each one). The `relatedAction.targetId` must match the `linkId` of an action already in the same schedule.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
