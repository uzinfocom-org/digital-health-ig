UZ Core ChargeItem records a billable item: a service, product or medication provided to a [patient](StructureDefinition-uz-core-patient.html), with its quantity and price. It identifies what is charged and links the charge to the event that provided it, such as a [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html), [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html) or [ServiceRequest](StructureDefinition-uz-core-servicerequest.html). The profile's identifier slice carries the ChargeItem identifier assigned by the healthcare information system.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core ChargeItem Must Have

The base ChargeItem requires a `status`, a `code` describing the activity, and a `subject` identifying who the charge is for.

#### Each UZ Core ChargeItem Must Support

- an `identifier` using the system assigned by the healthcare information system;
- the `status` (planned / billable / not-billable / aborted / billed / entered-in-error / unknown) and the `code` for the charged service or product;
- the `subject` and the `occurrence[x]` when available;
- the `encounter` during which the charge was incurred, when known;
- the `performer` and `performingOrganization`;
- the `quantity` and `totalPriceComponent`;
- the `service` that the charge relates to, such as the dispense, procedure or test that was provided.

### Building the JSON, step by step

The examples below show a minimal ChargeItem and a charge for dispensed medication with its identifier, quantity, price and dispensing record. Each example names this profile in `meta.profile`.

#### The smallest ChargeItem you should send

A minimal ChargeItem needs its status, the code of what is charged and the subject. Here the charge is `billable`, ready to be billed, and the code represents dispensing medication:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem"]
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
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem"]
  },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/charge-item",
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
  "occurrenceDateTime": "2026-03-02T11:00:00+05:00",
  "performer": [{
    "actor": { "reference": "Practitioner/example-practitioner" }
  }],
  "performingOrganization": { "reference": "Organization/tashkent-diseases-hospital" },
  "quantity": {
    "value": 10,
    "unit": "dona",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "totalPriceComponent": {
    "type": "base",
    "amount": { "value": 15000, "currency": "UZS" }
  },
  "service": [{
    "reference": { "reference": "MedicationDispense/example-medication-dispense-outpatient" }
  }]
}
```

`service` is a `CodeableReference`: its target is nested under `reference`. Use the actual identifier value, occurrence time, quantity, amount and service reference from the source system. The complete FSH example is the [example ChargeItem](ChargeItem-example-charge-item-medication-dispense.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
