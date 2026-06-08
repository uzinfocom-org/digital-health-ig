UZ Core AdverseEvent records an adverse event such as a post-immunization reaction on the Digital Health Platform. It references the suspected entity that may have caused it - for a vaccine reaction this is the [Immunization](StructureDefinition-uz-core-immunization.html) - and it may be accompanied by an [Observation](StructureDefinition-uz-core-observation.html) or [Condition](StructureDefinition-uz-core-condition.html) describing the reaction itself. It identifies the [Patient](StructureDefinition-uz-core-patient.html) affected and the [Practitioner](StructureDefinition-uz-core-practitioner.html) who recorded it. The event can be an actual harm or an intercepted near-miss.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core AdverseEvent Must Have

This profile adds no mandatory cardinality of its own. The required elements are inherited from the base resource: the status of the record (1..1), the actuality - actual harm versus a potential near-miss (1..1) - and the subject the event happened to (1..1). In practice you will also always populate the suspect entity (see Must Support below).

#### Each UZ Core AdverseEvent Must Support



- an identifier, the status of the record, and the actuality (actual harm versus a potential near-miss);
- the subject the event happened to, the encounter, and the occurrence (a date/time, period, or schedule);
- when the event was detected and its recorded date;
- the resulting effect - the [Condition](StructureDefinition-uz-core-condition.html) or [Observation](StructureDefinition-uz-core-observation.html) the event caused - and the location;
- the seriousness and outcome;
- the recorder, and the participant (their function and actor);
- the suspect entity - the instance suspected of causing the event, which for a post-immunization reaction is the [Immunization](StructureDefinition-uz-core-immunization.html);
- notes.

> For a post-immunization reaction, point the suspect entity at the [Immunization](StructureDefinition-uz-core-immunization.html) and use resulting effect to link the Condition or Observation that describes the reaction.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full adverse-event record. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([fatal anaphylaxis](AdverseEvent-example-fatal-anaphylaxis.html), [averted medication error](AdverseEvent-example-averted-medication-error.html)).

#### The smallest AdverseEvent you should send

The base resource requires the `status` of the record, the `actuality` (was it an actual harm or a potential near-miss?), and the `subject` it happened to; an adverse event is only meaningful when you also add the `suspectEntity` thought to have caused it. Note that `status` and `actuality` are plain codes, not `CodeableConcept` - send the bare string. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event"] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "suspectEntity": [
    { "instanceReference": { "reference": "Medication/example-prednisone" } }
  ]
}
```

`status` (registered, in-progress, completed ...) and `actuality` (`actual` / `potential`) each use a required binding - the value must come from the bound value set. `suspectEntity.instance[x]` is the instance suspected of causing the event; here a Medication, but for a post-immunization reaction it is the [Immunization](StructureDefinition-uz-core-immunization.html), and it may also be a Procedure, Substance, Device, or MedicationAdministration. It is a plain `Reference`, so `instanceReference` holds `{ "reference": "Type/id" }` directly.

#### A realistic actual adverse event

For a real event that reached the patient, fill in when it happened (`occurrenceDateTime`), when it was `detected`, the `recordedDate`, the `encounter` and `location`, the `resultingEffect` (the [Condition](StructureDefinition-uz-core-condition.html) or [Observation](StructureDefinition-uz-core-observation.html) the event caused), the `seriousness` and `outcome`, the `recorder`, and the `participant` who reported it:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "completed",
  "actuality": "actual",
  "subject": { "reference": "Patient/example-david" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:45:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "resultingEffect": [ { "reference": "Condition/example-anaphylaxis" } ],
  "location": { "reference": "Location/example-location" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "outcome": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "405535005",
          "display": "Adverse incident resulting in death"
        }
      ]
    }
  ],
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "participant": [
    {
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code": "AUT",
            "display": "author (originator)"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-amoxicillin" } } ],
  "note": [
    {
      "text": "Patient developed anaphylaxis shortly after amoxicillin administration and died despite resuscitation efforts."
    }
  ]
}
```

Unlike `seriousness` and `outcome`, which are `CodeableConcept` (here `outcome` uses SNOMED CT, `seriousness` the HL7 seriousness code system), `resultingEffect`, `subject`, `encounter`, `location`, `recorder`, and `participant.actor` are all plain `References` - `{ "reference": "Type/id" }`, with no extra nesting. `participant.function` carries why that person was involved (here `AUT`, the author who recorded it).

#### When it is a near-miss, not actual harm

An intercepted event that never reached the patient is recorded the same way, but with `actuality` set to `potential`. There is no `resultingEffect` (nothing happened to the patient) and `outcome` is omitted; use `note` to explain how it was caught. The `suspectEntity` still points at what would have caused the harm:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:35:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "location": { "reference": "Location/example-location-1" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-prednisone" } } ],
  "note": [
    {
      "text": "Prednisone ordered despite a documented contraindication; pharmacy intercepted it before it reached the patient."
    }
  ]
}
```

A near-miss is still worth recording: the `seriousness` reflects how bad it would have been, and `detected` captures when the safety net caught it. See [Missing & suppressed data](general-guidance.html#missing-data) for when to leave an element out versus mark it absent.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
