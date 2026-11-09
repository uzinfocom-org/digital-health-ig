### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a claim by server id, and its earlier versions**

```
GET [base]/Claim/[id]
GET [base]/Claim/[id]/_history
```

**Search**

```
GET [base]/Claim?identifier=[system]%7C[value]
GET [base]/Claim?patient=Patient/[id]
GET [base]/Claim?patient=Patient/[id]&use=preauthorization&status=active
GET [base]/Claim?provider=Organization/[id]&created=ge2026-01-01
GET [base]/Claim?insurer=Organization/[id]
GET [base]/Claim?facility=Location/[id]
```

**Find a claim together with the payor's answer**

```
GET [base]/Claim?patient=Patient/[id]&_revinclude=ClaimResponse:request
```

**Submit a claim**

```
POST [base]/Claim
{
  "resourceType": "Claim",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim" ] },
  "status": "active",
  "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ] },
  "use": "preauthorization",
  "patient": { "reference": "Patient/[id]" },
  "created": "2026-03-06",
  "insurer": { "reference": "Organization/[id]" },
  "provider": { "reference": "Organization/[id]" },
  "referral": { "reference": "ServiceRequest/[id]" },
  "insurance": [ { "sequence": 1, "focal": true, "coverage": { "reference": "Coverage/[id]" } } ],
  ...
}
```

**Update an existing claim** (e.g. set `status` to `cancelled` when the care no longer needs approval)

```
PUT [base]/Claim/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Claim",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim" ] },
  "status": "cancelled",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) &middot; [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)
- [Payor identification](payor-identification.html) &middot; [Components: Reimbursement](components.html#reimbursement) &middot; [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
