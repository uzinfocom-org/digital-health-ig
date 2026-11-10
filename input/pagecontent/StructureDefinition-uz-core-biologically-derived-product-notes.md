### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates an identifier or code system from its value and must be URL-encoded as `%7C`.

**Read a product by server id, and its earlier versions**

```
GET [base]/BiologicallyDerivedProduct/[id]
GET [base]/BiologicallyDerivedProduct/[id]/_history
```

**Find a product before creating it (the usual first step)**

```
# by unit number
GET [base]/BiologicallyDerivedProduct?identifier=https://dhp.uz/fhir/core/sid/prd/uz/blood/unit|BB-COMP-2026-0001

# by donation number - the donated unit and every component prepared from it
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation|DON-2025-0088231
```

**Other useful searches**

```
GET [base]/BiologicallyDerivedProduct?code=http://snomed.info/sct|431069006&product-status=available
GET [base]/BiologicallyDerivedProduct?product-category=fluid
GET [base]/BiologicallyDerivedProduct?request=ServiceRequest/[id]
GET [base]/BiologicallyDerivedProduct?collector=Practitioner/[id]
GET [base]/BiologicallyDerivedProduct?_lastUpdated=ge2026-10-01
```

**Create a product** (only after confirming no match exists)

```
POST [base]/BiologicallyDerivedProduct
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product" ] },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "..." } ],
  "biologicalSourceEvent": { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation", "value": "..." },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "cells" },
  "productCode": { "coding": [ { "system": "http://snomed.info/sct", "code": "126251004" } ] },
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  ...
}
```

**Update an existing product** (e.g. set `productStatus` to `unavailable` once the unit has been transfused or discarded)

```
PUT [base]/BiologicallyDerivedProduct/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "BiologicallyDerivedProduct",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product" ] },
  ...
}
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#BiologicallyDerivedProduct1-56) for the full list of supported search parameters, and the [identifier slices](#identifier-slices) table above for the unit and donation number system URIs.

### Related

- [UZ Core InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [UZ Core SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [UZ Core SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html)
- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
