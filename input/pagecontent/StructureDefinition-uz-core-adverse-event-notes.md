### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a token system from its value and must be URL-encoded as `%7C`. These interactions use standard FHIR R5 search parameters; see the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) as it is finalized for this resource.

**Read an adverse event by server id**

```
GET [base]/AdverseEvent/[id]
```

**Useful searches**

```
# all adverse events for a patient
GET [base]/AdverseEvent?subject=Patient/[id]

# serious events only, most recent first
GET [base]/AdverseEvent?subject=Patient/[id]&seriousness=http://terminology.hl7.org/CodeSystem/adverse-event-seriousness%7Cserious&_sort=-date

# by date, status, or event code
GET [base]/AdverseEvent?subject=Patient/[id]&date=ge2026-01-01
GET [base]/AdverseEvent?status=completed
GET [base]/AdverseEvent?code=http://snomed.info/sct%7C39579001
```

**Record a new adverse event**

```
POST [base]/AdverseEvent
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

**Update an adverse event** (e.g. add an outcome or the resulting condition once known)

```
PUT [base]/AdverseEvent/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "AdverseEvent",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  ...
}
```

### Related

- [Immunization workflow](workflow-immunization.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
