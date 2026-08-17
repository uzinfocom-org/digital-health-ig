### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a token system from its value and must be URL-encoded as `%7C`. These interactions use standard FHIR R5 search parameters; see the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) as it is finalized for this resource.

**Read a schedule by server id**

```
GET [base]/PlanDefinition/[id]
```

**Useful searches**

```
# the active national schedule
GET [base]/PlanDefinition?status=active

# by machine name, title, or version
GET [base]/PlanDefinition?name=NationalImmunizationSchedule
GET [base]/PlanDefinition?title=National%20Immunization%20Schedule
GET [base]/PlanDefinition?version=1.0.0

# by publication date, jurisdiction, or use-context value
GET [base]/PlanDefinition?date=ge2026-01-01
GET [base]/PlanDefinition?jurisdiction=urn:iso:std:iso:3166%7CUZ
GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct%7C14189004
```

**Create a schedule**

```
POST [base]/PlanDefinition
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition" ] },
  ...
}
```

Before activating, confirm the schedule passes validation (no dose-sequence gaps, no impossible timing windows) and that no other version is already active for the same scope.

**Update a schedule** (e.g. publish a new version or retire an old one)

```
PUT [base]/PlanDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "PlanDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition" ] },
  ...
}
```

### Related

- [Immunization workflow](workflow-immunization.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
