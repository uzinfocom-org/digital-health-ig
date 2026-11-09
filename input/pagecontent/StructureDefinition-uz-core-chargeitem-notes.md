### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a system from a value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/ChargeItem/[id]
```

**Find charge items**

```
GET [base]/ChargeItem?_lastUpdated=ge2026-01-01
GET [base]/ChargeItem?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem
GET [base]/ChargeItem?_id=[id1],[id2]
```

**Create**

Include the ChargeItem identifier with the system fixed by UZ Core ChargeItem:

```
POST [base]/ChargeItem
{
  "resourceType": "ChargeItem",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem" ] },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/charge-item",
    "value": "[charge-item-id]"
  }],
  "status": "billable",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "373784005" }] },
  "subject": { "reference": "Patient/[id]" }
}
```

**Update** (for example, to add a performer or service reference) - PUT the full resource with the new values:

```
PUT [base]/ChargeItem/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
