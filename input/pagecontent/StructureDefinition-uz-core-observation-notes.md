### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Observation/[id]
```

**Find observations**

```
GET [base]/Observation?patient=Patient/[id]
GET [base]/Observation?patient=Patient/[id]&category=laboratory
GET [base]/Observation?patient=Patient/[id]&code=http://loinc.org%7C8867-4
GET [base]/Observation?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Observation?patient=Patient/[id]&status=final
GET [base]/Observation?encounter=Encounter/[id]
GET [base]/Observation?based-on=ServiceRequest/[id]
GET [base]/Observation?specimen=Specimen/[id]
GET [base]/Observation?performer=Practitioner/[id]
GET [base]/Observation?patient=Patient/[id]&value-concept=http://snomed.info/sct%7C260385009
```

**Create**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [ ... ],
  "code": { ... },
  "subject": { "reference": "Patient/[id]" },
  "valueQuantity": { ... }
}
```

**Update** (e.g. promote `preliminary` to `final`, or `final` to `amended`) - PUT the full resource back with the new `status`:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [Vital signs](vital-signs.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Laboratory order to result](workflow-lab.html)
