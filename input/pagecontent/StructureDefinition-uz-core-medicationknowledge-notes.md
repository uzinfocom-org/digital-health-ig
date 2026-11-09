### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/MedicationKnowledge/[id]
```

**Find an entry before creating one (the usual first step)**

```
GET [base]/MedicationKnowledge?identifier=https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge|MK-2026-000123
```

**Other useful searches**

```
GET [base]/MedicationKnowledge?status=active
GET [base]/MedicationKnowledge?source-cost=DTSJ
```

MedicationKnowledge is not yet listed in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); the searches above are the standard FHIR R5 MedicationKnowledge search parameters (`identifier`, `status`, `source-cost`).

**Create** (only after confirming no entry exists)

```
POST [base]/MedicationKnowledge
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge" ] },
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/[id]" } ],
  "cost": [ { "effectiveDate": [ { "start": "..." } ], "type": { ... }, "costMoney": { ... } } ],
  ...
}
```

**Update** (e.g. a new price is approved, or the product is withdrawn) - PUT the full resource back with the changed `cost` entries or `status`:

```
PUT [base]/MedicationKnowledge/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "MedicationKnowledge",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge" ] },
  ...
}
```

An entry created by mistake is not deleted: set its `status` to `entered-in-error`.

### Related

- [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html)
- [e-Prescription and dispensing](workflow-prescription.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
