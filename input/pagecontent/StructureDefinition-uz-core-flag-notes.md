### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its code and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Flag/[id]
```

**Search flags**

```
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Flag?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/flag-category%7Cclinical
GET [base]/Flag?identifier=[system]%7C[value]
GET [base]/Flag?encounter=Encounter/[id]
GET [base]/Flag?author=Practitioner/[id]
GET [base]/Flag?date=ge2026-01-01
```

There is no `code` search parameter: to find a patient's medical deferrals, search the patient's active flags and check `code` on the client.

**Create**

```
POST [base]/Flag
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/donor-eligibility-cs",
      "code": "donation-deferred"
    }]
  },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-09T09:00:00+05:00" }
}
```

**Update** (for example, to end a medical deferral): send the complete resource with `PUT [base]/Flag/[id]`, set `status` to `inactive` or fill in `period.end`, and add an `If-Match` header carrying the version you read, so a concurrent change is not overwritten.

The [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) lists the supported search parameters, including `subject`, `_lastUpdated` and `_profile`.

### Related

- [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core Encounter](StructureDefinition-uz-core-encounter.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
