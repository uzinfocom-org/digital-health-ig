UZ Core Encounter represents a single interaction between a patient and the health system - a visit - on the Digital Health Platform. It is the pivot of the patient journey: [Observations](StructureDefinition-uz-core-observation.html), [Procedures](StructureDefinition-uz-core-procedure.html), [Conditions](StructureDefinition-uz-core-condition.html), MedicationRequests, and clinical documents all reference the Encounter they belong to. It records where the visit took place, who provided it, and the diagnoses assigned during it (each pointing at a [Condition](StructureDefinition-uz-core-condition.html)), and may be grouped under an [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Encounter Must Have

This profile's only mandatory elements are a status (planned \| in-progress \| completed \| cancelled ...), inherited as mandatory from the base resource under a required binding, and - when a location is recorded - its location reference (location.location 1..1), since you cannot list a location entry without saying which place it is.

#### Each UZ Core Encounter Must Support



- an identifier (0..1);
- the status, class, priority, and type (each a required binding);
- a serviceType (referencing a HealthcareService);
- the subject (the patient) and the subjectStatus (required binding);
- episodeOfCare, basedOn, careTeam, and partOf links;
- the serviceProvider organization;
- participant entries with their actor, type (extensible binding), and period;
- the appointment that scheduled the encounter;
- the reason - with a `use` (preferred binding) and a `value` referencing a Condition, DiagnosticReport, Procedure, or Observation;
- the virtualService (telemedicine) detail;
- the actualPeriod, plannedStartDate, plannedEndDate, and length;
- the diagnosis list, each with its condition (a Condition reference) and use;
- the account for billing;
- admission detail - origin, admitSource, reAdmission, destination, dischargeDisposition (each coded value is a required binding);
- the location where the encounter takes place.

> An Encounter cannot be set to `completed` while its period end is earlier than its start - check `actualPeriod` before closing the visit.

### Building the JSON, step by step

The examples below build up a single visit - an emergency inpatient encounter - from the bare minimum to the full admission record. The complete instance is the [example Encounter](Encounter-example-encounter.html). Copy a stage and adapt it; every value shown validates against this profile.

#### The smallest Encounter you should send

`status` is the only strictly mandatory element, but an Encounter is only useful with a `class` (how the contact happened - inpatient, ambulatory, emergency) and the `subject` it concerns. Note that `class` is a **list** of `CodeableConcept`:

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "class": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "IMP", "display": "Inpatient encounter" }] }
  ],
  "subject": { "reference": "Patient/example-patient" }
}
```

`status`, `class`, `priority`, `type` and `subjectStatus` each use a required binding - the value must come from the bound value set (the Snapshot view below lists each one).

#### A realistic visit

Fill in when it happened (`actualPeriod`), what kind of service it was (`type`), the patient's state during it (`subjectStatus`), who took part (`participant`, whose `actor` references a practitioner or [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)), and why (`reason` - pointing at a Condition, DiagnosticReport, Procedure or Observation):

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] },
  "status": "completed",
  "class": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "IMP",
          "display": "Inpatient encounter"
        }
      ]
    }
  ],
  "priority": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code": "EM",
        "display": "Emergency"
      }
    ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs",
          "code": "mserv-0001-00004",
          "display": "Treatment services"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-patient" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00001",
        "display": "Awake"
      }
    ]
  },
  "actualPeriod": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" },
  "participant": [
    {
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "ATND",
              "display": "attender"
            }
          ]
        }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" },
      "period": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-cs",
              "code": "mserv-0002-00001",
              "display": "Disease"
            }
          ]
        }
      ],
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ]
}
```

#### Diagnosis, admission and location

For an admission, add the `diagnosis` list (each `condition` is a `CodeableReference` to a [Condition](StructureDefinition-uz-core-condition.html)), the `admission` detail (admit source, re-admission flag, discharge disposition - all required bindings), and where it took place. If you include a `location` entry you must name the place - `location.location` is mandatory:

```json
{
  "diagnosis": [
    { "condition": [ { "reference": { "reference": "Condition/example-headache" } } ] }
  ],
  "admission": {
    "admitSource": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/admit-source",
          "code": "psych",
          "display": "From psychiatric hospital"
        }
      ]
    },
    "reAdmission": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0092",
          "code": "R",
          "display": "Re-admission"
        }
      ]
    },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
          "code": "home",
          "display": "Home"
        }
      ]
    }
  },
  "location": [
    { "location": { "reference": "Location/example-location" }, "status": "completed" }
  ]
}
```

These keys slot into the same resource as the realistic visit above. To group a visit under a longer course of care, reference an [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) through `episodeOfCare`.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
