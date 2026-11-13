### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a group by server id, and its earlier versions**

```
GET [base]/Group/[id]
GET [base]/Group/[id]/_history
```

**Search**

```
GET [base]/Group?identifier=[system]%7C[value]
GET [base]/Group?code=https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs%7Cgroup-0001-00001
GET [base]/Group?membership=definitional&type=person
GET [base]/Group?managing-entity=Organization/[id]
GET [base]/Group?name=diabetes
```

**Find the groups a patient belongs to**

```
GET [base]/Group?member=Patient/[id]
```

**Create a group**

```
POST [base]/Group
{
  "resourceType": "Group",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-group" ] },
  "active": true,
  "type": "person",
  "membership": "enumerated",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00005" }
    ]
  },
  "name": "Invited patients",
  "managingEntity": { "reference": "Organization/[id]" },
  "member": [ { "entity": { "reference": "Patient/[id]" } } ],
  ...
}
```

**Update an existing group** (e.g. add a member, or mark one `inactive` and update `quantity`) - PUT the full resource back:

```
PUT [base]/Group/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Group",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-group" ] },
  "member": [ ... ],
  "quantity": 3,
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Group1-19) for the full list of supported search parameters.

### Related

- [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [UZ Core CarePlan](StructureDefinition-uz-core-careplan.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Components](components.html) &middot; [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
