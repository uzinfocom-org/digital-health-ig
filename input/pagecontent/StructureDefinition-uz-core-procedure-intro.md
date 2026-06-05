UZ Core Procedure records an action performed on or for a patient on the Digital Health Platform - a surgical operation, a therapy session, a diagnostic intervention, and the like. A Procedure is anchored to its [Patient](StructureDefinition-uz-core-patient.html) and to the [Encounter](StructureDefinition-uz-core-encounter.html) in which it took place. When the procedure was ordered, it links back to the originating ServiceRequest (or CarePlan), and may reference the [Condition](StructureDefinition-uz-core-condition.html) or finding that justified it.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Procedure Must Have

This profile adds no mandatory cardinality of its own. The required elements are inherited from the base resource: a status (preparation \| in-progress \| completed \| not-done ...) and a subject (the patient or other target the procedure was performed on).

#### Each UZ Core Procedure Must Support



- an identifier, basedOn (CarePlan or ServiceRequest), and partOf (a parent procedure, observation, or medication administration);
- the status (required binding) and a category;
- the code identifying the procedure (required binding to the DHP procedure-code value set);
- the subject and the encounter it occurred in;
- the occurrence[x] timing, the recorded date, and the recorder;
- the performer and their actor;
- the location, the reason (a condition, observation, procedure, report, or document), and the bodySite (required binding);
- the outcome (extensible binding) and free-text note;
- the items used in the procedure.

> Set `status` to `not-done` (rather than omitting the Procedure) when an ordered procedure was deliberately not performed, so the decision stays on the record.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full procedure record. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is the [example Procedure](Procedure-example-procedure.html).

#### The smallest Procedure you should send

A Procedure's mandatory elements are `status` (a required binding: `preparation` \| `in-progress` \| `completed` \| `not-done` ...) and `subject` (a plain reference to the [Patient](StructureDefinition-uz-core-patient.html) it was performed on), but it is only useful once it also says *what* was done. Add the `code` (a required binding to the DHP procedure-code value set, here a SNOMED CT code) and, in practice, the `encounter` it took place in and when it happened (`occurrence[x]`). Every UZ Core resource must also name the profile in `meta.profile`:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "completed",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrencePeriod": { "start": "2025-05-15T08:00:00Z", "end": "2025-05-15T10:00:00Z" }
}
```

`subject` and `encounter` are plain references (`{ "reference": "Type/id" }`). The occurrence is a choice element: use `occurrencePeriod` for a procedure with a start and end, or `occurrenceDateTime` for a single point in time.

#### A realistic procedure

Fill in the elements the platform expects you to support: an `identifier`, the `category` that groups the procedure, who carried it out (`performer.actor`, referencing a [Practitioner](StructureDefinition-uz-core-practitioner.html) or [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)), where it took place (`location`, a [Location](StructureDefinition-uz-core-location.html)), and the audit trail of when it was set down (`recorded`) and by whom (`recorder`):

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "identifier": [
    { "system": "https://mis.dmed.uz", "value": "proc-0001" }
  ],
  "status": "completed",
  "category": [
    { "text": "Physical therapy procedure" }
  ],
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david", "display": "David Davidov" },
  "encounter": { "reference": "Encounter/example-encounter", "display": "Outpatient Visit" },
  "occurrencePeriod": { "start": "2025-05-15T08:00:00Z", "end": "2025-05-15T10:00:00Z" },
  "recorded": "2025-05-19T09:30:00Z",
  "recorder": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": [
    { "actor": { "reference": "Practitioner/example-practitioner", "display": "Paul Ivanov, PT" } }
  ],
  "location": { "reference": "Location/example-location", "display": "Toshkent shahar 1-sonli shifoxona" }
}
```

`recorder`, `performer.actor` and `location` are all plain references. The `recorded` instant is when the record was entered, which need not match the `occurrence[x]` time the procedure actually happened.

#### Adding the order, reason, body site and outcome

To close the clinical loop, link back to the order that prompted the procedure (`basedOn`, a CarePlan or ServiceRequest), say why it was done (`reason`), where on the body (`bodySite`, a required binding), how it turned out (`outcome`, an extensible binding), and any free-text `note` or items `used`. Note that `reason` and `used` are `CodeableReference` types - the reference sits one level deeper than a plain reference - while `bodySite` and `outcome` are coded `CodeableConcept`s:

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "completed",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david", "display": "David Davidov" },
  "basedOn": [
    { "reference": "CarePlan/example-careplan", "display": "CarePlan #1" }
  ],
  "reason": [
    { "reference": { "reference": "Condition/example-disability", "display": "Aching right foot" } }
  ],
  "bodySite": [
    { "coding": [{ "system": "http://snomed.info/sct", "code": "7769000", "display": "Right foot" }] }
  ],
  "outcome": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "385669000", "display": "Successful" }]
  },
  "note": [
    { "text": "Therapeutic massage of the right foot completed according to the care plan. No adverse reactions noted." }
  ],
  "used": [
    { "reference": { "reference": "Medication/example-medication" } }
  ]
}
```

`basedOn` is a plain reference, but `reason` and `used` are `CodeableReference` - the target nests as `{ "reference": { "reference": "Type/id" } }`. `bodySite` is a list, since a procedure may touch several sites. See [Terminology](general-guidance.html#terminology) for the coded bindings.

#### When the procedure was not performed

When an ordered procedure was deliberately not carried out, do not drop the Procedure - record it with `status` set to `not-done` so the decision stays on the chart. Capture the reason it was skipped in `note` (or in the base `statusReason`):

```json
{
  "resourceType": "Procedure",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure"] },
  "status": "not-done",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "386438000", "display": "Simple massage" }],
    "text": "Therapeutic massage of right foot"
  },
  "subject": { "reference": "Patient/example-david" },
  "note": [
    { "text": "Procedure cancelled - patient declined." }
  ]
}
```

See [Missing & suppressed data](general-guidance.html#missing-data) for choosing between a not-done status and other absence mechanisms.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
