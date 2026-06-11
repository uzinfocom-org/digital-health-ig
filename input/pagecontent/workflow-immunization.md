This workflow shows how the national immunization schedule drives a personalised recommendation, how the patient is seen across the booking, consultation and vaccination visits, and how a vaccine dose is recorded. All resources used here are profiled in UZ Core.

Actors: Immunization Program Manager / Data Steward (maintains the schedule); a medical registrar (books the patient); the patient or parent/guardian (views recommendations); a doctor and nurse (assess eligibility and administer). The clinical visits are carried as FHIR [Encounters](StructureDefinition-uz-core-encounter.html) - one consultation encounter and a separate vaccination encounter.

The chain:

<div>{% include immunization-flow.svg %}</div><br clear="all"/>

### 1. The schedule as code

The national schedule is published once as a [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html). Each recommended dose is a `PlanDefinition.action`; the vaccine and dosing detail are carried on the action, via `definitionCanonical` to an `ActivityDefinition`, or via the national extensions (`doseSequence`, `maximumInterval`, `gracePeriod`). Minimum intervals between doses use `action.relatedAction.offsetDuration`; eligibility uses `action.condition`.

```
GET [base]/PlanDefinition?status=active&context-type-value=focus$http://snomed.info/sct|33879002
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

The recommendation is normally *computed* by the engine from the schedule and the patient's history - clients display it. During the consultation a clinician may also review it, or author one where the engine has not produced it.

### 3. The consultation encounter

Care is delivered within an [Encounter](StructureDefinition-uz-core-encounter.html). Booking and consultation share a single, long-lived consultation encounter whose `status` advances as the visit progresses - no new encounter is created for each clinician:

- A medical registrar books the patient and creates the encounter with `status = planned`. `subject` is the patient, `serviceProvider` is the clinic, and `participant` lists the registrar and the assigned nurse. The patient now appears in that nurse's worklist.
- The nurse opens the visit for the primary intake and updates the same encounter to `status = in-progress`, recording the `reason` for the visit and the `actualPeriod`.
- The family doctor examines the patient on the same encounter, reviews or authors the [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html), and links it by setting `Encounter.reason` to reference that recommendation. When the consultation ends the encounter moves to `status = completed`.

```
# registrar books the patient (consultation encounter)
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "planned",
  "subject": { "reference": "Patient/[id]" },
  "serviceProvider": { "reference": "Organization/[clinic]" },
  "participant": [{ "actor": { "reference": "Practitioner/[nurse]" } }]
}

# nurse opens the visit
PUT [base]/Encounter/[id]    # status -> in-progress, set reason, actualPeriod

# doctor links the recommendation and closes the consult
PUT [base]/Encounter/[id]    # reason -> ImmunizationRecommendation, status -> completed
```

### 4. Administer the dose

The vaccination typically happens at another facility, on another day, than the consultation - so it is recorded against a separate encounter rather than the consultation one. The nurse opens that vaccination encounter (`status = in-progress`) for the administration, then records an [Immunization](StructureDefinition-uz-core-immunization.html) that points back to it via `Immunization.encounter` and to the recommendation via `Immunization.basedOn`. The `status` carries the outcome:

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
  "encounter": { "reference": "Encounter/[vaccination-encounter-id]" },
  "basedOn": [{ "reference": "ImmunizationRecommendation/[id]" }],
  "occurrenceDateTime": "2026-05-30",
  "lotNumber": "AB-2231",
  "performer": [{ "actor": { "reference": "PractitionerRole/[id]" } }],
  "protocolApplied": [{ "doseNumberPositiveInt": 1 }]
}
```

> A dose is uniquely identified by patient + vaccineCode + occurrence + lotNumber - do not submit the same combination twice.

### 5. Record a reaction (if any)

If the patient has a post-immunization reaction, record an [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) whose `suspectEntity` references the Immunization, optionally with an [Observation](StructureDefinition-uz-core-observation.html) describing the reaction.

### Related

- Profiles: [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) &middot; [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Immunization](StructureDefinition-uz-core-immunization.html) &middot; [AdverseEvent](StructureDefinition-uz-core-adverse-event.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
