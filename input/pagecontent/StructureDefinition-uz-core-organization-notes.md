### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read an organization by server id**

```
GET [base]/Organization/[id]
```

**Find an organization before registering (the usual first step)**

```
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
GET [base]/Organization?name=onkologiya&active=true
GET [base]/Organization?type=https://terminology.dhp.uz/fhir/core/CodeSystem/organization-types-uz-cs|I&address-city=22070022
```

**Find the sub-units of a parent organization**

```
GET [base]/Organization?partof=Organization/[id]
```

**Register a new organization** (only after confirming no match exists)

```
POST [base]/Organization
{
  "resourceType": "Organization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  ...
}
```

**Update an existing organization**

```
PUT [base]/Organization/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Organization",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters, and [Identifier systems](identifiers.html) for the organization identifier system URIs.

### Related

- [Identifier systems](identifiers.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
