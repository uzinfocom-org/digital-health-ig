### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a practitioner role by server id**

```
GET [base]/PractitionerRole/[id]
```

**Find the roles a practitioner holds, or who works in an organization**

```
GET [base]/PractitionerRole?practitioner=Practitioner/[id]&active=true
GET [base]/PractitionerRole?organization=Organization/[id]
GET [base]/PractitionerRole?specialty=https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs|394585009
GET [base]/PractitionerRole?role=https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs|2212.14&location=Location/[id]
```

**Create a new practitioner role**

```
POST [base]/PractitionerRole
{ "resourceType": "PractitionerRole", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ] }, ... }
```

**Update an existing practitioner role**

```
PUT [base]/PractitionerRole/[id]
{ "resourceType": "PractitionerRole", "id": "[id]", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ] }, ... }
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
