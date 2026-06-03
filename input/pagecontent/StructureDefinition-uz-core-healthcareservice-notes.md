### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a healthcare service by server id**

```
GET [base]/HealthcareService/[id]
```

**Find services - for referral routing or as the lab test catalogue**

```
GET [base]/HealthcareService?organization=Organization/[id]&active=true
GET [base]/HealthcareService?location=Location/[id]
GET [base]/HealthcareService?service-category=[category-code]&service-type=[type-code]
GET [base]/HealthcareService?specialty=[specialty-code]
```

**Create a new healthcare service**

```
POST [base]/HealthcareService
{ "resourceType": "HealthcareService", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice" ] }, ... }
```

**Update an existing healthcare service**

```
PUT [base]/HealthcareService/[id]
{ "resourceType": "HealthcareService", "id": "[id]", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice" ] }, ... }
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [Laboratory order to result](workflow-lab.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
