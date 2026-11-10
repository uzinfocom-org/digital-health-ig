### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a dispense by server id, and its earlier versions**

```
GET [base]/MedicationDispense/[id]
GET [base]/MedicationDispense/[id]/_history
```

**Find dispenses**

```
# every dispense against a prescription
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]

# by dispense number
GET [base]/MedicationDispense?identifier=MD-2026-00002

# by medication, as a catalogue reference or a code
GET [base]/MedicationDispense?medication=Medication/[id]
GET [base]/MedicationDispense?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
```

**Other useful searches**

```
GET [base]/MedicationDispense?patient=Patient/[id]&status=completed
GET [base]/MedicationDispense?patient=Patient/[id]&whenhandedover=ge2026-01-01
GET [base]/MedicationDispense?performer=Organization/[id]&whenhandedover=ge2026-03-01
GET [base]/MedicationDispense?receiver=RelatedPerson/[id]
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]&_include=MedicationDispense:prescription
```

**Record a dispense**

```
POST [base]/MedicationDispense
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense" ] },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "authorizingPrescription": [ { "reference": "MedicationRequest/[id]" } ],
  "quantity": { ... },
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  ...
}
```

**Update an existing dispense** (e.g. set `status` to `completed` once the medicine is handed over)

```
PUT [base]/MedicationDispense/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "MedicationDispense",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense" ] },
  "status": "completed",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#MedicationDispense1-44) for the full list of supported search parameters.

### Related

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) &middot; [UZ Core MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html)
- [e-Prescription and dispensing](workflow-prescription.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
