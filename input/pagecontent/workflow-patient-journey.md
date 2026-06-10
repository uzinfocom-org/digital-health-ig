This workflow shows how a patient's care for one problem is grouped over time. A single visit is an [Encounter](StructureDefinition-uz-core-encounter.html); a course of care that spans many visits - a pregnancy, a cancer pathway, a chronic infection - is an [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html). The episode is the thread that ties the visits, diagnoses and results of one case together so a clinician sees the whole story, not scattered records.

> Profile status: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html) and [Observation](StructureDefinition-uz-core-observation.html) are profiled in UZ Core. The MedicationRequest profile used during treatment is in development - until it publishes, use the base FHIR R5 resource.

Actors: a general practitioner (opens the case and follows it); specialists (treat within the case); the platform (DHP).

<div>{% include patient-journey-sequence.svg %}</div><br clear="all"/>

### 1. Open the episode

When a problem becomes a case to be managed - typically on a confirming result - the clinician creates an `EpisodeOfCare` with `status = active`, the patient in `patient`, the responsible clinician/team, and `period.start` set to the diagnosis date. The diagnostic [Encounter](StructureDefinition-uz-core-encounter.html) and the [Condition](StructureDefinition-uz-core-condition.html) are linked to it.

```
POST [base]/EpisodeOfCare
{ "resourceType": "EpisodeOfCare",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "period": { "start": "2026-05-30" } }
```

### 2. Everything in the case points at the episode

For the life of the case, each visit and each result references the episode, so the record stays grouped. An [Encounter](StructureDefinition-uz-core-encounter.html) carries `episodeOfCare`; an [Observation](StructureDefinition-uz-core-observation.html) records its `encounter`; treatment is captured as `MedicationRequest` (or `MedicationAdministration`) on the same encounters.

```
POST [base]/Encounter
{ "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "episodeOfCare": [{ "reference": "EpisodeOfCare/[id]" }] }
```

### 3. Two shapes of journey

The episode lifecycle differs by the kind of case:

**Acute / curable (e.g. an HCV treatment course).** The episode opens on diagnosis, runs through treatment visits and monitoring labs, and closes when the cure is confirmed: set `status = finished` and `period.end` to the recovery date.

**Chronic / lifelong (e.g. HBV management).** The episode stays `active` for years. Pauses and resumptions are recorded in `EpisodeOfCare.statusHistory` rather than by closing it. When the patient moves to another provider, do **not** reassign the episode: close the original (`status = finished`) and open a new `EpisodeOfCare` at the receiving organization, so each organization owns the part of the journey it delivered.

| Event | Effect |
|-------|--------|
| Case begins (confirming result) | `EpisodeOfCare.status = active`, `period.start` set |
| Care paused / resumed | append to `statusHistory` (`onhold` &rarr; `active`); episode stays open |
| Cure confirmed (acute) | `status = finished`, `period.end` set |
| Transfer of care | original `status = finished`; new `EpisodeOfCare` opened at the new organization |

### 4. Read the journey

A clinician opens the case by reading the episode and the resources that reference it:

```
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]&_sort=-date
GET [base]/Observation?patient=Patient/[id]&_sort=-date
```

Because every visit, result and prescription carries the episode reference, this returns the whole case as one thread - which is the point of grouping by `EpisodeOfCare` rather than leaving the records scattered across encounters.

### Related

- Profiles: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Observation](StructureDefinition-uz-core-observation.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
