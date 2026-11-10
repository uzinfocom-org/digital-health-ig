### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a composition by server id, and its earlier versions**

```
GET [base]/Composition/[id]
GET [base]/Composition/[id]/_history
```

**Search**

```
GET [base]/Composition?patient=Patient/[id]
GET [base]/Composition?patient=Patient/[id]&type=https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs%7Cemdoc-0010-0003
GET [base]/Composition?patient=Patient/[id]&category=https://terminology.dhp.uz/fhir/core/CodeSystem/composition-category-cs%7CComp-001-0001
GET [base]/Composition?patient=Patient/[id]&status=final&date=ge2026-01-01
GET [base]/Composition?author=PractitionerRole/[id]
GET [base]/Composition?encounter=Encounter/[id]
GET [base]/Composition?entry=Condition/[id]
GET [base]/Composition?section=http://loinc.org%7C48765-2
GET [base]/Composition?patient=Patient/[id]&_include=Composition:entry
```

The last query returns the compositions together with the resources their sections reference.

**Create a composition**

```
POST [base]/Composition
{
  "resourceType": "Composition",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition" ] },
  "language": "uz",
  "status": "preliminary",
  "type": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs", "code": "..." } ] },
  "subject": [ { "reference": "Patient/[id]" } ],
  "date": "...",
  "author": [ { "reference": "PractitionerRole/[id]" } ],
  "title": "...",
  "section": [ ... ]
}
```

**Update an existing composition** (e.g. set `status` to `final` once the document is complete, or to `amended` after a change)

```
PUT [base]/Composition/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Composition",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition" ] },
  "status": "final",
  ...
}
```

Update `date` with every change. Assembling and signing finalised documents is specified in the [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/).

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Workflows](workflows.html) &middot; [Bundles: document vs transaction vs searchset](general-guidance.html#bundles-document-vs-transaction-vs-searchset)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
