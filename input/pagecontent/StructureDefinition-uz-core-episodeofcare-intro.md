UZ Core EpisodeOfCare groups a series of [Encounters](StructureDefinition-uz-core-encounter.html) into one ongoing case of care managed by an organization on the Digital Health Platform - for example a pregnancy pathway or a chronic-disease management programme. It is anchored to its [Patient](StructureDefinition-uz-core-patient.html), owned by a managing [Organization](StructureDefinition-uz-core-organization.html), and addresses one or more [Conditions](StructureDefinition-uz-core-condition.html). Decide deliberately whether to open a new episode or reuse one: an acute, curable condition's episode is closed once the patient is cured, whereas a lifelong chronic condition's episode stays active for years and may be transferred between organizations.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core EpisodeOfCare Must Have

This profile adds no mandatory cardinality of its own. The required elements are inherited from the base resource: a status (planned \| active \| onhold \| finished \| cancelled ...) and a patient.

#### Each UZ Core EpisodeOfCare Must Support



- an identifier;
- the status (required binding) and the statusHistory (each past `status` and its `period`);
- a type classifying the episode;
- the reason, with a `use` and a `value` (a Condition, Procedure, Observation, or HealthcareService);
- the diagnosis, with its condition (a Condition reference) and its use (role of the diagnosis);
- the patient and the managingOrganization responsible for coordinating care;
- the overall period;
- the referralRequest (a ServiceRequest);
- the careManager (the coordinating practitioner or role) and the careTeam.

> One EpisodeOfCare spans many Encounters - link each visit back to the episode from the Encounter's `episodeOfCare`, rather than opening a fresh episode per visit.

### Building the JSON, step by step

The examples below build up from a realistic episode to a full case of care. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([preventive episode](EpisodeOfCare-UZCoreEpisodeOfCare-Example.html), [pregnancy episode](EpisodeOfCare-UZCoreEpisodeOfCare-Example02.html)).

#### A realistic episode

In practice you send the things that let the platform manage and find the episode: a business `identifier`, the `type` that classifies the episode, the `managingOrganization` that coordinates the care, the [Patient](StructureDefinition-uz-core-patient.html) it concerns, and the `period` over which it runs. The `careManager` (the coordinating practitioner) is the person to chase about the case:

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"]
  },
  "identifier": [
    {
      "system": "http://dhp.uz/ids/episode-of-care",
      "value": "EOC-2025-0001"
    }
  ],
  "status": "active",
  "type": [
    {
      "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs", "code": "mserv-0001-00001" }],
      "text": "Preventive services"
    }
  ],
  "patient": { "reference": "Patient/example-salim" },
  "managingOrganization": { "reference": "Organization/example-organization" },
  "careManager": { "reference": "Practitioner/example-practitioner" },
  "period": { "start": "2025-08-01" }
}
```

`patient`, `managingOrganization` and `careManager` are plain `Reference` types - the target sits directly in `reference`. Leave `period.end` off while the episode is still open; add it only when the case closes.

#### Adding the reason and diagnosis

The clinical content of the episode is its `reason` (why care is being given) and its `diagnosis` (the conditions being addressed). Both `reason.value` and `diagnosis.condition` are `CodeableReference` types, so the reference sits one level deeper (`{ "reference": { "reference": "..." } }`) than the plain references above. Each `diagnosis.use` records the role of that diagnosis (here `DD`, the primary diagnosis):

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare" ] },
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "managingOrganization": { "reference": "Organization/example-organization" },
  "reason": [
    {
      "use": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-reason-use-cs",
            "code": "mserv-0002-00002"
          }
        ],
        "text": "Preventive visit"
      },
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ],
  "diagnosis": [
    {
      "condition": [ { "reference": { "reference": "Condition/example-headache" } } ],
      "use": {
        "coding": [
          { "system": "http://terminology.hl7.org/CodeSystem/diagnosis-role", "code": "DD" }
        ],
        "text": "Primary diagnosis"
      }
    }
  ]
}
```

`reason.value` may point at a [Condition](StructureDefinition-uz-core-condition.html), Procedure, Observation, or HealthcareService; `diagnosis.condition` must be a [Condition](StructureDefinition-uz-core-condition.html).

#### Recording how the status changed over time

A long-running episode moves through several statuses - it may be `planned`, then `active`, then `finished`. Set the current value in `status`; record each earlier state in `statusHistory`, where each entry carries the past `status` and the `period` it covered:

```json
{
  "resourceType": "EpisodeOfCare",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"]
  },
  "status": "planned",
  "patient": { "reference": "Patient/example-emma" },
  "statusHistory": [
    {
      "status": "active",
      "period": { "start": "2025-08-16", "end": "2025-09-01" }
    }
  ]
}
```

Each `statusHistory.status` is drawn from the same value set as `status`. Use this to keep an audit trail when, for instance, a chronic-disease episode is put `onhold` and later resumed.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
