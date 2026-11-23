### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its code and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Communication/[id]
```

**Search alerts**

```
GET [base]/Communication?recipient=Patient/[id]&status=completed
GET [base]/Communication?category=https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs%7Ccomcat-0001-00001
GET [base]/Communication?recipient=Patient/[id]&sent=ge2026-11-01
GET [base]/Communication?identifier=[system]%7C[value]
```

The first query lists the alerts a patient sees in the Patient Portal; the second finds all alerts to the residents of zones.

**Create**

```
POST [base]/Communication
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00002"
    }]
  }],
  "sent": "2026-11-18T11:00:00+05:00",
  "recipient": [{ "reference": "Patient/[id]" }],
  "payload": [{
    "contentCodeableConcept": { "text": "[alert text]" }
  }]
}
```

**Update** (for example, to mark an alert created by mistake): send the complete resource with `PUT [base]/Communication/[id]`, set `status` to `entered-in-error`, and add an `If-Match` header carrying the version you read, so a concurrent change is not overwritten.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Communication1-57) for the full list of supported search parameters.

### Related

- [UZ Core Location](StructureDefinition-uz-core-location.html) &middot; [UZ Core Group](StructureDefinition-uz-core-group.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
