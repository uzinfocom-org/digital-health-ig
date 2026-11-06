UZ Core ChargeItem records the actual cost of a medication dispensed to a patient. It links the charge to the patient and the medication dispensing event, and identifies the activity being charged. The profile's identifier slice carries the ChargeItem identifier assigned by the healthcare information system.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when data is available ([Must Support](must-support.html)). Must Support does not by itself make an element mandatory. The [formal profile](#profile) defines the exact cardinalities, types and terminology bindings.

#### Each UZ Core ChargeItem Must Have

The base ChargeItem requires a `status`, a `code` describing the activity, and a `subject` identifying who the charge is for. This profile fixes `status` to `billable`.

#### Each UZ Core ChargeItem Must Support

- an `identifier` using the system assigned by the healthcare information system;
- the billable `status` and the `code` for the charged activity;
- the `subject` and the `occurrence[x]` when available;
- the `performer` and `performingOrganization`;
- the `quantity` and `totalPriceComponent`;
- the `service` that the charge relates to, such as the MedicationDispense that recorded the medication supply.

### Building the JSON, step by step

The examples below show a minimal ChargeItem and one with the identifier and dispensing details. Each example names this profile in `meta.profile`.

#### The smallest ChargeItem you should send

A minimal ChargeItem needs its status, activity code and subject. In this profile, the status is `billable` and the example code represents dispensing medication:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item"]
  },
  "status": "billable",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "373784005",
      "display": "Dispensing medication"
    }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

#### A medication dispensing charge

Include the identifier assigned by the healthcare information system, the time of the charge, the quantity and amount, and a reference to the dispensing record. The identifier system is fixed by this profile, so send its value with the system shown here:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item"]
  },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/dmed/preferential-referral",
    "value": "CI-2026-0001"
  }],
  "status": "billable",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "373784005",
      "display": "Dispensing medication"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-11-06T10:30:00+05:00",
  "quantity": {
    "value": 10,
    "unit": "dona",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "totalPriceComponent": [{
    "type": {
      "coding": [{
        "system": "http://hl7.org/fhir/invoice-price-component-type",
        "code": "base"
      }]
    },
    "amount": { "value": 15000, "currency": "UZS" }
  }],
  "service": {
    "reference": { "reference": "MedicationDispense/example-medication-dispense-outpatient" }
  }
}
```

`service` is a `CodeableReference`: its target is nested under `reference`. Use the actual identifier value, occurrence time, quantity, amount and dispensing reference from the source system. The complete FSH example is the [example ChargeItem](ChargeItem-example-charge-item-medication-dispense.html).
