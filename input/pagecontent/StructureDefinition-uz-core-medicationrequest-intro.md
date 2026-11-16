UZ Core MedicationRequest is an electronic prescription: an order for a medicine for one patient, written in DMED or a local medical information system. It says which [Medication](StructureDefinition-uz-core-medication.html) is prescribed, for which [Patient](StructureDefinition-uz-core-patient.html), by whom and during which [Encounter](StructureDefinition-uz-core-encounter.html), why (a [Condition](StructureDefinition-uz-core-condition.html) or [Observation](StructureDefinition-uz-core-observation.html)), how it is to be taken, and how much the pharmacy may hand over and until when. The printed prescription carries a QR code that identifies this resource. A [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) points back to it in `authorizingPrescription` when the pharmacy hands the medicine over, a [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) in `request` when a dose is given, a reimbursement [Claim](StructureDefinition-uz-core-claim.html) in `prescription`, and a [CarePlan](StructureDefinition-uz-core-careplan.html) in `activity.plannedActivityReference`. The [e-Prescription and dispensing](workflow-prescription.html) workflow shows how these fit together.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core MedicationRequest Must Have

This profile adds no mandatory elements, but the base MedicationRequest resource requires four: the `status`, the `intent`, the `medication` and the `subject`.

#### Each UZ Core MedicationRequest Must Support

- the prescription number in DMED or the local MIS (`identifier`, with its `use`, `type` and `value`);
- the `status` of the prescription (active / on-hold / ended / stopped / completed / cancelled / entered-in-error / draft / unknown), the `statusReason` and when the status last changed (`statusChanged`);
- the `intent` (usually order);
- the `category`: where the medicine will be taken (inpatient / outpatient / community), or a reimbursement order;
- the `medication`, as a [UZ Core Medication](StructureDefinition-uz-core-medication.html) reference or a code;
- the patient (`subject`) and the `encounter` the prescription was written in;
- the trustee extension: the relative or patronage nurse authorized to collect the medicine for the patient;
- when the prescription was written (`authoredOn`), who wrote it (`requester`) and who reported the information (`informationSource`);
- why it was prescribed (`reason`);
- the period over which the doses are to be taken (`effectiveDosePeriod`);
- the `insurance`: the coverage or reimbursement decision that pays for the medicine;
- the dosage: instructions for the patient, timing, route and dose (`dosageInstruction`);
- what the pharmacy may dispense: the `quantity`, the prescription's validity period and the pharmacy (`dispenseRequest`);
- free-text notes for the pharmacist or the patient (`note`).

### Building the JSON, step by step

The examples below go from the smallest valid prescription to a reimbursable one collected by a relative. Each one validates against this profile. The complete reference instance is the [outpatient paracetamol prescription](MedicationRequest-example-medication-request.html).

#### The smallest MedicationRequest you should send

