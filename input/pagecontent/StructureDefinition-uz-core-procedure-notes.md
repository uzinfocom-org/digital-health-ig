### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Procedure/[id]
```

**Find procedures**

```
GET [base]/Procedure?patient=Patient/[id]
GET [base]/Procedure?patient=Patient/[id]&code=http://snomed.info/sct%7C386438000
GET [base]/Procedure?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Procedure?encounter=Encounter/[id]
GET [base]/Procedure?patient=Patient/[id]&status=completed
GET [base]/Procedure?based-on=ServiceRequest/[id]
GET [base]/Procedure?performer=Practitioner/[id]
```

**Create**

```
POST [base]/Procedure
{ "resourceType": "Procedure", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-procedure" ] }, "status": "completed", "code": { ... }, "subject": { "reference": "Patient/[id]" }, "encounter": { "reference": "Encounter/[id]" }, ... }
```

**Update** (e.g. move from `in-progress` to `completed`, or record an `outcome`) - PUT the full resource back with the new values:

```
PUT [base]/Procedure/[id]
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
