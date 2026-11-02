### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); encode the `|` separator between a coding system and code as `%7C`.

**Read by server id**

```
GET [base]/CarePlan/[id]
```

**Search care plans**

```
GET [base]/CarePlan?identifier=https://mis.dmed.uz%7CCP-2015-000123
GET [base]/CarePlan?patient=Patient/[id]&status=active
GET [base]/CarePlan?patient=Patient/[id]&category=http://snomed.info/sct%7C773130005
GET [base]/CarePlan?encounter=Encounter/[id]
GET [base]/CarePlan?activity-reference=ServiceRequest/[id]
GET [base]/CarePlan?date=ge2026-01-01
```

**Create**

```
POST [base]/CarePlan
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-careplan"]
  },
  "status": "active",
  "intent": "plan",
  "subject": { "reference": "Patient/[id]" },
  "activity": [{ "plannedActivityReference": { "reference": "ServiceRequest/[id]" } }]
}
```

**Update** (for example, to add an activity or complete the plan): send the complete resource with `PUT [base]/CarePlan/[id]` and an `If-Match` header carrying the version you read, so a concurrent change is not overwritten.

The [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) lists the supported search parameters, including `based-on`, `part-of`, `custodian`, `care-team`, `condition`, `goal`, `intent` and `instantiates-canonical`.

### Related

- [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Procedure](StructureDefinition-uz-core-procedure.html) &middot; [UZ Core Goal](StructureDefinition-uz-core-goal.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
