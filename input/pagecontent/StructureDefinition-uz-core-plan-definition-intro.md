UZ Core PlanDefinition holds a national healthcare schedule of Uzbekistan expressed as computable logic - each planned activity, its timing, the minimum intervals between activities, and the eligibility rules that decide who it applies to. The same profile covers the national immunization schedule, whole blood donation schedules and screening schedules; a `focus` use context says which kind a given schedule is. The immunization schedule is the resource the recommendation engine reads to build each patient's [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html). Only one schedule version may be active at a time for a given scope or jurisdiction.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core PlanDefinition Must Have

Every PlanDefinition must carry a url (the canonical identifier for this schedule), a machine-processable name, a status (draft, active, retired, unknown) inherited as mandatory from the base resource, a description of what the schedule covers, and exactly one use context with a `focus` code saying what kind of schedule it is.

#### Each UZ Core PlanDefinition Must Support



- an identifier, version and version algorithm, a human-readable title, and the status (draft, active, retired);
- the subject the schedule applies to (a coded concept or a reference);
- the date, publisher, use context, approval date and effective period;
- the actions that make up the schedule, each with a linkId, title, description and code;
- per action: a condition (eligibility - its kind and FHIRPath expression), a related action (the target action, relationship, and offset as a duration or range for minimum intervals), the timing (an age or a schedule), a participant (its actor id and type), and the definition (a canonical link to an ActivityDefinition or other definition, or a uri).

> The schedule must satisfy schedule-validation rules: no gaps in the dose sequence, no impossible timing windows, and no two active overlapping versions for the same scope.

### Building the JSON, step by step

A PlanDefinition is mostly authored once and read by the recommendation engine, so the examples below are short. They go from the smallest instance the server will accept to a schedule that carries its actions. Copy one and adapt it - every value shown validates against this profile. The full reference instance is the [example PlanDefinition](PlanDefinition-example-uz-core-immunization-plan-definition.html).

#### The smallest PlanDefinition you should send

`url`, `name` and `description` are the mandatory elements, and `status` is mandatory on the base resource (draft \| active \| retired \| unknown - required binding). The `url` is the canonical identifier other resources link to, so it must be stable. Every UZ Core resource also names the profile it claims to conform to in `meta.profile`. One `useContext` with a `focus` code is also mandatory - it says what kind of schedule this is, and it is how clients find the schedule on the server. This much already passes validation:

```json
{
  "resourceType": "PlanDefinition",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition"]
  },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "status": "draft",
  "description": "Example PlanDefinition demonstrating actions and relationships.",
  "useContext": [
    {
      "code": {
        "system": "http://terminology.hl7.org/CodeSystem/usage-context-type",
        "code": "focus"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "33879002",
            "display": "Active immunization"
          }
        ]
      }
    }
  ]
}
```

Exactly one `focus` context is allowed. Use `33879002` for an immunization schedule, `25179006` for a whole blood donation schedule, or `360156006` for a screening schedule. A schedule is found with `GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct|33879002`.

`name` is the machine-processable name (no spaces); add a human-readable `title` when you have one. See [Metadata](general-guidance.html#metadata) for the publisher, date and version fields a published schedule should also carry.

#### A schedule with its actions

In practice the schedule is the `action` list. Each dose is one action with a `linkId`, `title`, `description` and a `code`. Add a `condition` for eligibility (its `kind` and a FHIRPath `expression`), a `participant` (who performs it - an `actorId` and a `type`), and a `definitionUri` (or `definitionCanonical`) pointing at the activity that carries the vaccine detail. A later dose uses `relatedAction` to point back at an earlier one by `targetId`, with the minimum interval in `offsetDuration`:

```json
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition" ] },
  "url": "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition",
  "name": "ExampleImmunizationPlanDefinition",
  "title": "Example Vaccination Follow-up Plan",
  "status": "draft",
  "date": "2026-08-10",
  "publisher": "DHP Uzbekistan",
  "description": "Example PlanDefinition demonstrating actions and relationships.",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "33879002", "display": "Active immunization" } ]
      }
    },
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "topic" },
      "valueCodeableConcept": {
        "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/immunization-schedule-type-cs", "code": "pd-type-0001-00001", "display": "Age-based" } ]
      }
    }
  ],
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
