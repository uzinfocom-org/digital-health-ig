### Quick Start

This profile uses standard FHIR R5 search parameters. `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Specimen/[id]
```

**Find specimens**

```
GET [base]/Specimen?patient=Patient/[id]
GET [base]/Specimen?patient=Patient/[id]&type=http://terminology.hl7.org/CodeSystem/v2-0487%7CBLD
GET [base]/Specimen?patient=Patient/[id]&status=available
GET [base]/Specimen?patient=Patient/[id]&collected=ge2025-01-01
GET [base]/Specimen?accession=ACC-2025-000045
```

**Create**

```
POST [base]/Specimen
{
  "resourceType": "Specimen",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-specimen" ] },
  "status": "available",
  "type": { ... },
  "subject": { "reference": "Patient/[id]" },
  "request": [ { "reference": "ServiceRequest/[id]" } ],
  ...
}
```

**Update** (e.g. mark a specimen `unavailable`, or record its `receivedTime`) - PUT the full resource back with the new `status`:

```
PUT [base]/Specimen/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Laboratory order to result](workflow-lab.html)
