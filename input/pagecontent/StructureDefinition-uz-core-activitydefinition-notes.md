### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a definition by server id, and its earlier versions**

```
GET [base]/ActivityDefinition/[id]
GET [base]/ActivityDefinition/[id]/_history
```

**Find a definition by its canonical url**

```
GET [base]/ActivityDefinition?url=https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition
GET [base]/ActivityDefinition?url=[canonical url]&version=1.0.0
```

**Search**

```
GET [base]/ActivityDefinition?status=active&kind=ServiceRequest
GET [base]/ActivityDefinition?name=ChildhoodVaccinationActivity
GET [base]/ActivityDefinition?title=Childhood%20Vaccination
GET [base]/ActivityDefinition?publisher=Ministry%20of%20Health
GET [base]/ActivityDefinition?effective=ge2026-01-01
```

**Fetch the schedules that use a definition**

```
GET [base]/PlanDefinition?definition=https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition
```

**Create a definition**

```
POST [base]/ActivityDefinition
{
  "resourceType": "ActivityDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition" ] },
  "url": "https://terminology.dhp.uz/fhir/core/ActivityDefinition/[name]",
  "name": "[Name]",
  "status": "draft",
  "kind": "ServiceRequest",
  ...
}
```

**Update an existing definition** (e.g. set `status` to `retired` when a newer version replaces it)

```
PUT [base]/ActivityDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ActivityDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition" ] },
  "status": "retired",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#ActivityDefinition1-18) for the full list of supported search parameters.

### Related

- [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html)
- [Immunization workflow](workflow-immunization.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
