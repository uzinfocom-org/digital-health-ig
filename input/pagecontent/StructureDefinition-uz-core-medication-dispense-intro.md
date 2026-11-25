UZ Core MedicationDispense records that a medicine was handed over: a pharmacy supplying a prescribed medicine to the patient or to the person collecting it, or a hospital pharmacy issuing a medicine for a patient on a ward. It says which [Medication](StructureDefinition-uz-core-medication.html) was supplied and how much, for which [Patient](StructureDefinition-uz-core-patient.html), who prepared and handed it over, who received it, and when. A dispense points to the prescription it fulfils, a [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), in `authorizingPrescription`. That link lets the State Health Insurance Fund reconcile what was ordered with what was supplied, as the [e-Prescription and dispensing](workflow-prescription.html) workflow describes. Use this profile for the supply of the medicine; when a dose is given to the patient, record a [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core MedicationDispense Must Have

This profile adds no mandatory elements, but the base MedicationDispense resource requires three: the `status`, the `medication` and the `subject`. Each `performer` must name its `actor`.

#### Each UZ Core MedicationDispense Must Support

- the dispense number (`identifier`);
- the `status` of the dispense (preparation / in-progress / cancelled / on-hold / completed / entered-in-error / stopped / declined / unknown), why it was not performed (`notPerformedReason`) and when the status last changed (`statusChanged`);
- the `category`: where the medicine will be used (inpatient / outpatient / community);
- the `medication`, as a [UZ Core Medication](StructureDefinition-uz-core-medication.html) reference or an ATC or INN code;
- the patient (`subject`);
- who dispensed it (`performer.actor`), such as the pharmacist and the pharmacy;
- the prescription it fulfils (`authorizingPrescription`);
- the `quantity` handed over, with its `value`, `unit`, `system` and `code`;
- when the dispense was recorded (`recorded`), prepared (`whenPrepared`) and handed over (`whenHandedOver`);
- who or where received it (`receiver`).

### Building the JSON, step by step

The examples below go from the smallest valid dispense to a declined one. Each one validates against this profile. The complete reference instances are the [outpatient paracetamol dispense](MedicationDispense-example-medication-dispense-outpatient.html) and the [amoxicillin dispense](MedicationDispense-example-medication-dispense.html).

#### The smallest MedicationDispense you should send

Every UZ Core resource names its profile in `meta.profile`, which tells the server which rules to validate against. On top of that, the base resource requires `status`, `medication` and `subject`. This much passes validation:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`medication` is a `CodeableReference`: a reference to a [UZ Core Medication](StructureDefinition-uz-core-medication.html) sits under `reference` (one level deeper than a plain `Reference`), and a code sits under `concept`. See [References and CodeableReferences](how-to-read.html#references-and-codeablereferences). `status` uses HL7 codes. Their English displays come from the base code system and their Uzbek and Russian ones from a DHP supplement, so you can leave `display` out.

#### Dispensing a prescription at a pharmacy

The pharmacist scans the QR code on the prescription, retrieves the [MedicationRequest](MedicationRequest-example-medication-request.html) and hands the patient the ten paracetamol tablets it orders. `authorizingPrescription` points to the prescription, `performer` names the pharmacist and the pharmacy, and the three timestamps record when the medicine was prepared, handed over and recorded:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "identifier": [ { "value": "MD-2026-00002" } ],
  "status": "completed",
  "category": [
    { "coding": [ { "system": "http://hl7.org/fhir/medicationdispense-admin-location", "code": "outpatient" } ] }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "performer": [
    { "actor": { "reference": "Practitioner/example-practitioner" } },
    { "actor": { "reference": "Organization/tashkent-diseases-hospital" } }
  ],
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ],
  "quantity": {
    "value": 10,
    "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "recorded": "2026-03-02T11:05:00+05:00",
  "whenPrepared": "2026-03-02T10:50:00+05:00",
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  "receiver": [ { "reference": "Patient/example-salim" } ]
}
```

`quantity.code` is a required binding to the [total volume units](ValueSet-medication-total-volume-units-vs.html): UCUM for mass and volume, the local units code system for countable units such as a `piece`. Always send `system` and `code`, not only the human-readable `unit` (see [Units and quantities](general-guidance.html#units-and-quantities)). A pharmacy may dispense a prescription in parts: each part is its own `completed` dispense for the quantity handed over, and the prescription stays `active` until the whole quantity has been supplied.

#### A medicine collected by a relative

When a relative collects the medicine, as the trustee named on the prescription, `receiver` points to that [RelatedPerson](StructureDefinition-uz-core-relatedperson.html). Here the medicine is given as a code rather than a catalogue reference:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "language": "en",
  "status": "completed",
  "medication": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
          "code": "005325",
          "display": "paracetamol"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" },
  "performer": [ { "actor": { "reference": "Organization/tashkent-diseases-hospital" } } ],
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ],
  "quantity": {
    "value": 10,
    "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  "receiver": [ { "reference": "RelatedPerson/example-related-person" } ]
}
```

`medication.concept` is a required binding to the [medication classification](ValueSet-medication-classification-vs.html) value set: an INN code names the substance, an ATC code (`http://www.whocc.no/atc`) places it in the WHO classification. The `display` must match the resource `language`. `receiver` can also be a Practitioner, a PractitionerRole such as a patronage nurse delivering the medicine at home, or the Location the medicine was delivered to.

#### A dispense that did not happen

When the pharmacy cannot supply a prescribed medicine, record the dispense with `status` set to `declined`, the reason in `notPerformedReason` and the time in `statusChanged`:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "status": "declined",
  "statusChanged": "2026-03-02T11:00:00+05:00",
  "notPerformedReason": {
    "concept": {
      "coding": [
        { "system": "http://hl7.org/fhir/CodeSystem/medicationdispense-status-reason", "code": "outofstock" }
      ]
    }
  },
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ]
}
```

`notPerformedReason` is a `CodeableReference`: a coded reason goes in `concept`, and a reference to a DetectedIssue, such as a drug interaction found by a safety check, goes in `reference`. The prescription stays `active`, so the patient can collect the medicine elsewhere.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
