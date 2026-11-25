UZ Core InventoryItem records an item held in stock and its state: a unit of red blood cells on a shelf of a blood station's cold storage, or a batch of tablets in a hospital's central warehouse. It says what the item is, which organization is responsible for it, where it is stored, how much of it there is, and where it is in the stock workflow (accepted, quarantined, reserved, issued, expired and so on). The product itself is described by its own resource, which the inventory item points to in `productReference`: a [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) for a blood component, a [Medication](StructureDefinition-uz-core-medication.html), a [Device](StructureDefinition-uz-core-device.html) or a NutritionProduct. A [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) can name an inventory item as the item it delivered.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core InventoryItem Must Have

- the `status` of the record (active / inactive / entered-in-error / unknown).

`status` is mandatory in the base InventoryItem resource; this profile adds no further mandatory elements. An inventory item number must carry its `system`, a `name` must carry its name type, language and text, and a responsible organization must carry its role.

#### Each UZ Core InventoryItem Must Support

- the inventory item number assigned by the managing organization, always sent with its `system` (see [identifier slices](#identifier-slices));
- the `status` of the record;
- the `category` of the item, including the blood product type when the item is a blood product;
- the product the item is stock of (`productReference`);
- the names of the item (`name`), each with its type (trade name / alias / original name / preferred), language and text;
- the organizations responsible for the item and their role, such as manufacturer, distributor or supplier (`responsibleOrganization`);
- the national inventory status of the item (`inventoryStatus`), such as accepted, quarantine, available, reserved, issued or expired;
- the unit the item is counted in (`baseUnit`) and the amount in one item (`netContent`);
- the physical instance (`instance`): its identifier, lot number and expiry date, the patient or organization it is held for, and the [Location](StructureDefinition-uz-core-location.html) it is stored at.

### Two statuses

An inventory item has two status elements that answer different questions:

| Element | Answers | Values |
|---|---|---|
| [`status`](#k-InventoryItem.status) | Is this record in use? | active / inactive / entered-in-error / unknown |
| [`inventoryStatus`](#k-InventoryItem.inventoryStatus) | Where is the item in the stock workflow? | the national [inventory status](ValueSet-inventoryitem-inventory-status-vs.html) list, such as accepted, quarantine, available, reserved, issued, expired or discarded |

A unit that has expired keeps `status` `active` (the record is still valid) and moves `inventoryStatus` to `expired`. Set `status` to `inactive` only when the record itself is no longer used. The product's own [`productStatus`](StructureDefinition-uz-core-biologically-derived-product.html) only says whether a blood component is available at all; its stock state is recorded here.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a blood unit reserved for a patient and a batch of tablets in a warehouse. Each one validates against this profile. The complete reference instance is the [red blood cell stock item](InventoryItem-example-inventory-item-rbc.html).

#### The smallest InventoryItem you should send

`status` is the only mandatory element. Every UZ Core resource also names its profile in `meta.profile`, which tells the server which rules to validate against. An inventory item is only useful when it says what it is, so add its `category` and the product it holds. This much passes validation:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ] }
  ],
  "productReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
}
```

`category` repeats. A code from the [blood product type](ValueSet-blood-product-type-snomed-vs.html) value set fills the blood product type slice, whose binding is `required`; other categories may sit alongside it. `status` uses HL7 codes, whose Uzbek and Russian displays come from a DHP supplement, so you can leave `display` out.

#### A blood unit reserved for a patient

A blood station holds a unit of red blood cells on a cold storage shelf and reserves it for a named patient. `instance` describes the physical unit: its unit number, expiry date, the patient it is held for and where it is stored. `baseUnit` says the item is counted in units of blood, and `netContent` gives the volume of one unit:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "BB-INV-2025-004821" }
  ],
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ] }
  ],
  "name": [
    {
      "nameType": { "system": "http://hl7.org/fhir/inventoryitem-nametype", "code": "alias" },
      "language": "en",
      "name": "Red Blood Cells, Leukocytes Reduced"
    }
  ],
  "responsibleOrganization": [
    {
      "role": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-responsible-organization-role-cs",
            "code": "manufacturer"
          }
        ]
      },
      "organization": { "reference": "Organization/andijan-station" }
    }
  ],
  "inventoryStatus": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
          "code": "reserved"
        }
      ]
    }
  ],
  "baseUnit": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "258768008", "display": "Units of blood" } ]
  },
  "netContent": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "instance": {
    "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-COMP-2026-0001" } ],
    "expiry": "2026-10-15",
    "subject": { "reference": "Patient/example-salim" },
    "location": { "reference": "Location/example-cold-storage-shelf" }
  },
  "productReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
}
```

The responsible organization role and the inventory status code systems are Uzbek-first, with Russian and English designations; send a `display` only when it matches the resource `language`. `name.nameType` uses HL7 codes. The unit number in `instance.identifier` is the same [blood unit number](NamingSystem-uzb-blood-unit-number.html) the [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html#identifier-slices) carries. `instance` appears at most once, so each physical unit or batch that must be tracked on its own is a separate inventory item.

#### The inventory item number {#identifier-slices}

`identifier` is sliced by its `system` URI, so the system must match exactly:

| Identifier | `system` | Issued by |
|---|---|---|
| [Inventory item number](NamingSystem-uzb-inventory-item-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/inventory-item` | The organization that manages the stock |

This number identifies the inventory record. Identifiers of the physical unit, such as a blood unit number, go in `instance.identifier`.

#### A batch of tablets in a warehouse

A hospital holds 1,200 paracetamol tablets from one batch in its central warehouse. The item is stock of a [Medication](StructureDefinition-uz-core-medication.html), `instance.subject` is the hospital that holds it, and the batch is identified by its lot number:

```json
{
  "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "TDH-WH-2026-0315" }
  ],
  "status": "active",
  "name": [
    {
      "nameType": { "system": "http://hl7.org/fhir/inventoryitem-nametype", "code": "trade-name" },
      "language": "en",
      "name": "Paracetamol 500 mg tablets"
    }
  ],
  "responsibleOrganization": [
    {
      "role": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-responsible-organization-role-cs",
            "code": "supplier"
          }
        ]
      },
      "organization": { "reference": "Organization/example-organization" }
    }
  ],
  "inventoryStatus": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs",
          "code": "available"
        }
      ]
    }
  ],
  "netContent": { "value": 1200, "unit": "tablets" },
  "instance": {
    "lotNumber": "LOT20241201",
    "expiry": "2027-12-01",
    "subject": { "reference": "Organization/tashkent-diseases-hospital" },
    "location": { "reference": "Location/example-central-warehouse" }
  },
  "productReference": { "reference": "Medication/example-medication" }
}
```

A medication item has no blood product type, so it carries no `category` here. `productReference` points to a [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), NutritionProduct or [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html). When stock moves to another location, a [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) records the transfer and `instance.location` is updated.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
