This workflow shows how a healthcare organization requests supplies, how the supplier records the delivery, and how the stock that arrives is kept and counted. Four resources carry it: a [SupplyRequest](StructureDefinition-uz-core-supply-request.html) says *what* is needed, how much and for whom; a [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) records *what was handed over*; an [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) is an item held in stock and where it is in the stock workflow; an [InventoryReport](StructureDefinition-uz-core-inventoryreport.html) is a count of stock at a location.

Actors: the requesting hospital (a ward, pharmacy or warehouse); the supplier (a blood service, the hospital's own central warehouse, or a distributor); the platform (DHP); health administration bodies, which read the data for analytics.

Blood components follow the same pattern. The blood service side of it, from donation to transfusion, is in the [Blood Service](https://dhp.uz/fhir/integrations/en/blood-service.html) flow of the DHP Integrations IG: see [Keeping stock](https://dhp.uz/fhir/integrations/en/blood-service.html#stock) and [Requesting and delivering components](https://dhp.uz/fhir/integrations/en/blood-service.html#supplying).

<div>{% include supplies-sequence.svg %}</div><br clear="all"/>

### 1. Request the supplies

The hospital creates a `SupplyRequest`: the item in `item`, the amount in `quantity`, the organization that should supply it in `supplier`, and where it should go in `deliverTo`. Its own request number goes in `identifier` with the system `https://dhp.uz/fhir/core/sid/doc/uz/supply-request`. `category` says which kind of request it is, from the [request type](CodeSystem-request-type-cs.html) code system:

| `category` code | Meaning | Typical content |
|---|---|---|
| `req-type-0001-0001` | Stock replenishment | no `deliverFor`, `requester` is the hospital, `deliverTo` is a warehouse [Location](StructureDefinition-uz-core-location.html) |
| `req-type-0001-0002` | Named (patient-specific) | `deliverFor` is the patient, `basedOn` is the clinician's [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) |
| `req-type-0001-0003` | Between institutions | supplies moved from one institution to another |

A named request for red blood cells:

```
POST [base]/SupplyRequest
{ "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0001" }],
  "basedOn": [{ "reference": "ServiceRequest/[id]" }],
  "status": "active",
  "category": { "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0002" }] },
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/[id]" },
  "item": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" }] } },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "requester": { "reference": "Practitioner/[id]" },
  "supplier": [{ "reference": "Organization/[id]" }],
  "deliverTo": { "reference": "Organization/[id]" } }
```

For a blood component, two `parameter` entries give the blood group the units must match: code `63915006` (ABO blood group system) with a value such as `112144000` (Blood group A), and code `115678000` (Rh blood group system) with a value such as `165747007` (RhD positive). `priority` is `routine`, `urgent`, `asap` or `stat`. The [profile page](StructureDefinition-uz-core-supply-request.html) builds a full named request and a stock replenishment step by step; the complete example is the [request for red blood cells](SupplyRequest-example-supply-request.html).

### 2. Group requests placed together

A SupplyRequest holds one item. When a hospital needs several items together, such as red blood cells and `346447007` (Fresh frozen plasma) for the same operation, it sends one request per item and gives them all the same group number in the [group identifier](StructureDefinition-supplyrequest-group-identifier.html) extension, next to each request's own request number:

```
"extension": [{
  "url": "https://dhp.uz/fhir/core/StructureDefinition/supplyrequest-group-identifier",
  "valueIdentifier": { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-group", "value": "GR-0001",
                       "assigner": { "reference": "Organization/[id]" } } }]
```

- Use a new group number for each new set, and never reuse one. Once the requests are sent, the group is closed: an extra item later goes in a new request with a new group number.
- Each request keeps its own status. Cancelling the plasma does not cancel the red blood cells.
- To read, update or link to one request, use its request number, not the group number.

See the grouped [red blood cell](SupplyRequest-example-supply-request-group-red-cells.html) and [fresh frozen plasma](SupplyRequest-example-supply-request-group-plasma.html) examples.

> The guide defines a [`group-identifier`](SearchParameter-uz-core-supplyrequest-group-identifier.html) search parameter for finding a whole group, but neither the sandbox nor the production server lists it in its CapabilityStatement yet. Until it does, find the requests by request number, `patient` or `supplier`.

### 3. Pick up the requests

The supplier polls for open requests addressed to it:

```
GET [base]/SupplyRequest?supplier=Organization/[id]&status=active
GET [base]/SupplyRequest?supplier=Organization/[id]&category=https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs|req-type-0001-0002
```

The server also accepts `patient`, `requester`, `date` (when the request was made) and `identifier`. Encode `|` as `%7C`.

### 4. Deliver

The supplier records the delivery as a `SupplyDelivery`, with its own delivery number (system `https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery`) and the request it fulfils in `basedOn`. When one delivery answers several requests, such as a grouped set, `basedOn` lists all of them. `supplier` and `receiver` say who sent and who accepted the items; the [deliver-from](StructureDefinition-supplydelivery-deliver-from.html) extension and `destination` say from which [Location](StructureDefinition-uz-core-location.html) to which.

```
POST [base]/SupplyDelivery
{ "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
                  "valueReference": { "reference": "Location/[id]" } }],
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "DEL-2026-0001" }],
  "basedOn": [{ "reference": "SupplyRequest/[id]" }],
  "status": "in-progress",
  "patient": { "reference": "Patient/[id]" },
  "type": { "coding": [{ "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "biologicallyderivedproduct", "display": "Biologically Derived Product" }] },
  "suppliedItem": [{ "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
                     "itemReference": { "reference": "BiologicallyDerivedProduct/[id]" } }],
  "supplier": { "reference": "Organization/[id]" },
  "destination": { "reference": "Location/[id]" },
  "receiver": [{ "reference": "Organization/[id]" }] }
```

`type` is `medication` (Medication), `device` (Device) or `biologicallyderivedproduct` (Biologically Derived Product). `suppliedItem.itemReference` can also point at an `InventoryItem`. When the items are handed over, the supplier updates the delivery to `completed`, and the hospital sets the request to `completed` (or `cancelled` if it is no longer needed). Updates are a full `PUT` with the `ETag` from your last read in `If-Match`; a stale version is rejected with `412 Precondition Failed`. See [Concurrency](api-access.html#concurrency).

A move between two warehouses of the same hospital is a SupplyDelivery too: `supplier` and `receiver` are the same organization, and only the deliver-from extension and `destination` tell the locations apart. Leave out `basedOn` when nobody requested the move. See the [warehouse transfer](SupplyDelivery-example-warehouse-transfer-supply-delivery.html) example.

| Resource | Status flow |
|----------|-------------|
| `SupplyRequest` | `draft` &rarr; `active` &rarr; `completed`; `suspended` while on hold; `cancelled` if no longer needed |
| `SupplyDelivery` | `in-progress` &rarr; `completed`; `abandoned` if the delivery did not happen |

Both use `entered-in-error` for records created by mistake.

### 5. Keep the stock

Each item or batch held in stock is an `InventoryItem`: the product in `productReference` (a [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) or NutritionProduct), the managing organization's inventory number (system `https://dhp.uz/fhir/core/sid/doc/uz/inventory-item`), and the physical unit in `instance`: lot number, expiry, the patient or organization it is held for, and the `Location` it is stored at.

```
POST [base]/InventoryItem
{ "resourceType": "InventoryItem",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-inventoryitem"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item", "value": "TDH-WH-2026-0315" }],
  "status": "active",
  "inventoryStatus": [{ "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inventoryitem-inventory-status-cs", "code": "available" }] }],
  "netContent": { "value": 1200, "unit": "tablets" },
  "instance": { "lotNumber": "LOT20241201", "expiry": "2027-12-01",
                "subject": { "reference": "Organization/[id]" },
                "location": { "reference": "Location/[id]" } },
  "productReference": { "reference": "Medication/[id]" } }
```

An inventory item has two statuses. `status` says whether the record is in use (`active`, `inactive`, `entered-in-error`, `unknown`). `inventoryStatus` says where the item is in the stock workflow, from the national [inventory status](ValueSet-inventoryitem-inventory-status-vs.html) list. Common values:

| `inventoryStatus` code | Meaning |
|---|---|
| `accepted` | Accepted |
| `quarantine` / `awaiting-tests` | Quarantine / Awaiting tests |
| `available` | Available |
| `reserved` | Reserved, for example a blood unit held for a patient in `instance.subject` |
| `issued` | Issued |
| `expired` &rarr; `discarded` | Expired &rarr; Discarded |

An expired unit keeps `status = active` and moves `inventoryStatus` to `expired`. When stock moves to another location, the SupplyDelivery records the move and `instance.location` is updated. To store the delivery and the stock change together, send them as one transaction Bundle. See [General guidance &rarr; Bundles](general-guidance.html#bundles-document-vs-transaction-vs-searchset).

> The guide does not yet say whether, after a delivery between two organizations, the receiver creates its own InventoryItem or the supplier's record is updated. Agree this with the DHP team before relying on either.

### 6. Count the stock (planned)

A stock count at a location is an `InventoryReport`. `countType = snapshot` states how much is on hand; `countType = difference` states how much was added or removed, with `operationType` such as `invop-0001-00001` (Addition) and a reason in `operationTypeReason` such as `invrs-0001-00004` (New receipt) or `invrs-0001-00010` (Write-off: expired). Each `inventoryListing` names the `location` counted.

> The InventoryReport profile is published, but neither the sandbox nor the production server accepts InventoryReport yet: it is not in their CapabilityStatements. Until it is, current stock is read from InventoryItem.

### 7. Read it back

```
GET [base]/SupplyRequest?patient=Patient/[id]
GET [base]/SupplyRequest?requester=Organization/[id]&date=ge2026-11-01
GET [base]/SupplyDelivery?receiver=Organization/[id]&status=in-progress
GET [base]/SupplyDelivery?patient=Patient/[id]
GET [base]/InventoryItem?subject=Patient/[id]
GET [base]/InventoryItem?identifier=https://dhp.uz/fhir/core/sid/doc/uz/inventory-item|TDH-WH-2026-0315
```

The servers have no search parameter for a delivery's `basedOn`, an item's `inventoryStatus` or its storage location. Search by `receiver`, `patient` or `subject` and filter on those elements in your client. Health administration bodies read the same resources to build availability by region and organization.

### Equipment

Medical equipment is a [Device](StructureDefinition-uz-core-device.html): `owner` is the organization that holds it, `location` where it stands, and `availabilityStatus` whether it can be used now: `available` (Available), `damaged` (Damaged), `lost` (Lost) or `destroyed` (Destroyed). Faulty equipment is a Device with `availabilityStatus = damaged`. The Device profile is published, but Device is not yet in the servers' CapabilityStatements.

Consolidation of other critical stock (intensive care beds, doctors available by specialty) and the list of medicines and devices the state provides free or on preferential terms are part of the [Supplies](components.html#supplies) component but have no workflow in this guide yet.

### Related

- Profiles: [SupplyRequest](StructureDefinition-uz-core-supply-request.html) &middot; [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) &middot; [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) &middot; [InventoryReport](StructureDefinition-uz-core-inventoryreport.html) &middot; [Device](StructureDefinition-uz-core-device.html) &middot; [Location](StructureDefinition-uz-core-location.html)
- Component: [Supplies](components.html#supplies)
- DHP Integrations IG: [Blood Service](https://dhp.uz/fhir/integrations/en/blood-service.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
