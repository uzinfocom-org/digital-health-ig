UZ Core Claim is what a healthcare organization sends to a payor to be paid for care, or to ask in advance whether the payor will cover it. Today the only payor is the State Health Insurance Fund (SHIF), and claims are part of the [Reimbursement](components.html#reimbursement) component. A claim names the [Patient](StructureDefinition-uz-core-patient.html), the provider [Organization](StructureDefinition-uz-core-organization.html) that contracted with the payor (identified as described on the [Payor identification](payor-identification.html) page), the insurer, the facility where the care is delivered, the diagnoses, the insurance coverage and the total amount. It is justified by the referral ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html)) or the reimbursed prescription ([MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)) it is based on. The payor answers with a [ClaimResponse](StructureDefinition-uz-core-claim-response.html), which points back to the claim in `request`.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core Claim Must Have

The profile adds no mandatory elements of its own; the required ones come from the base resource: a `status`, a `type`, a `use`, the `patient` and the `created` date. Each `insurance` entry, when sent, must carry its `sequence`, the `focal` flag and the `coverage`, and each `diagnosis` entry its `sequence` and the diagnosis itself.

#### Each UZ Core Claim Must Support

- the claim number (`identifier`);
- the `status` of the claim (active / cancelled / draft / entered-in-error);
- the `type` of claim (institutional / oral / pharmacy / professional / vision);
- what the claim is for (`use`: claim / preauthorization / predetermination);
- the `patient` who received or will receive the care;
- the date the claim was `created`;
- the `insurer` the claim is sent to and the `provider` responsible for it;
- the reimbursed prescription (`prescription`) or the referral (`referral`) that justifies it;
- the `facility` where the care is delivered;
- the diagnoses (`diagnosis`), as a code or a reference to a Condition;
- the insurance coverage to use (`insurance`, with `focal` and `coverage`);
- the `total` amount, with its value and currency.

### Claim, preauthorization and predetermination

`use` tells the payor what the provider is asking for:

| `use` | When | What the payor answers |
|---|---|---|
| `preauthorization` | Before the care, for services that need approval first, such as a planned hospitalization on a state insurance referral | Approval or refusal, an authorization number in `ClaimResponse.preAuthRef` and the period it is valid in `ClaimResponse.preAuthPeriod` |
| `predetermination` | Before the care, to learn how much the payor would pay, without committing to the care | The amounts the payor would pay |
| `claim` | After the care, to be paid for it | The amounts accepted for payment |

A preauthorization and the later claim for the same care are two separate Claim resources. The provider's system keeps the authorization number from the response, and a [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) that the payor approved points to the response from its `insurance`.

### Building the JSON, step by step

The examples below go from the smallest valid instance to a claim for a reimbursed prescription. Each one validates against this profile. The complete reference instance is the [example claim](Claim-example-claim.html).

#### The smallest Claim you should send

The required elements come from the base resource. Every UZ Core resource also names its profile in `meta.profile`, which tells the server which rules to validate against. This much passes validation:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "claim",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-03"
}
```

`status` and `use` are plain codes, so send the bare value. `type` is a `CodeableConcept` with HL7 codes; its Uzbek and Russian displays come from DHP supplements, so you can leave `display` out.

#### A preauthorization for a planned hospitalization

An oncology centre that has a contract with SHIF asks for approval before admitting a patient on a [state insurance referral](workflow-referral.html). `referral` points to the referral, `diagnosis` carries the ICD-10 code that justifies the stay, and `total` gives the expected cost:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-nodira" },
  "created": "2026-03-06",
  "provider": { "reference": "Organization/example-organization" },
  "referral": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "facility": { "reference": "Organization/example-organization" },
  "diagnosis": [
    {
      "sequence": 1,
      "diagnosisCodeableConcept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "C50.9" } ]
      }
    }
  ],
  "total": { "value": 4500000, "currency": "UZS" }
}
```

`provider` is the legal entity the payor contracted with. When the care is delivered by a branch, put the branch in `facility` and keep the head organization in `provider`, because the contract is checked against the organization that carries the payor's code (see [Payor identification](payor-identification.html)). `facility` takes a [Location](StructureDefinition-uz-core-location.html) or an Organization. `diagnosis` repeats; number the entries from 1 in `sequence`. `total.currency` is an ISO 4217 code, `UZS` for Uzbek sum.

#### A claim for a reimbursed prescription

After the care, the provider claims payment. For a reimbursed medicine, `type` is `pharmacy` and `prescription` points to the prescription instead of a referral. Here the diagnosis is given as an ICD-10 code; you can also point to the [Condition](StructureDefinition-uz-core-condition.html) with `diagnosisReference`:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "pharmacy" } ]
  },
  "use": "claim",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-03-03",
  "provider": { "reference": "Organization/tashkent-diseases-hospital" },
  "prescription": { "reference": "MedicationRequest/example-medication-request" },
  "diagnosis": [
    {
      "sequence": 1,
      "diagnosisCodeableConcept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "R51" } ]
      }
    }
  ],
  "total": { "value": 12000, "currency": "UZS" }
}
```

To say which insurance coverage pays, add an `insurance` entry with its `sequence`, `focal: true` for the coverage the payor should use, and a reference to the `coverage`. The coverage is a base FHIR Coverage resource; UZ Core has no Coverage profile yet. The `insurer` is the payor Organization, which has `type` `pay`.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
