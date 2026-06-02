### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read a location by server id**

```
GET [base]/Location/[id]
```

**Find locations**

```
GET [base]/Location?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
GET [base]/Location?organization=Organization/[id]&status=active
GET [base]/Location?name=onkologiya&address-city=22070022
GET [base]/Location?type=ONCL
```

**Create a new location**

```
POST [base]/Location
{ "resourceType": "Location", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-location" ] }, ... }
```

**Update an existing location**

```
PUT [base]/Location/[id]
{ "resourceType": "Location", "id": "[id]", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-location" ] }, ... }
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters, and [Identifier systems](identifiers.html) for the identifier system URIs.

### Related

- [Identifier systems](identifiers.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
