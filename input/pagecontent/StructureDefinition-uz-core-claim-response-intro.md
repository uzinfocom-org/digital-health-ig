UZ Core ClaimResponse is the payor's answer to a [Claim](StructureDefinition-uz-core-claim.html): whether a preauthorization is approved and for how long, what the payor would pay for a predetermination, or how much it accepts for payment on a claim. Today the payor is the State Health Insurance Fund (SHIF), and responses are part of the [Reimbursement](components.html#reimbursement) component. A response points to the claim it answers in `request`, to the [Patient](StructureDefinition-uz-core-patient.html), and to the insurer [Organization](StructureDefinition-uz-core-organization.html) that decided. A [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) for a reimbursed medicine points to the approved response from its `insurance`.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core ClaimResponse Must Have

The required elements come from the base resource: a `status`, a `type`, a `use`, the `patient`, the `created` date and the processing `outcome`. Each `total` entry, when sent, must carry its `category` and `amount`. The cancellation reason extension, when sent, must carry a code.

#### Each UZ Core ClaimResponse Must Support

- the response number (`identifier`);
- the `status` of the response (active / cancelled / draft / entered-in-error);
- the `type` of claim answered (institutional / oral / pharmacy / professional / vision);
- what the claim was for (`use`: claim / preauthorization / predetermination);
- the `patient` the claim is about;
- the date the response was `created`;
- the `insurer` that decided and the Claim it answers (`request`);
- whether processing finished (`outcome`: queued / complete / error / partial) and the `decision` (approved / denied / partial / pending);
- for a preauthorization, the authorization number (`preAuthRef`) and the period it is valid in (`preAuthPeriod`);
- the amounts by category (`total`);
- why the response was cancelled (the cancellation reason extension), for example because the preauthorization expired.

### Outcome, decision and cancellation

`outcome` and `decision` answer different questions. `outcome` says how far the payor got with processing the claim: `queued` while it waits, `complete` once it is done, `error` when it could not be processed. `decision` says what the payor decided: `approved`, `denied`, `partial` or `pending`. A response can be `complete` and `denied`.

An approved preauthorization is valid only within `preAuthPeriod`. When the period ends before the care is delivered and claimed, the payor sets `status` to `cancelled` and records why in the [cancellation reason](StructureDefinition-claim-response-cancellation-reason.html) extension. The `decision` stays as it was, so the history of the approval is kept.

### Building the JSON, step by step

The examples below follow one preauthorization from the moment the payor receives it to its expiry. Each one validates against this profile. The complete reference instance is the [cancelled preauthorization](ClaimResponse-example-claim-response.html).

#### The smallest ClaimResponse you should send

The required elements come from the base resource. Every UZ Core resource also names its profile in `meta.profile`, which tells the server which rules to validate against. A response is only useful with the `request` it answers. This much passes validation:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-03",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "queued"
}
```

`status`, `use` and `outcome` are plain codes, so send the bare value. `type` uses HL7 codes; their Uzbek and Russian displays come from DHP supplements, so you can leave `display` out. Copy `type`, `use` and `patient` from the claim being answered.

#### An approved preauthorization

Once the payor has decided, `outcome` becomes `complete` and `decision` carries the result. The authorization number goes in `preAuthRef`, the period it is valid in `preAuthPeriod`, and the approved amount in `total`:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-05",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "complete",
  "decision": {
    "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ]
  },
  "preAuthRef": "PA-2026-001",
  "preAuthPeriod": { "start": "2026-10-05", "end": "2026-12-05" },
  "total": [
    {
      "category": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/adjudication", "code": "benefit" } ]
      },
      "amount": { "value": 100000, "currency": "UZS" }
    }
  ]
}
```

`total` repeats, one entry per `category`; `benefit` is the amount the payor will pay. `amount.currency` is an ISO 4217 code, `UZS` for Uzbek sum. Name the payor in `insurer` with a reference to its Organization, which has `type` `pay` (see [Payor identification](payor-identification.html)).

#### A preauthorization that expired

The care was not delivered by 5 December 2026. The payor cancels the approval by updating the same response, so `created` keeps the date the response was first created:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/claim-response-cancellation-reason",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/cancellation-reason-cs",
            "code": "Reimb0001-00001"
          }
        ]
      }
    }
  ],
  "status": "cancelled",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-05",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "complete",
  "decision": {
    "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ]
  },
  "preAuthRef": "PA-2026-001",
  "preAuthPeriod": { "start": "2026-10-05", "end": "2026-12-05" }
}
```

`Reimb0001-00001` is "Expired" in the [cancellation reason](CodeSystem-cancellation-reason-cs.html) code system. Its primary display is Uzbek, so either leave `display` out, as here, or set the resource `language` to match the display you send.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
