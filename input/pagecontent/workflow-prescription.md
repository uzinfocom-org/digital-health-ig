This workflow shows how a medicine is prescribed electronically, dispensed at a pharmacy, and reported to the State Health Insurance Fund (SHIF) for reimbursement. Two resources carry it: a `MedicationRequest` is the prescription - *what* was ordered; a `MedicationDispense` is the act of handing it over - *what* was actually given, and *how much*.

> Profile status: the MedicationRequest and MedicationDispense profiles are in development. This page describes the intended modelling so systems can build against it now; until the profiles publish, use the base FHIR R5 resources with `meta.profile` omitted. [Condition](StructureDefinition-uz-core-condition.html) (the indication) and [Patient](StructureDefinition-uz-core-patient.html) are profiled.

Actors: the prescriber; the pharmacist; the platform (DHP); the State Health Insurance Fund (SHIF).

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Prescribe

The clinician issues an electronic prescription as a `MedicationRequest` (`intent = order`): the medicine in `medication`, the patient in `subject`, the prescriber in `requester`, the dosage in `dosageInstruction`, and the clinical indication in `reason` (the [Condition](StructureDefinition-uz-core-condition.html) being treated). The prescription is printed with a QR code that identifies it.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }] }
```

### 2. Dispense

At the pharmacy, the pharmacist scans the QR code to retrieve the `MedicationRequest`, then records what was handed over as a `MedicationDispense`. The dispense points back at the prescription through `authorizingPrescription`, which is what makes the chain traceable:

```
POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "quantity": { "value": 1 },
  "whenHandedOver": "2026-05-30" }
```

A pharmacy may dispense the whole prescription at once or in parts. A partial supply is a `MedicationDispense` with `status = completed` for the quantity given; the prescription stays open for the remainder.

| Resource | Status flow |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (fully dispensed) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; `declined` if not handed over |

### 3. Report to SHIF

For a reimbursable medicine, the platform forwards the prescription and its dispense to SHIF for reimbursement accounting. This is asynchronous - the DHP publishes the resources and SHIF consumes them; the DHP does not itself adjudicate the claim. The `MedicationDispense.authorizingPrescription` link lets SHIF reconcile *what was ordered* against *what was supplied*.

> The DHP transmits the medical data SHIF needs; the reimbursement decision and payment live in SHIF's own system. Only validated records are forwarded.

### 4. Read it back

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
```

The `authorizingPrescription` link means a dispense always reads back against the prescription that authorized it, so SHIF and the patient see the full supply history for each order.

### Related

- Profiles: [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