Every UZ Core resource names its profile in `meta.profile`, which tells the server which rules to validate against. On top of that, the base resource requires `status`, `intent`, `medication` and `subject`. This much passes validation:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "status": "active",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`medication` is a `CodeableReference`: a reference to a [UZ Core Medication](StructureDefinition-uz-core-medication.html) sits under `reference` (one level deeper than a plain `Reference`), and a code for the medicine sits under `concept`. See [References and CodeableReferences](how-to-read.html#references-and-codeablereferences). Use the reference when the product is in the medication catalogue, so the pharmacy sees the exact registered product.

#### An outpatient prescription

A family doctor prescribes paracetamol 500 mg twice a day for five days for a headache, ten tablets in total. The prescription number goes in `identifier`, the indication in `reason`, the dosage in `dosageInstruction` and what the pharmacy may hand over in `dispenseRequest`:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "PLAC" } ] },
      "value": "12345678"
    }
  ],
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        { "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location", "code": "outpatient" }
      ]
    }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "authoredOn": "2026-03-02T06:44:12+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "reason": [ { "reference": { "reference": "Condition/example-headache" } } ],
  "effectiveDosePeriod": { "start": "2026-03-02", "end": "2026-03-06" },
  "dosageInstruction": [
    {
      "patientInstruction": "Take one tablet at 08:00 and one at 16:00 for five days",
      "timing": {
        "repeat": {
          "boundsPeriod": { "start": "2026-03-02", "end": "2026-03-06" },
          "frequency": 2,
          "period": 1,
          "periodUnit": "d",
          "timeOfDay": ["08:00:00", "16:00:00"]
        }
      },
      "route": { "coding": [ { "system": "http://snomed.info/sct", "code": "26643006", "display": "Oral route" } ] },
      "doseAndRate": [
        { "doseQuantity": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
      ]
    }
  ],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": {
      "value": 10,
      "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece"
    }
  }
}
```

`status`, `intent` and `category` use HL7 codes. Their English displays come from the base code systems and their Uzbek and Russian ones from DHP supplements, so you can leave `display` out. `reason` is a `CodeableReference` too: point at the patient's Condition when it is recorded, or put a diagnosis code in `concept`. `dispenseRequest.validityPeriod` runs from the date the prescription was issued to the date it expires. `dispenseRequest.quantity` is the total the pharmacy may hand over, in the [total volume units](ValueSet-medication-total-volume-units-vs.html): UCUM for mass and volume, the local units code system for countable units such as a `piece`.

#### Writing the dosage timing

`dosageInstruction.timing.repeat` says how often a dose is taken. Combine its fields in one of these ways, and keep a human-readable summary in `timing.code.text` or `patientInstruction`:

| Instruction | `timing.repeat` |
|---|---|
| Twice a day, at 08:00 and 16:00 | `frequency` 2, `period` 1, `periodUnit` d, `timeOfDay` 08:00:00 and 16:00:00 |
| Three times a day after meals | `frequency` 3, `period` 1, `periodUnit` d, `when` PC |
| Every 8 hours | `frequency` 1, `period` 8, `periodUnit` h |
| On Monday, Wednesday and Friday | `dayOfWeek` mon, wed and fri |
| 10 doses in total | `count` 10 |

Send `boundsPeriod` for the treatment dates. `when` and `timeOfDay` are alternatives: use one or the other, not both. The formal view of `dosageInstruction.timing` lists which other fields must not be combined.

#### A reimbursable prescription collected by a relative

A prescription paid for by the State Health Insurance Fund carries the national reimbursement order code in `category` and points to the reimbursement decision in `insurance`. When someone else will collect the medicine, add the trustee extension. `dispenseRequest.dispenser` names the pharmacy where the prescription can be dispensed:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/trustee",
      "valueReference": { "reference": "RelatedPerson/example-related-person" }
    }
  ],
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-request-order-type-cs",
          "code": "rembr-0001-00001"
        }
      ]
    }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-03-02T06:44:12+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "insurance": [ { "reference": "ClaimResponse/example-claim-response" } ],
  "dosageInstruction": [
    {
      "timing": {
        "code": { "text": "Three times a day after meals" },
        "repeat": { "frequency": 3, "period": 1, "periodUnit": "d", "when": ["PC"] }
      },
      "doseAndRate": [
        { "doseQuantity": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
      ]
    }
  ],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": {
      "value": 30,
      "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece"
    },
    "dispenser": { "reference": "Organization/tashkent-diseases-hospital" }
  }
}
```

The [trustee](StructureDefinition-trustee.html) extension repeats; its value is a reference to a [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) (a relative) or a [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) (a patronage nurse). `insurance` points to a Coverage or a [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html).

#### Stopping or cancelling a prescription

A prescription is not deleted when it is withdrawn. Update it with `status` set to `stopped` (some of the medicine was already dispensed or taken) or `cancelled` (none was), the reason in `statusReason` and the time of the change in `statusChanged`:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "status": "stopped",
  "statusReason": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason", "code": "salg" } ]
  },
  "statusChanged": "2026-03-04T09:15:00+05:00",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`statusReason` is a required binding to the [status reason](ValueSet-medicationrequest-status-reason-vs.html) value set; `salg` means the patient developed an allergy. A prescription that has been fully dispensed becomes `completed`.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
