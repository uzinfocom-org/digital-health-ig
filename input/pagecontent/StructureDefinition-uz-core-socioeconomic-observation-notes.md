### Quick Start

This profile is on Observation, so use the Observation endpoint. `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Observation/[id]
```

**Find socioeconomic observations**

```
GET [base]/Observation?patient=Patient/[id]&category=social-history
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C1303306008
GET [base]/Observation?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Observation?patient=Patient/[id]&status=final
```

**Create**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "1303306008",
        "display": "Eligible for benefit"
      }
    ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2025-06-11",
  ...
}
```

**Update** (e.g. correct a recorded value by setting `status` to `corrected`) - PUT the full resource back with the new `status` / `value[x]`:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
