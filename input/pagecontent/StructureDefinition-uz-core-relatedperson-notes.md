### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read a related person by server id**

```
GET [base]/RelatedPerson/[id]
```

**Find the people related to a patient**

```
GET [base]/RelatedPerson?patient=Patient/[id]
GET [base]/RelatedPerson?patient=Patient/[id]&relationship=PRN
GET [base]/RelatedPerson?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|12345678901234
GET [base]/RelatedPerson?name=Zafarov
```

**Create a new related person**

```
POST [base]/RelatedPerson
{
  "resourceType": "RelatedPerson",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  "patient": { "reference": "Patient/[id]" },
  ...
}
```

**Update an existing related person**

```
PUT [base]/RelatedPerson/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "RelatedPerson",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters, and [Identifier systems](identifiers.html) for the identifier system URIs.

### Related

- [Identifier systems](identifiers.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
