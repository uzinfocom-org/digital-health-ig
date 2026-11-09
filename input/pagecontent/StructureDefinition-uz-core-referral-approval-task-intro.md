UZ Core Task Referral Approval tracks one step in approving a state-funded referral or hospitalization, the procedure set out in Annex 1 to Resolution of the Cabinet of Ministers No. 694 of 04.11.2025. The referral itself is a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) with the state tariff payment type; it says what is to be done. Each Task says who must act on it at one stage (the family doctor, a specialist, the regional or national commission, the insurance fund, the receiving hospital), by when, and how far that stage has got. The platform creates and updates the Tasks from process events and keeps the referral's status in step with them; users never close a Task directly. The [referral workflow](workflow-referral.html) gives the order of the stages and the rules that keep the referral and its Tasks consistent.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core Task Referral Approval Must Have

Every Task must point to the referral twice: in `basedOn`, the request it fulfils, and in `focus`, the request it acts on. The profile makes both mandatory and allows exactly one of each. The base resource also requires a `status` and an `intent`.

#### Each UZ Core Task Referral Approval Must Support

- a business identifier for the task (`identifier`, at most one);
- the approval stage (`code`: family doctor / specialist / regional commission / national commission / insurance fund / hospitalization);
- the referral the task belongs to (`basedOn` and `focus`) and a larger task it is part of (`partOf`);
- the lifecycle status (`status`: requested / accepted / in-progress / on-hold / completed / rejected / failed and others) and the status shown to users (`businessStatus`: in review / confirmed / overdue and others);
- the intent (`intent`, usually order);
- the [Patient](StructureDefinition-uz-core-patient.html) the referral is for (`for`);
- who must act at this stage (`owner`: an [Organization](StructureDefinition-uz-core-organization.html) or [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html));
- the deadline for the stage (`requestedPeriod`, its start and end) and when work on it actually started and ended (`executionPeriod`).

### Two statuses

A Task carries two statuses, and they answer different questions. `status` is the FHIR lifecycle of the task and drives the referral: when the last approval Task is `completed` the ServiceRequest becomes `completed`, and when a commission Task is `rejected` or `failed` the ServiceRequest is `revoked`. `businessStatus` is the state of the stage as users see it, from the [national task business statuses](CodeSystem-task-business-status-cs.html). The profile adds one rule (`uzcore-tsk-1`, a warning): when a task is not completed, cancelled or failed and its `requestedPeriod.end` has passed, `businessStatus` should be `overdue`. An overdue stage does not change the referral's status.

### Building the JSON, step by step

The examples below go from the smallest instance to a stage that has missed its deadline. Each one validates against this profile. The complete reference instances start with the [family doctor approval](Task-example-task-family-doctor.html), and the referral they belong to is the [hospitalization referral](ServiceRequest-example-hospitalization-referral.html).

#### The smallest Task you should send

`basedOn`, `focus`, `status` and `intent` are mandatory, and every UZ Core resource names its profile in `meta.profile`. A task is only useful with its stage in `code`. This much passes validation:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-family-doctor",
        "display": "Oilaviy shifokorning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "requested",
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" }
}
```

The stage codes have Uzbek displays, so the resource sets `language` to `uz`. `basedOn` and `focus` both reference the same ServiceRequest. A new stage starts as `requested`.

#### A stage under review

A specialist at the receiving hospital is reviewing the referral. `owner` is the organization that must act, `for` the patient, `requestedPeriod` the deadline set for this stage, and `executionPeriod.start` when the review began:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-specialist",
        "display": "Mutaxassisning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "in-progress",
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "in-review",
        "display": "Ko'rib chiqilmoqda"
      }
    ]
  },
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "for": { "reference": "Patient/example-nodira" },
  "requestedPeriod": { "start": "2026-03-06T09:00:00+05:00", "end": "2026-12-31T18:00:00+05:00" },
  "executionPeriod": { "start": "2026-03-06T10:15:00+05:00" },
  "owner": { "reference": "Organization/tashkent-diseases-hospital" }
}
```

`owner` is an [Organization](StructureDefinition-uz-core-organization.html) for a commission or a facility, or a [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) when one doctor must act. Set `executionPeriod.end` when the stage finishes.

#### A stage past its deadline

The regional commission has not acted and the deadline in `requestedPeriod.end` has passed. The task is still `requested`, so `businessStatus` is `overdue`:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-regional-commission",
        "display": "Mintaqaviy komissiyaning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "requested",
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "overdue",
        "display": "Muddati o'tgan"
      }
    ]
  },
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "for": { "reference": "Patient/example-nodira" },
  "requestedPeriod": { "start": "2026-03-07T09:00:00+05:00", "end": "2026-03-08T18:00:00+05:00" },
  "owner": { "reference": "Organization/example-organization" }
}
```

Without `overdue` here the validator warns that `uzcore-tsk-1` is not met.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
