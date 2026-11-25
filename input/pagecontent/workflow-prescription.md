This workflow shows how a medicine is prescribed electronically, dispensed at a pharmacy, and reported to the State Health Insurance Fund (SHIF) for reimbursement. Two resources carry it: a [`MedicationRequest`](StructureDefinition-uz-core-medicationrequest.html) is the prescription - *what* was ordered; a [`MedicationDispense`](StructureDefinition-uz-core-medication-dispense.html) is the act of handing it over - *what* was actually given, and *how much*. Both name the medicine, usually through a [`Medication`](StructureDefinition-uz-core-medication.html).

Actors: the prescriber; the pharmacist; the platform (DHP); the State Health Insurance Fund (SHIF).

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Prescribe

The clinician issues an electronic prescription, in DMED or a local medical information system, as a `MedicationRequest` (`intent = order`): the prescription number in `identifier`, the medicine in `medication`, the patient in `subject`, the prescriber in `requester`, the dosage in `dosageInstruction`, the clinical indication in `reason` (the [Condition](StructureDefinition-uz-core-condition.html) being treated), and how much the pharmacy may hand over and until when in `dispenseRequest`. The prescription is printed with a QR code that identifies it.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "identifier": [{ "use": "official", "value": "[prescription number]" }],
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": { "value": 10, "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece" } } }
```

#### Identifying the medicine

DMED prescribes by international non-proprietary name (INN), before a product is chosen. The prescription's `medication` then points to a [Medication](StructureDefinition-uz-core-medication.html) that carries only its INN code, such as `000439` amoxicillin in the [INN code system](CodeSystem-inn-medication-name-cs.html), and the pharmacy names the product when it dispenses. Medications are shared catalogue entries, so [look one up](StructureDefinition-uz-core-medication.html#finding) by code or identifier before creating a new one. A code can also go directly in `medication.concept`. The same INN codes are [allergen codes](ValueSet-allergen-codes-vs.html), so a drug allergy recorded in [AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) can name the same substance as the prescription.

| What | Element | Codes or identifiers |
|---|---|---|
| The substance | `Medication.code` | Required binding to the [medication classification](ValueSet-medication-classification-vs.html) value set: an INN code (`https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs`, e.g. `005325` paracetamol) or an ATC code (`http://www.whocc.no/atc`, e.g. `N02BE01` paracetamol) |
| The registered product | `Medication.identifier`, sliced by `system` | From the Pharmaceutical Committee registry: the [registration certificate number](NamingSystem-registration-certificate-id.html) (`https://uzpharminfo.uz/registrationNumber`) and the [box group ID](NamingSystem-uz-pharm-box-id.html) (`https://uzpharminfo.uz/boxGroupId`), the registry entry for the trade name, dose form, strength and pack; also the [GTIN](NamingSystem-global-trade-item-id.html) (`https://mobile-api.aslbelgisi.uz/gtin`) and the [ICPS code](NamingSystem-product-service-id.html) (`https://uzpharminfo.uz/icps`) |
| The physical pack | `Medication.identifier` | The [Asl Belgisi marking ID](NamingSystem-uz-marking-id.html) (`https://mobile-api.aslbelgisi.uz/marking`) |
| What was dispensed or given | `MedicationDispense.medication`, `MedicationAdministration.medication` | A reference to the Medication, or an INN or ATC code in `concept` (required binding to the same value set) |
| The approved prices | `MedicationKnowledge.associatedMedication` | Points to the Medication; see step 3 |

### 2. Dispense

At the pharmacy, the pharmacist scans the QR code to retrieve the `MedicationRequest`, then records what was handed over as a `MedicationDispense`. For a prescription written by INN, `medication` names the registered product that was handed over: look its Medication up by registration certificate number or GTIN. The dispense points back at the prescription through `authorizingPrescription`, which is what makes the chain traceable:

```
GET [base]/Medication?identifier=https://uzpharminfo.uz/registrationNumber|[number]

POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "performer": [{ "actor": { "reference": "Organization/[id]" } }],
  "quantity": { "value": 10, "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece" },
  "whenHandedOver": "2026-03-02T11:00:00+05:00" }
```

`quantity.code` is a required binding to the [total volume units](ValueSet-medication-total-volume-units-vs.html): UCUM for mass and volume, `piece` for countable units. A pharmacy may dispense the whole prescription at once or in parts. A partial supply is a `MedicationDispense` with `status = completed` for the quantity given; the prescription stays `active` for the remainder. When a dose is given to the patient, for example on a hospital ward, record a [`MedicationAdministration`](StructureDefinition-uz-core-medicationadministration.html) whose `request` points to the prescription.

| Resource | Status flow |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (fully dispensed) / `ended` (expired or superseded) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; `declined` if not handed over, with the reason in `notPerformedReason` |

A withdrawn prescription is updated, not deleted: `stopped` when some of the medicine was already dispensed, `cancelled` when none was, with the reason in `statusReason`, an extensible binding to the [status reason](ValueSet-medicationrequest-status-reason-vs.html) value set. For cancelling a DMED e-prescription the value set includes SNOMED CT `438833006` Administration of medication contraindicated.

### 3. Report to SHIF

For a reimbursable medicine, the platform forwards the prescription and its dispense to SHIF for reimbursement accounting. This is asynchronous - the DHP publishes the resources and SHIF consumes them; the DHP does not itself adjudicate the claim. The `MedicationDispense.authorizingPrescription` link lets SHIF reconcile *what was ordered* against *what was supplied*.

A reimbursable prescription carries `rembr-0001-00001` Reimburseable Order from the [MedicationRequest order type](CodeSystem-medication-request-order-type-cs.html) code system in `category`, and points to the SHIF decision that approved it, a [ClaimResponse](StructureDefinition-uz-core-claim-response.html), in `insurance`. A [Claim](StructureDefinition-uz-core-claim.html) for the reimbursed medicine has `type` `pharmacy` Pharmacy and points to the prescription in `prescription`.

> The DHP transmits the medical data SHIF needs; the reimbursement decision and payment live in SHIF's own system. Only validated records are forwarded.

The approved prices of a product - `price-type-0001-00001` Price ceiling, `price-type-0001-00002` Wholesale price, `price-type-0001-00003` Retail price and `price-type-0001-00004` SHIF price - are modelled as a [`MedicationKnowledge`](StructureDefinition-uz-core-medicationknowledge.html) entry that points to the product's Medication in `associatedMedication`, each price a `cost` with its `type` and the period it applies to. The DHP servers do not offer the MedicationKnowledge endpoint yet, so for now this is the model for the price catalogue, not a call you can make.

### 4. Read it back

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
GET [base]/MedicationAdministration?request=MedicationRequest/[id]
```

The `authorizingPrescription` link means a dispense always reads back against the prescription that authorized it, so SHIF and the patient see the full supply history for each order. A MedicationAdministration reads back the same way through `request`.

### Related

- Profiles: [Medication](StructureDefinition-uz-core-medication.html) &middot; [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) &middot; [MedicationKnowledge](StructureDefinition-uz-core-medicationknowledge.html) &middot; [Claim](StructureDefinition-uz-core-claim.html) &middot; [ClaimResponse](StructureDefinition-uz-core-claim-response.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- Component: [Prescription](components.html#prescription)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
