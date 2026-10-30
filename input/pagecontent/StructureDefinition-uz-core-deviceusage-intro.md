UZ Core DeviceUsage records that a patient is using, has used or will use a device - an insulin pump, a hearing aid, a wheelchair, an intrauterine device. It is a statement: who reported the use, when, how regularly the device is actually used, and why it is used. It does not describe the device itself; the device is given as a SNOMED CT concept, or as a reference to a Device or DeviceDefinition resource. A DeviceUsage may fulfil a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) that ordered the device, and its reason can point to a [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) or [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). The use is reported by the [patient](StructureDefinition-uz-core-patient.html), a [practitioner](StructureDefinition-uz-core-practitioner.html) or [practitioner role](StructureDefinition-uz-core-practitioner-role.html), a [related person](StructureDefinition-uz-core-relatedperson.html) or an [organization](StructureDefinition-uz-core-organization.html).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core DeviceUsage Must Have

This profile adds no mandatory elements of its own. The base DeviceUsage resource requires three:

1. a `status` of the statement, from the [device usage status value set](ValueSet-deviceusage-status-vs.html) (required binding);
2. the `patient` - a reference to a [UZ Core Patient](StructureDefinition-uz-core-patient.html);
3. the `device` - a coded device concept or a reference to a Device or DeviceDefinition.

#### Each UZ Core DeviceUsage Must Support

- an identifier for the statement, always sent with its `system`;
- `basedOn` - the [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) that ordered the device;
- `category` - the setting of the use, from the [device usage category value set](ValueSet-deviceusage-category-vs.html) (preferred binding);
- `timing[x]` - when the device is used: a `dateTime`, a `Period` or a `Timing`;
- `dateAsserted` - when the statement was made;
- `usageStatus` and `usageReason` - the status of the use itself, as opposed to the status of the statement, and why it has that status;
- `adherence` - how regularly the device is used ([adherence codes](ValueSet-deviceusage-adherence-code-vs.html)), with a reason ([adherence reasons](ValueSet-deviceusage-adherence-reason-vs.html)) (preferred bindings);
- `informationSource` - who reported the use: Patient, Practitioner, PractitionerRole, RelatedPerson or Organization, all UZ Core profiles;
- `reason` - why the device is used, as a concept or a reference to a UZ Core Condition, Observation or DiagnosticReport;
- `bodySite` - where on the body the device is used, from the [body site value set](ValueSet-body-site-vs.html) (preferred binding);
- `note`.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a statement that records adherence. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([active use](DeviceUsage-example-deviceusage-active.html), [usage period](DeviceUsage-example-deviceusage-period.html)).

#### The smallest DeviceUsage you should send

`status`, `patient` and `device` are the only mandatory elements. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile` - that is how the server knows which rules to validate against:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  }
}
```

`status` describes the statement, not the device: `active` means the patient is still using it, `completed` that the use has ended, `intended` that it is planned, and `entered-in-error` withdraws a wrong statement. `device` is a `CodeableReference` - a SNOMED CT device concept goes under `concept`, and a reference to a Device or DeviceDefinition resource goes one level deeper (`{ "reference": { "reference": "Device/id" } }`). See [References and CodeableReferences](how-to-read.html#references-and-codeablereferences) for the distinction.

#### A recorded device use

In practice a clinician records when the use started, why the device is used and where it sits on the body. `timingPeriod` with only a `start` says the use is ongoing; add an `end` and set `status` to `completed` when it stops. `dateAsserted` is when the statement was made, and `informationSource` is who made it:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "timingPeriod": { "start": "2025-03-10" },
  "dateAsserted": "2026-09-15T10:30:00+05:00",
  "informationSource": { "reference": "Practitioner/example-practitioner" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  },
  "reason": [{
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "46635009", "display": "Type 1 diabetes mellitus" }]
    }
  }],
  "bodySite": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "75093004", "display": "Skin structure of abdomen" }]
    }
  },
  "note": [{ "text": "Infusion set changed every 3 days; site rotated around the abdomen." }]
}
```

`reason` and `bodySite` are also `CodeableReference`s. Here the indication is a coded concept; when the diagnosis is already recorded, point to it instead with `{ "reference": { "reference": "Condition/id" } }`. When the device was ordered, add `basedOn` with a reference to the [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), and `category` for the setting of the use.

#### Recording adherence

When the patient reports how regularly the device is actually used, add `adherence`. Its `code` (always, sometimes, never) and at least one `reason` (forgot, lost, broken, stolen ...) are both mandatory once `adherence` is present. `usageStatus` records the status of the use itself, from the same status codes as `status`:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "dateAsserted": "2026-10-20T09:00:00+05:00",
  "informationSource": { "reference": "Patient/example-salim" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  },
  "usageStatus": {
    "coding": [{ "system": "http://hl7.org/fhir/deviceusage-status", "code": "active" }]
  },
  "adherence": {
    "code": {
      "coding": [{ "system": "http://hl7.org/fhir/deviceusage-adherence-code", "code": "sometimes" }]
    },
    "reason": [{
      "coding": [{ "system": "http://hl7.org/fhir/deviceusage-adherence-reason", "code": "forgot" }]
    }]
  }
}
```

Here the patient reported the use themselves, so `informationSource` points to the patient. The `usageStatus`, adherence code and adherence reason codings carry no `display`: the server fills it in, and the Uzbek and Russian displays come from the code system supplements.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
