### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a request by server id, and its earlier versions**

```
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
```

**Search**

```
GET [base]/ServiceRequest?identifier=https://mis.dmed.uz%7CLAB-2026-004512
GET [base]/ServiceRequest?requisition=https://mis.dmed.uz%7CREQ-2026-001877
GET [base]/ServiceRequest?code-concept=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-E
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/ServiceRequest?patient=Patient/[id]&category=http://snomed.info/sct%7C32485007
GET [base]/ServiceRequest?encounter=Encounter/[id]
GET [base]/ServiceRequest?requester=PractitionerRole/[id]&authored=ge2026-01-01
GET [base]/ServiceRequest?specimen=Specimen/[id]
```

**Fetch a referral with its approval Tasks, or an order with its results**

```
GET [base]/ServiceRequest?_id=[id]&_revinclude=Task:focus
GET [base]/ServiceRequest?_id=[id]&_revinclude=DiagnosticReport:based-on
```

**Create a request**

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [ { "system": "...", "code": "..." } ] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "authoredOn": "2026-01-16T09:10:00+05:00",
  ...
}
```

**Update an existing request** (e.g. set `status` to `revoked` to cancel it)

```
PUT [base]/ServiceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ServiceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest" ] },
  "status": "revoked",
  ...
}
```

A completed request cannot be changed, and a revoked one cannot be fulfilled. See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13) for the full list of supported search parameters.

### Related

- [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) &middot; [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) &middot; [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [UZ Core Procedure](StructureDefinition-uz-core-procedure.html)
- [Laboratory workflow](workflow-lab.html) &middot; [Referral workflow](workflow-referral.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
