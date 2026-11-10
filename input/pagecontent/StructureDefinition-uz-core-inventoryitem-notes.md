### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read an inventory item by server id, and its earlier versions**

```
GET [base]/InventoryItem/[id]
GET [base]/InventoryItem/[id]/_history
```

**Search**

```
GET [base]/InventoryItem?_lastUpdated=ge2026-10-01
GET [base]/InventoryItem?_profile=https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem
GET [base]/InventoryItem?_id=[id1],[id2]
```

**Record an item in stock**

```
POST [base]/InventoryItem
{
  "resourceType": "InventoryItem",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "..." } ],
  "status": "active",
  "inventoryStatus": [ { "coding": [ { "system": "...", "code": "accepted" } ] } ],
  "instance": { "location": { "reference": "Location/[id]" }, ... },
  "productReference": { "reference": "BiologicallyDerivedProduct/[id]" },
  ...
}
```

**Update an existing item** (e.g. move `inventoryStatus` from `accepted` to `available`, `reserved` or `issued`)

```
PUT [base]/InventoryItem/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "InventoryItem",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem" ] },
  "status": "active",
  "inventoryStatus": [ { "coding": [ { "system": "...", "code": "reserved" } ] } ],
  ...
}
```

The inventory status `system` is `https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs`. See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) &middot; [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [UZ Core Location](StructureDefinition-uz-core-location.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
