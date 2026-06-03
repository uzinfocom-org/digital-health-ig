### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read a practitioner by server id**

```
GET [base]/Practitioner/[id]
```

**Find a practitioner before registering (the usual first step)**

```
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uz/argos|9876543210
GET [base]/Practitioner?family=Karimov&given=Ahmed
GET [base]/Practitioner?qualification-code=DIP&active=true
```

**Register a new practitioner** (only after confirming no match exists)

```
POST [base]/Practitioner
{ "resourceType": "Practitioner", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] }, ... }
```

**Update an existing practitioner**

```
PUT [base]/Practitioner/[id]
{ "resourceType": "Practitioner", "id": "[id]", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] }, ... }
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters, and [Identifier systems](identifiers.html) for the practitioner identifier system URIs.

### Related

- [Identifier systems](identifiers.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
