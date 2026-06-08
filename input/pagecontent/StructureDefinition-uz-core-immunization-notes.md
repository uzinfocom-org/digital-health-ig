### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a token system from its value and must be URL-encoded as `%7C`. These interactions use standard FHIR R5 search parameters; see the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) as it is finalized for this resource.

**Read an immunization by server id**

```
GET [base]/Immunization/[id]
```

**Useful searches**

```
# all immunizations for a patient
GET [base]/Immunization?patient=Patient/[id]

# a patient's vaccination history for one vaccine, most recent first
GET [base]/Immunization?patient=Patient/[id]&vaccine-code=http://hl7.org/fhir/sid/cvx%7C19&_sort=-date

# completed doses only
GET [base]/Immunization?patient=Patient/[id]&status=completed

# by date, lot number, or performer
GET [base]/Immunization?patient=Patient/[id]&date=ge2026-01-01
GET [base]/Immunization?lot-number=LOT-BCG-2026-01
GET [base]/Immunization?performer=Practitioner/[id]
```

**Record a new immunization**

```
POST [base]/Immunization
{
  "resourceType": "Immunization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  ...
}
```

Before creating, check that no record already exists for the same patient + vaccine code + occurrence + lot number, so the dose is not recorded twice.

**Update an immunization** (e.g. correct a lot number, add a reaction, or mark a record `entered-in-error`)

```
PUT [base]/Immunization/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Immunization",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  ...
}
```

### Related

- [Immunization workflow](workflow-immunization.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
