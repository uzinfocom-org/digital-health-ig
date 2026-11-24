### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

**Read a sample by server id**

```
GET [base]/Substance/[id]
```

**Find a sample**

```
# by sample identifier - the reliable match
GET [base]/Substance?identifier=https://dhp.uz/fhir/core/sid/prd/uz/substance-sample|NMN-2026-000123

# by batch number
GET [base]/Substance?identifier=https://dhp.uz/fhir/core/sid/prd/uz/substance-lot|SER-2611-15

# by national code, by SNOMED CT code - which also finds the narrower national names -
# or by the SubstanceDefinition entry
GET [base]/Substance?code=https://terminology.dhp.uz/fhir/core/CodeSystem/substance-names-cs|sbnam-0008-00013
GET [base]/Substance?code=http://snomed.info/sct|3718001
GET [base]/Substance?code-reference=SubstanceDefinition/[id]
```

**Other useful searches**

```
GET [base]/Substance?category=http://snomed.info/sct|255620007&status=active
GET [base]/Substance?expiry=lt2027-01-01
```

**Create a new sample**

```
POST [base]/Substance
{
  "resourceType": "Substance",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance" ] },
  "instance": true,
  "status": "active",
  "code": { "reference": { "reference": "SubstanceDefinition/[id]" } },
  ...
}
```

**Update an existing sample** - PUT the full resource back with the changed elements:

```
PUT [base]/Substance/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Substance",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance" ] },
  ...
}
```

A sample registered by mistake, or whose sampling act was cancelled, is not deleted: set its `status` to `entered-in-error`.

Substance is not yet listed in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html); the searches above use standard FHIR R5 search parameters.

### Related

- [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core Observation](StructureDefinition-uz-core-observation.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
