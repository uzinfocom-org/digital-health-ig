### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates a code system from its value and must be URL-encoded as `%7C`.

Provenance is generally written by the originating system alongside the data it describes, so most clients read it by following the record's `target` rather than creating it directly.

**Read by server id**

```
GET [base]/Provenance/[id]
```

**Find the provenance of a record, or a patient's signed records**

```
GET [base]/Provenance?target=DocumentReference/[id]
GET [base]/Provenance?patient=Patient/[id]
GET [base]/Provenance?patient=Patient/[id]&agent=PractitionerRole/[id]
GET [base]/Provenance?patient=Patient/[id]&when=ge2025-01-01
GET [base]/Provenance?entity=DocumentReference/[id]
```

To retrieve a record together with its provenance in one call, use a reverse include, for example `GET [base]/DocumentReference?_id=[id]&_revinclude=Provenance:target`.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
