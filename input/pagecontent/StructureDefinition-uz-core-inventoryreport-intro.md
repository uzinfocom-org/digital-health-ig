UZ Core InventoryReport records a count of stock at one or more storage locations, such as a hospital pharmacy, a ward's medicine cabinet, a warehouse or a blood bank shelf. A snapshot report states how much of each item is on hand when it is counted. A difference report states how much was added or removed, and why: a new receipt, a transfer, a write-off of expired stock. Each counted item points to what was counted - a [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [InventoryItem](StructureDefinition-uz-core-inventoryitem.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) or NutritionProduct - and each listing points to the [Location](StructureDefinition-uz-core-location.html) where it was counted.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when data is available ([Must Support](must-support.html)). Must Support means systems populate the element when they have the information and process it on receipt. See the [formal profile](#profile) for exact types, cardinalities, and bindings.

#### Each UZ Core InventoryReport Must Have

This profile adds no new mandatory cardinalities. Follow the base FHIR requirements: a `status`, a `countType` and the `reportedDateTime`. Each counted item, when present, also needs its `quantity` and the `item` it counts.

#### Each UZ Core InventoryReport Must Support

- a business identifier - the report number from the managing organization's system (see [identifier slices](#identifier-slices));
- the status (draft / requested / active / entered-in-error) and the count type (snapshot or difference);
- for a difference report, the operation type (addition, subtraction or no change) and its reason, such as a new receipt, a transfer or a write-off;
- when the report was made, who made it (a practitioner, patient or related person), and the period it covers;
- each listing: the location counted, the status of the stock there (available, quarantined, expired and so on), and when it was counted;
- each counted item: its category (medicine, vaccine, medical device, blood component and so on), the quantity with its unit - a SNOMED CT unit such as a box or a vial, or a national one such as a pack - and what was counted;
- notes.

### Building the JSON, step by step

#### The smallest InventoryReport you should send

Only the three base elements are required. `countType` is `snapshot` for stock on hand, or `difference` for a change in stock.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00"
}
```

#### Counting stock on hand

Each `inventoryListing` is one location at one moment, and each of its `item` entries is one counted product. The `quantity` takes a unit from [Inventory unit](ValueSet-inventory-unit-vs.html): mostly SNOMED CT units such as `418445004` Box or `733026001` Vial, plus national units such as Pack where SNOMED CT has none. `item.item` is a `CodeableReference`, so the reference sits one level deeper, under `reference`. The displays of national codes are in Uzbek, matching the resource `language`.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "language": "uz",
  "status": "active",
  "countType": "snapshot",
  "reportedDateTime": "2026-10-27T10:00:00+05:00",
  "reporter": { "reference": "Practitioner/example-practitioner" },
  "inventoryListing": [{
    "location": { "reference": "Location/example-location" },
    "itemStatus": {
      "coding": [{
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
        "code": "available",
        "display": "Mavjud"
      }]
    },
    "countingDateTime": "2026-10-27T09:30:00+05:00",
    "item": [{
      "category": {
        "coding": [{
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-item-category-cs",
          "code": "invct-0001-00001",
          "display": "Dori vositasi"
        }]
      },
      "quantity": {
        "value": 100,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/example-medication" } }
    }]
  }]
}
```

#### Reporting a change in stock

A difference report says whether stock was added or removed in `operationType`, and why in `operationTypeReason`. Here 20 boxes arrived as a new receipt during October. `operationType` describes a change, so leave it out of snapshot reports. The `identifier` carries the number the managing organization's system gave the report, with that organization in `assigner`.

```json
{
  "resourceType": "InventoryReport",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryreport"]
  },
  "language": "uz",
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-report",
    "value": "INV-2026-000451",
    "assigner": { "reference": "Organization/tashkent-diseases-hospital" }
  }],
  "status": "active",
  "countType": "difference",
  "operationType": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-operation-type-cs",
      "code": "invop-0001-00001",
      "display": "Kirim"
    }]
  },
  "operationTypeReason": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventory-operation-reason-cs",
      "code": "invrs-0001-00004",
      "display": "Yangi kirim"
    }]
  },
  "reportedDateTime": "2026-11-01T09:00:00+05:00",
  "reporter": { "reference": "Practitioner/example-practitioner" },
  "reportingPeriod": { "start": "2026-10-01", "end": "2026-10-31" },
  "inventoryListing": [{
    "location": { "reference": "Location/example-location" },
    "item": [{
      "quantity": {
        "value": 20,
        "unit": "Quti",
        "system": "http://snomed.info/sct",
        "code": "418445004"
      },
      "item": { "reference": { "reference": "Medication/example-medication" } }
    }]
  }]
}
```

#### Identifier slices {#identifier-slices}

| Slice | `system` | What it identifies |
|---|---|---|
| `inventoryReport` | `https://dhp.uz/fhir/core/sid/doc/uz/inventory-report` | Report number assigned by the managing organization's information system ([NamingSystem](NamingSystem-uzb-inventory-report-identifier.html)) |

The full example is the [medication receipt report](InventoryReport-example-inventory-report-medication-receipt.html).

See the [Quick Start](#quick-start) for API calls.
