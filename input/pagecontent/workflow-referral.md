This workflow shows how a referral is created and fulfilled. Referrals are where developers most often get lost, because two resources are involved and their relationship is not obvious from the profile tables. The one-line rule:

> `ServiceRequest` is the referral itself - *what* is to be done. `Task` is the work of fulfilling it - *who* did it, *when*, and *how far along* it is.

> Profile status: the ServiceRequest and Task profiles are in development. This page describes the intended modelling so systems can build against it now; until the profiles publish, use the base FHIR R5 resources and the rules below. [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html), [Encounter](StructureDefinition-uz-core-encounter.html) and [Condition](StructureDefinition-uz-core-condition.html) used at fulfilment are profiled.

Actors: the referring clinician; approval commissions (for state-insurance referrals); the performing facility.

<div>{% include referral-sequence.svg %}</div><br clear="all"/>

### 1. Create the referral

The clinician creates a `ServiceRequest` (`intent = order`) carrying the referral classification: the service requested in `code`, urgency in `priority` (`routine` \| `urgent` \| `stat`), the target service via `HealthcareService`, the clinical justification in `reason`, and the financing type in a `coverageKind` extension (`state-insurance` \| `insurance` \| `self-payment` \| `other`).

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest", "status": "active", "intent": "order",
  "priority": "routine",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "..." }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }] }
```

### 2. The approval chain (state-insurance only)

This is the central decision rule:

> If `ServiceRequest.coverageKind = state-insurance`, the platform creates a chain of approval `Task`s; otherwise no Task is created and the referral proceeds directly.

Each approval stage is a `Task` referencing the ServiceRequest (`Task.focus`/`basedOn`) with a `Task.code` from the approval category set:

`approve-family-doctor` &rarr; `approve-specialist` &rarr; `approve-regional-commission` &rarr; `approve-national-commission` &rarr; `approve-insurance-fund` &rarr; `approve-hospitalization`

A Task carries two status axes: the FHIR `Task.status` (the lifecycle: `requested`, `accepted`, `in-progress`, `completed`, `rejected`, `on-hold`, `failed`, …) and a `Task.businessStatus` (the domain state shown to users: `in-review`, `confirmed`, `overdue`, …).

> Tasks have no user-facing UI. Managers act on process events; they never close a Task directly. This prevents a stage being marked done without the underlying work.

### 3. Synchronisation rules

The ServiceRequest and its Tasks stay consistent by these rules:

| Event | Effect |
|-------|--------|
| ServiceRequest becomes `active` (state-insurance) | first approval Task created with `status=requested` |
| ServiceRequest set `revoked` | all open Tasks set `revoked` |
| ServiceRequest set `entered-in-error` | all Tasks set `entered-in-error` |
| Final approval Task `completed` | ServiceRequest set `completed` |
| A commission Task `failed`/rejected | ServiceRequest set `revoked` |
| Returned for revision | Task &rarr; `on-hold` / `in-review`; ServiceRequest &rarr; `on-hold`, then back to `active` with a new approval Task |
| SLA breach | only `Task.businessStatus = overdue` - the ServiceRequest status does not change |

<div>{% include referral-states.svg %}</div><br clear="all"/>

The user-facing label is derived from the Task state - e.g. `businessStatus=overdue` &rarr; "Overdue", `status=requested` &rarr; "Awaiting acceptance", `status=rejected` &rarr; "Rejected".

### 4. Fulfilment

When the service is delivered, the performing facility records the result against the referral: a [Procedure](StructureDefinition-uz-core-procedure.html) and/or [Observation](StructureDefinition-uz-core-observation.html) (and an [Encounter](StructureDefinition-uz-core-encounter.html) for the visit), each linking back to the ServiceRequest via `basedOn`. Imaging results use `ImagingStudy`/`DocumentReference`; a narrative conclusion uses `DiagnosticReport`. On completion the final Task is `completed` and the ServiceRequest is `completed`.

```
GET [base]/Task?based-on=ServiceRequest/[id]&_sort=-modified
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/Procedure?based-on=ServiceRequest/[id]
```

A cancelled referral cannot be fulfilled, a Procedure cannot start without an active ServiceRequest, and a completed Procedure cannot be modified.

### Related

- Profiles used at fulfilment: [Procedure](StructureDefinition-uz-core-procedure.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
