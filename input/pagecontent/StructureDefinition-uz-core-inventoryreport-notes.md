### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); encode the `|` separator between a coding system and code as `%7C`.

**Read by server id**

```
GET [base]/InventoryReport/[id]
```

**Create**

```
POST [base]/InventoryReport
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00",
  "inventoryListing": [{
    "location": { "reference": "Location/[id]" },
    "item": [{
      "quantity": {
        "value": 100,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/[id]" } }
    }]
  }]
}
```

**Update** (for example, to mark a report `entered-in-error`): send the complete resource with `PUT [base]/InventoryReport/[id]` and an `If-Match` header carrying the version you read, so a concurrent change is not overwritten.

The [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) does not list InventoryReport yet; supported interactions and search parameters will be documented here once the server adds it.

### Related

- [UZ Core InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [UZ Core Medication](StructureDefinition-uz-core-medication.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
