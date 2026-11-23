### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read an entry by server id**

```
GET [base]/SubstanceDefinition/[id]
```

**Find an entry before creating one (the usual first step)**

```
# by reference list number - the reliable match
GET [base]/SubstanceDefinition?identifier=https://dhp.uz/fhir/core/sid/doc/uz/substance-definition|1368

# by SNOMED CT or national code
GET [base]/SubstanceDefinition?code=http://snomed.info/sct|3718001
```

**Other useful searches**

```
GET [base]/SubstanceDefinition?name=Sigir
GET [base]/SubstanceDefinition?classification=http://snomed.info/sct|255620007
```

**Create a new entry** (only after confirming no entry exists)

```
POST [base]/SubstanceDefinition
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition" ] },
  "code": [ { "code": { "coding": [ { "system": "...", "code": "..." } ] } } ],
  "name": [ { "name": "...", "preferred": true } ],
  ...
}
```

**Update an existing entry** (e.g. the entry is edited in the reference list) - PUT the full resource back with the changed elements and the increased `version`:

```
PUT [base]/SubstanceDefinition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "SubstanceDefinition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition" ] },
  ...
}
```

An entry removed from the reference list is not deleted: set its `status` to `retired`.

SubstanceDefinition is not yet listed in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); the searches above use standard FHIR R5 search parameters.

### Related

- [UZ Core Substance](StructureDefinition-uz-core-substance.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
