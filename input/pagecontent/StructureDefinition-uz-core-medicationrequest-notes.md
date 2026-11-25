### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a prescription by server id, and its earlier versions**

```
GET [base]/MedicationRequest/[id]
GET [base]/MedicationRequest/[id]/_history
```

**Find a prescription**

```
# by prescription number, for example after scanning the QR code
GET [base]/MedicationRequest?identifier=12345678

# by medication, as a catalogue reference or a code
GET [base]/MedicationRequest?medication=Medication/[id]
GET [base]/MedicationRequest?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
```

**Other useful searches**

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationRequest?patient=Patient/[id]&authoredon=ge2026-01-01
GET [base]/MedicationRequest?patient=Patient/[id]&category=rembr-0001-00001
GET [base]/MedicationRequest?requester=PractitionerRole/[id]
GET [base]/MedicationRequest?encounter=Encounter/[id]
GET [base]/MedicationRequest?intended-dispenser=Organization/[id]
GET [base]/MedicationRequest?patient=Patient/[id]&_revinclude=MedicationDispense:prescription
```

The last search returns the patient's prescriptions together with the dispenses that fulfil them.

**Create a prescription**

```
POST [base]/MedicationRequest
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest" ] },
  "status": "active",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "dosageInstruction": [ ... ],
  "dispenseRequest": { ... },
  ...
}
```

**Update an existing prescription** (e.g. set `status` to `cancelled` with a `statusReason`)

```
PUT [base]/MedicationRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "MedicationRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest" ] },
  "status": "cancelled",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#MedicationRequest1-39) for the full list of supported search parameters.

### Related

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) &middot; [UZ Core MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html)
- [e-Prescription and dispensing](workflow-prescription.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
