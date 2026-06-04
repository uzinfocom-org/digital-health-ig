### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Encounter/[id]
```

**Find encounters**

```
GET [base]/Encounter?patient=Patient/[id]
GET [base]/Encounter?patient=Patient/[id]&status=in-progress
GET [base]/Encounter?patient=Patient/[id]&class=IMP
GET [base]/Encounter?patient=Patient/[id]&date=ge2025-01-01
GET [base]/Encounter?patient=Patient/[id]&type=http://terminology.dhp.uz/...%7C...
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]
GET [base]/Encounter?service-provider=Organization/[id]
GET [base]/Encounter?practitioner=Practitioner/[id]
GET [base]/Encounter?location=Location/[id]
```

**Create**

```
POST [base]/Encounter
{ "resourceType": "Encounter", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] }, "status": "in-progress", "class": [ { "coding": [ { "code": "IMP" } ] } ], "subject": { "reference": "Patient/[id]" }, ... }
```

**Update** (e.g. close the visit by setting `status` to `completed` and filling `actualPeriod.end`) - PUT the full resource back:

```
PUT [base]/Encounter/[id]
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
