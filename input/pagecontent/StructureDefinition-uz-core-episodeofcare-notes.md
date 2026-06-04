### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/EpisodeOfCare/[id]
```

**Find episodes of care**

```
GET [base]/EpisodeOfCare?patient=Patient/[id]
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/EpisodeOfCare?patient=Patient/[id]&type=http://terminology.dhp.uz/...%7C...
GET [base]/EpisodeOfCare?patient=Patient/[id]&date=ge2025-01-01
GET [base]/EpisodeOfCare?organization=Organization/[id]
GET [base]/EpisodeOfCare?care-manager=Practitioner/[id]
```

**Create**

```
POST [base]/EpisodeOfCare
{
  "resourceType": "EpisodeOfCare",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "managingOrganization": { "reference": "Organization/[id]" },
  ...
}
```

**Update** (e.g. close the episode by setting `status` to `finished` and `period.end`, or transfer it to another `managingOrganization`) - PUT the full resource back:

```
PUT [base]/EpisodeOfCare/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
