This workflow shows how the national immunization schedule drives a personalised recommendation, and how a vaccine dose is recorded. All four resources used here are profiled in UZ Core.

Actors: Immunization Program Manager / Data Steward (maintains the schedule); the patient or parent/guardian (views recommendations); a doctor and nurse (assess eligibility and administer).

The chain:

<div>{% include immunization-flow.svg %}</div><br clear="all"/>

### 1. The schedule as code

The national schedule is published once as a [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html). Each recommended dose is a `PlanDefinition.action`; the vaccine and dosing detail are carried on the action, via `definitionCanonical` to an `ActivityDefinition`, or via the national extensions (`doseSequence`, `maximumInterval`, `gracePeriod`). Minimum intervals between doses use `action.relatedAction.offsetDuration`; eligibility uses `action.condition`.

```
GET [base]/PlanDefinition?status=active&context-type-value=focus$vaccination
```

> Only one schedule version may be active at a time for a given scope/jurisdiction, and the schedule must satisfy the validation rules (no dose-sequence gaps, no impossible timing windows, no two overlapping active versions). See the [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) page.

### 2. Generate the recommendation

The recommendation engine reads the active PlanDefinition, the patient's existing [Immunization](StructureDefinition-uz-core-immunization.html) history, and the patient's demographics, and produces an [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html). Each entry carries `vaccineCode` and/or `targetDisease`, `doseNumber`, a `forecastStatus` (due, overdue, …) and a `dateCriterion` (earliest/recommended/latest dates).

```
# read what a patient is due for
GET [base]/ImmunizationRecommendation?patient=Patient/[id]&_sort=-date

# read the doses already given
GET [base]/Immunization?patient=Patient/[id]&status=completed
```

The recommendation is *computed*, not hand-entered - clients display it, they do not author it.

### 3. Assess and administer

The doctor reviews the recommendation and the history and decides whether the patient is eligible. The nurse administers, and the system records an `Immunization`. The `status` carries the outcome:

| Outcome | `Immunization.status` | Also set |
|---------|------------------------|----------|
| Vaccine given | `completed` | `occurrence`, `vaccineCode`, `administeredProduct`, `lotNumber`, `doseQuantity`, `performer` |
| Medical exemption | `not-done` | `statusReason` = `MEDPREC` (medical precaution) or `IMMUNE` (immunity) |
| Refusal | `not-done` | `statusReason` = `PATOBJ` (patient objection) |
| Product unavailable | `not-done` | `statusReason` = `OSTOCK` (product out of stock) |
| Recorded in error | `entered-in-error` | - |

`statusReason` is bound (required) to the [Immunization status reason value set](ValueSet-immunization-status-reason-vs.html); the four codes above, from HL7 v3 ActReason, are the only valid values.

```
POST [base]/Immunization
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03" }] },
  "patient": { "reference": "Patient/[id]" },
  "occurrenceDateTime": "2026-05-30",
  "lotNumber": "AB-2231",
  "performer": [{ "actor": { "reference": "PractitionerRole/[id]" } }],
  "protocolApplied": [{ "doseNumberPositiveInt": 1 }]
}
```

> A dose is uniquely identified by patient + vaccineCode + occurrence + lotNumber - do not submit the same combination twice.

### 4. Record a reaction (if any)

If the patient has a post-immunization reaction, record an [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) whose `suspectEntity` references the Immunization, optionally with an [Observation](StructureDefinition-uz-core-observation.html) describing the reaction.

### Related

- Profiles: [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) &middot; [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) &middot; [Immunization](StructureDefinition-uz-core-immunization.html) &middot; [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
