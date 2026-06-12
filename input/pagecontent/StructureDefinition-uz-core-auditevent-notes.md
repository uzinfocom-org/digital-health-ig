### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

AuditEvents are written by the platform and are read-only to clients - there is no create or update path. Query the audit log with read and search.

**Read by server id**

```
GET [base]/AuditEvent/[id]
```

**Search the audit log**

```
GET [base]/AuditEvent?patient=Patient/[id]
GET [base]/AuditEvent?patient=Patient/[id]&date=ge2025-01-01
GET [base]/AuditEvent?agent=PractitionerRole/[id]
GET [base]/AuditEvent?patient=Patient/[id]&action=R
GET [base]/AuditEvent?patient=Patient/[id]&category=http://dicom.nema.org/resources/ontology/DCM%7C110112
GET [base]/AuditEvent?patient=Patient/[id]&entity=Condition/[id]
GET [base]/AuditEvent?patient=Patient/[id]&outcome=http://hl7.org/fhir/issue-severity%7Cerror
```

In FHIR R5 the event grouping is searched with `category` and the specific sub-type with `code` (R4's `type` / `subtype`). In this profile `outcome.code` is bound to the issue-severity value set, so a denied or failed access is searchable as `error` (or `fatal`) rather than `success`.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
