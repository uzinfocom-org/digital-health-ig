### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a task by server id, and its earlier versions**

```
GET [base]/Task/[id]
GET [base]/Task/[id]/_history
```

**Search**

```
GET [base]/Task?focus=ServiceRequest/[id]
GET [base]/Task?based-on=ServiceRequest/[id]&status=requested,in-progress,on-hold
GET [base]/Task?patient=Patient/[id]
GET [base]/Task?owner=Organization/[id]&status=requested
GET [base]/Task?code=https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs%7Capprove-regional-commission
GET [base]/Task?business-status=https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs%7Coverdue
GET [base]/Task?period=ge2026-03-01
GET [base]/Task?modified=ge2026-03-01
```

**Fetch a task with its referral**

```
GET [base]/Task?_id=[id]&_include=Task:focus
```

**Create a task**

```
POST [base]/Task
{
  "resourceType": "Task",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task" ] },
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs", "code": "approve-family-doctor" }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/[id]" } ],
  "status": "requested",
  "intent": "order",
  "focus": { "reference": "ServiceRequest/[id]" },
  "for": { "reference": "Patient/[id]" },
  "owner": { "reference": "Organization/[id]" },
  ...
}
```

**Update an existing task** (e.g. set `status` to `completed` and `businessStatus` to `confirmed` when the stage approves)

```
PUT [base]/Task/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Task",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task" ] },
  "status": "completed",
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Task1-37) for the full list of supported search parameters.

### Related

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Organization](StructureDefinition-uz-core-organization.html) &middot; [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Referral workflow](workflow-referral.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
