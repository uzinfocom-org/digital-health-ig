UZ Core CarePlan describes how practitioners intend to care for a [Patient](StructureDefinition-uz-core-patient.html) or a [Group](StructureDefinition-uz-core-group.html) over a period of time. It is a general profile for any plan on the Digital Health Platform: a nurse's home patronage visits, a course of physiotherapy, a sick leave case. A scenario-specific guide derives from it and adds its own identifiers, categories and extensions. The plan groups the requests for what is to be done ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html), [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), [SupplyRequest](StructureDefinition-uz-core-supply-request.html) and others) and links the events that record what was done, such as a [Procedure](StructureDefinition-uz-core-procedure.html). A Procedure, [Observation](StructureDefinition-uz-core-observation.html) or [Immunization](StructureDefinition-uz-core-immunization.html) carried out under the plan points back to it from `basedOn`.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when data is available ([Must Support](must-support.html)). Must Support means systems populate the element when they have the information and process it on receipt. See the [formal profile](#profile) for exact types, cardinalities, and bindings.

#### Each UZ Core CarePlan Must Have

This profile adds no new mandatory cardinalities. Follow the base FHIR requirements: a `status`, an `intent` and a `subject`.

#### Each UZ Core CarePlan Must Support

- business identifiers (`identifier`);
- the definition the plan follows (`instantiatesCanonical`, a [PlanDefinition](StructureDefinition-uz-core-plan-definition.html), [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) or [Questionnaire](StructureDefinition-uz-core-questionnaire.html), or `instantiatesUri`);
- `basedOn`, `replaces` and `partOf` links to other plans;
- `status` (bound to [request status](ValueSet-service-request-status-vs.html)) and `intent` (bound to [CarePlan intent](ValueSet-careplan-intent-vs.html));
- `category`, `title` and `description`;
- `subject` ([Patient](StructureDefinition-uz-core-patient.html) or [Group](StructureDefinition-uz-core-group.html)) and the [Encounter](StructureDefinition-uz-core-encounter.html) the plan was created in;
- `period` and `created`;
- `custodian`, `contributor` and `careTeam`;
- `addresses` ([Condition](StructureDefinition-uz-core-condition.html)), `supportingInfo` and `goal` ([Goal](StructureDefinition-uz-core-goal.html));
- `activity`: `plannedActivityReference` for the request, `performedActivity` for the event, and `progress`;
- `note`.

### Building the JSON, step by step

**1. Minimal plan.** Only the three base elements are required. `intent` takes one of five codes: use `plan` for a plan a practitioner intends to follow and `order` for a plan that authorises its activities.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "status": "active",
  "intent": "plan",
  "subject": { "reference": "Patient/example-jasur" }
}
```

**2. Describe the plan.** `category` says what kind of plan it is, using a SNOMED CT descendant of `734163000` Care plan, here `773130005` Nursing care plan. `custodian` is who is responsible for the plan, and `period` how long it lasts.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "language": "uz",
  "status": "active",
  "intent": "plan",
  "category": [{
    "coding": [{ "system": "http://snomed.info/sct", "code": "773130005", "display": "Nursing care plan" }]
  }],
  "title": "Yangi tug'ilgan chaqaloq patronaji",
  "subject": { "reference": "Patient/example-jasur" },
  "period": { "start": "2015-06-20", "end": "2015-07-20" },
  "created": "2015-06-22T09:00:00+05:00",
  "custodian": { "reference": "PractitionerRole/example-patronage-nurse-role" }
}
```

**3. Add the activities.** Each `activity` is either planned or performed. A planned activity is a request, referenced from `plannedActivityReference`. A performed activity is the event that records it, in `performedActivity`; that element is a `CodeableReference`, so the reference sits one level deeper, under `reference`.

```json
"activity": [
  {
    "plannedActivityReference": { "reference": "ServiceRequest/example-nursing-newborn-home-visit-request" }
  },
  {
    "performedActivity": [{ "reference": { "reference": "Procedure/example-procedure" } }]
  }
]
```

The full examples are the [newborn nursing patronage plan](CarePlan-example-newborn-patronage-careplan.html) and the [therapeutic massage course](CarePlan-example-massage-careplan.html).

See the [Quick Start](#quick-start) for API calls.
