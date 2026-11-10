### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a response by server id, and its earlier versions**

```
GET [base]/ClaimResponse/[id]
GET [base]/ClaimResponse/[id]/_history
```

**Search**

```
GET [base]/ClaimResponse?identifier=[system]%7C[value]
GET [base]/ClaimResponse?request=Claim/[id]
GET [base]/ClaimResponse?patient=Patient/[id]&use=preauthorization&status=active
GET [base]/ClaimResponse?patient=Patient/[id]&outcome=complete
GET [base]/ClaimResponse?insurer=Organization/[id]&created=ge2026-01-01
```

**Record the payor's answer**

```
POST [base]/ClaimResponse
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response" ] },
  "status": "active",
  "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ] },
  "use": "preauthorization",
  "patient": { "reference": "Patient/[id]" },
  "created": "2026-10-05",
  "insurer": { "reference": "Organization/[id]" },
  "request": { "reference": "Claim/[id]" },
  "outcome": "complete",
  "decision": { "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ] },
  ...
}
```

**Update an existing response** (e.g. set `status` to `cancelled` and add the cancellation reason when a preauthorization expires)

```
PUT [base]/ClaimResponse/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ClaimResponse",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response" ] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/claim-response-cancellation-reason",
      "valueCodeableConcept": { ... }
    }
  ],
  "status": "cancelled",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#ClaimResponse1-26) for the full list of supported search parameters.

### Related

- [UZ Core Claim](StructureDefinition-uz-core-claim.html) &middot; [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)
- [Payor identification](payor-identification.html) &middot; [Components: Reimbursement](components.html#reimbursement) &middot; [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
