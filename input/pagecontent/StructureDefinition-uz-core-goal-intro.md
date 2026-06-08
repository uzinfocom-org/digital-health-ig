UZ Core Goal records a health goal for a patient on the Digital Health Platform - a target the patient is working towards, such as a target weight, a target HbA1c, a blood-pressure target, or a physical-activity target. Goals are often set by the patient in the portal. A Goal may address a [Condition](StructureDefinition-uz-core-condition.html), and its result may be measured by an [Observation](StructureDefinition-uz-core-observation.html).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Goal Must Have

This profile adds no mandatory cardinality of its own. The required elements are inherited from the base resource: a lifecycle status, a description of the goal, and a subject (the patient it is for).

#### Each UZ Core Goal Must Support



- an identifier (e.g. a number from an insurer's or another clinic's system);
- the lifecycleStatus (proposed, planned, accepted, active, on-hold, completed, cancelled, entered-in-error, rejected) - bound to the DHP goal-status value set;
- an achievementStatus (in-progress, improving, worsening, no-change, achieved, sustaining, not-achieved, no-progress, not-attainable) - bound to the DHP goal-achievement value set;
- a category grouping the goal by type (e.g. treatment, dietary, behavioural, nursing);
- a continuous flag - true when effort must continue after the goal is reached (e.g. a lifelong diet);
- a priority (high, medium, low);
- a description of what the goal is (text or code);
- the subject the goal is set for - a [Patient](StructureDefinition-uz-core-patient.html), a Group, or an [Organization](StructureDefinition-uz-core-organization.html);
- a start[x] (when work on the goal begins);
- a target - the parameter measured (`target.measure`), the figure or state to reach (`target.detail[x]`), and the deadline (`target.due[x]`);
- a statusDate and statusReason for the current status;
- the source - who set the goal (a CareTeam, [Patient](StructureDefinition-uz-core-patient.html), [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), or RelatedPerson);
- the medical problems the goal addresses (a [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html), Socioeconomic Observation, medication, nutrition order, service request, risk assessment, or [Procedure](StructureDefinition-uz-core-procedure.html));
- free-text notes;
- the outcome - the [Observation](StructureDefinition-uz-core-observation.html) that records the result achieved.

> A Goal is never hard-deleted. To withdraw it, change `lifecycleStatus` (for example to `cancelled` or `completed`) rather than calling `DELETE`.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full goal with a target and a measured outcome. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is the [example Goal](Goal-example-goal.html).

#### The smallest Goal you should send

Three elements are strictly mandatory: a `lifecycleStatus` saying where in planning the goal sits (proposed, planned, accepted, active, on-hold, completed ...), a `description` of what the goal is, and the `subject` it is for (a plain [Patient](StructureDefinition-uz-core-patient.html) reference). The description may be a SNOMED CT code or free text. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`. This much already passes validation:

```json
{
  "resourceType": "Goal",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal"] },
  "lifecycleStatus": "active",
  "description": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`lifecycleStatus` uses a required binding, so the value must come from the bound value set. To describe a goal that has no suitable code, send `description.text` instead of `coding`.

#### A realistic goal

In practice you send the goal in context: who it is for (`subject`, usually a [Patient](StructureDefinition-uz-core-patient.html)), how it is progressing (`achievementStatus`), how it is grouped (`category`), how important it is (`priority`), when work began (`start[x]`), and who set it (`source`). The `continuous` flag is true when effort must continue after the goal is reached, such as a lifelong diet:

```json
{
  "resourceType": "Goal",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal"] },
  "lifecycleStatus": "active",
  "achievementStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-achievement", "code": "in-progress", "display": "In progress" }]
  },
  "category": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-category", "code": "dietary", "display": "Dietary" }] }
  ],
  "continuous": true,
  "priority": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/goal-priority", "code": "high-priority", "display": "High priority" }]
  },
  "description": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "startDate": "2024-01-01",
  "statusDate": "2024-01-15",
  "statusReason": "The patient started taking medications.",
  "source": { "reference": "Practitioner/example-practitioner" },
  "note": [
    { "text": "Weekly blood pressure monitoring." }
  ]
}
```

`achievementStatus`, `priority` and `lifecycleStatus` each use a required binding; `category` and `description` are bound `example`, so you may use other codes where they fit. `subject` and `source` are plain `Reference` values (`{ "reference": "Type/id" }`).

#### Adding a measurable target

Most goals carry a `target` - the parameter being watched (`target.measure`), the figure or state to reach (`target.detail[x]`), and the deadline (`target.due[x]`). The deadline can be a fixed date (`dueDate`) or a span after the start (`dueDuration`). If you populate `target.detail[x]` you must also send `target.measure`:

```json
"target": [
  {
    "measure": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "1201005", "display": "Benign essential hypertension" }]
    },
    "detailQuantity": { "value": 120, "unit": "mmHg", "system": "http://unitsofmeasure.org", "code": "mm[Hg]" },
    "dueDate": "2024-06-01"
  }
]
```

This `target` array slots into the same resource as the realistic goal above. See [Units and quantities](general-guidance.html#units-and-quantities) for the UCUM rules on `detailQuantity`.

#### Linking the problem and the result

A goal usually exists to tackle a recorded problem and is later judged against a measurement. Point `addresses` at the [Condition](StructureDefinition-uz-core-condition.html) (or [Observation](StructureDefinition-uz-core-observation.html), [Procedure](StructureDefinition-uz-core-procedure.html), medication, or service request) the goal is set for, and point `outcome` at the [Observation](StructureDefinition-uz-core-observation.html) that records the result. Note the difference in shape: `addresses` is a plain `Reference`, while `outcome` is a `CodeableReference`, so its reference sits one level deeper:

```json
{
  "addresses": [
    { "reference": "Condition/example-headache" }
  ],
  "outcome": [
    { "reference": { "reference": "Observation/blood-pressure-example" } }
  ]
}
```

These keys slot into the same resource as the realistic goal above. To withdraw a goal rather than delete it, set `lifecycleStatus` to `cancelled` or `completed` and record the reason in `statusReason`.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
