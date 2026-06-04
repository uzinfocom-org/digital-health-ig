### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Goal/[id]
```

**Find goals**

```
GET [base]/Goal?patient=Patient/[id]
GET [base]/Goal?patient=Patient/[id]&lifecycle-status=active
GET [base]/Goal?patient=Patient/[id]&category=dietary
GET [base]/Goal?patient=Patient/[id]&achievement-status=in-progress
GET [base]/Goal?patient=Patient/[id]&target-date=ge2025-01-01
GET [base]/Goal?patient=Patient/[id]&description=http://snomed.info/sct%7C1201005
```

**Create**

```
POST [base]/Goal
{
  "resourceType": "Goal",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-goal" ] },
  "lifecycleStatus": "active",
  "description": { ... },
  "subject": { "reference": "Patient/[id]" },
  ...
}
```

**Withdraw a goal** - a Goal is never hard-deleted. PUT the full resource back with an updated `lifecycleStatus` (e.g. `cancelled` or `completed`) instead of calling `DELETE`:

```
PUT [base]/Goal/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
