UZ Core Consent records the patient's own decision about whether their health data may be shared on the Digital Health Platform. Uzbekistan operates an opt-out model: when no Consent resource exists for a patient, sharing is permitted by default, and a patient opts out by recording a Consent that denies it. The model is intentionally binary - a single provision that either permits or denies - and the patient sets it themselves in the patient portal. The platform enforces it: when a consent denies access, a data request is refused with HTTP 403. Two exceptions exist - a lawful-access path for treating clinicians and other legally authorized parties, and an emergency break-glass path (recorded in [AuditEvent](StructureDefinition-uz-core-auditevent.html) with an emergency purpose-of-use). A Consent is anchored to its [Patient](StructureDefinition-uz-core-patient.html).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Consent Must Have

This profile adds no mandatory cardinality of its own. The only required element is the one inherited from the base resource: a status (the state of the consent record itself, bound to the DHP consent-state value set).

#### Each UZ Core Consent Must Support



- a subject - the patient the consent belongs to;
- a grantor - the party granting the decision (the patient);
- a period - the start and end of the time the consent applies;
- a regulatory basis identifying the law or policy behind it (required binding);
- a decision - permit or deny (required binding);
- a source - either a sourceAttachment (with its url and creation date) or a sourceReference carrying the underlying consent document;
- a provision narrowing the decision, with its action and purpose (both required bindings).

> The decision is binary by design: one `decision` of `permit` or `deny`. The platform reads it to allow or refuse each data request.

### Building the JSON, step by step

A Consent is mostly system-generated when the patient sets it in the portal, so there is little to build by hand. The example below is the full record - copy it and adapt it; every value shown validates against this profile. The complete instance is the [example Consent](Consent-example-consent.html).

#### The smallest Consent you should send

`status` is the only strictly mandatory element, but a Consent is only meaningful when it names whose data it covers (`subject`), what it decides (`decision` - the scalar code `permit` or `deny`), and what that decision applies to (a `provision`). Because the absence of a Consent already permits sharing, the record you send is normally an opt-out: a `deny` whose `provision.action` says what is being withheld - here, disclosure. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`:

```json
{
  "resourceType": "Consent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent"] },
  "status": "active",
  "subject": { "reference": "Patient/example-patient" },
  "decision": "deny",
  "provision": [
    {
      "action": [
        { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/consentaction", "code": "disclose" }] }
      ]
    }
  ]
}
```

`status` and `decision` each use a required binding - the value must come from the bound value set (the Snapshot view below lists each one). `provision.action` is a `CodeableConcept`, so its code sits in a `coding` array; `subject` is a plain Reference, so its target sits directly under `reference`.

#### A realistic consent record

A fuller record - shown here granting access, as a patient would when re-opting in or scoping consent to a specific purpose and period - also records who granted the decision (`grantor`, the patient), how long it applies (`period`), the law it rests on (`regulatoryBasis`), and a `provision` narrowing the decision to a specific `action` and `purpose`. `grantor` is a list of References, and `regulatoryBasis`, `provision.action` and `provision.purpose` are coded - each value comes from a bound value set:

```json
{
  "resourceType": "Consent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent"] },
  "status": "active",
  "subject": { "reference": "Patient/example-patient" },
  "grantor": [
    { "reference": "Patient/example-patient" }
  ],
  "period": {
    "start": "2025-02-15T14:02:52+05:00",
    "end": "2026-02-15T14:02:52+05:00"
  },
  "regulatoryBasis": [
    {
      "coding": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/consent-policy-cs", "code": "uz-LRU-547" }
      ]
    }
  ],
  "decision": "permit",
  "provision": [
    {
      "action": [
        { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/consentaction", "code": "disclose" }] }
      ],
      "purpose": [
        { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "RECORDMGT" }
      ],
      "period": {
        "start": "2025-02-15T14:02:52+05:00",
        "end": "2026-02-15T14:02:52+05:00"
      }
    }
  ]
}
```

Note that `provision.purpose` is a `Coding` directly (not wrapped in a `coding` array), while `regulatoryBasis` and `provision.action` are `CodeableConcept` types that hold a `coding` array. This record grants access; an opt-out is the same shape with `decision` set to `deny`, after which the platform refuses each data request with HTTP 403. See [Missing & suppressed data](general-guidance.html#missing-data) and [Terminology](general-guidance.html#terminology) for the coded-value rules.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
