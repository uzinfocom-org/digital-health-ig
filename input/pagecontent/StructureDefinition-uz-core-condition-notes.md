### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Condition/[id]
```

**Find conditions**

```
GET [base]/Condition?patient=Patient/[id]
GET [base]/Condition?patient=Patient/[id]&category=problem-list-item
GET [base]/Condition?patient=Patient/[id]&clinical-status=active&verification-status=confirmed
GET [base]/Condition?patient=Patient/[id]&code=http://hl7.org/fhir/sid/icd-10%7CR51
GET [base]/Condition?encounter=Encounter/[id]
GET [base]/Condition?patient=Patient/[id]&onset-date=ge2025-01-01
GET [base]/Condition?patient=Patient/[id]&recorded-date=ge2025-01-01
```

**Create**

```
POST [base]/Condition
{ "resourceType": "Condition", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition" ] }, "clinicalStatus": { "coding": [ { "code": "active" } ] }, "code": { ... }, "subject": { "reference": "Patient/[id]" }, ... }
```

**Update** (e.g. mark a problem resolved) - PUT the full resource back with the new `clinicalStatus` / `abatement[x]`:

```
PUT [base]/Condition/[id]
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
