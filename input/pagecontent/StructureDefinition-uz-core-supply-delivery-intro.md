UZ Core SupplyDelivery records that supplies were handed over: a blood component sent from a blood service to a hospital for a patient, a batch of medications or devices delivered to a health facility, or stock moved from one warehouse to another inside the same organization. It says what was supplied and how much, who sent it and from which location, where it went and who received it, and when. A delivery usually fulfils a [SupplyRequest](StructureDefinition-uz-core-supply-request.html) and can be part of a larger delivery or a contract. The supplied item is a code or a reference to a [Medication](StructureDefinition-uz-core-medication.html), [Device](StructureDefinition-uz-core-device.html), [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html), Substance, NutritionProduct or InventoryItem. A [CarePlan](StructureDefinition-uz-core-careplan.html) points to a delivery in `activity.performedActivity` when the delivery carries out a planned activity.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core SupplyDelivery Must Have

The base SupplyDelivery resource has no mandatory elements, and this profile adds none. A delivery number must carry its `system`, and the deliver-from extension must carry a location.

#### Each UZ Core SupplyDelivery Must Support

- the delivery number assigned by the supplier, always sent with its `system` (see [identifier slices](#identifier-slices));
- the [SupplyRequest](StructureDefinition-uz-core-supply-request.html) the delivery fulfils (`basedOn`), and a larger delivery or contract it is part of (`partOf`);
- the `status` of the delivery (in-progress / completed / abandoned / entered-in-error);
- the `patient` the supplies are for, when they are for one patient;
- the `type` of item supplied (medication / device / biologically derived product);
- the supplied item and its `quantity`;
- when the delivery happened (`occurrence[x]`);
- the `supplier`, the location the items were sent from (the deliver-from extension), the `destination` and the `receiver`.

### Who sent it, from where, and who received it where

Each end of a delivery, sending and receiving, has its own element for who and for where:

| | Who | Where |
|---|---|---|
| Sending end | [`supplier`](#k-SupplyDelivery.supplier): the organization, practitioner or role responsible for the delivery | the [deliver-from](StructureDefinition-supplydelivery-deliver-from.html) extension: the [Location](StructureDefinition-uz-core-location.html) the items left from, such as the sending warehouse |
| Receiving end | [`receiver`](#k-SupplyDelivery.receiver): the organization or person who accepted the items | [`destination`](#k-SupplyDelivery.destination): the [Location](StructureDefinition-uz-core-location.html) the items were delivered to |

Base FHIR SupplyDelivery has no element for the sending location, so UZ Core adds the deliver-from extension. It is the delivery counterpart of `SupplyRequest.deliverFrom`: the request states where the items should come from, the delivery where they actually came from. In a transfer between two warehouses of one hospital, `supplier` and `receiver` are the same organization and only the two locations tell the delivery apart.

### Building the JSON, step by step

The examples below go from the smallest useful instance to a transfer between warehouses. Each one validates against this profile. The complete reference instances are the [blood component delivery](SupplyDelivery-example-blood-product-supply-delivery.html) and the [warehouse transfer](SupplyDelivery-example-warehouse-transfer-supply-delivery.html).

#### The smallest SupplyDelivery you should send

The profile makes nothing mandatory, but every UZ Core resource names its profile in `meta.profile`, which tells the server which rules to validate against. A delivery is only useful with its `status`, the `type` of item and what was supplied. This much passes validation:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "status": "completed",
  "type": {
    "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 200, "unit": "tablets" },
      "itemReference": { "reference": "Medication/example-medication" }
    }
  ]
}
```

`status` and `type` use HL7 codes. Their English displays come from the base code systems and their Uzbek and Russian ones from DHP supplements, so you can leave `display` out. `suppliedItem.item[x]` is either `itemCodeableConcept` or `itemReference`; use the reference when the item is recorded as its own resource.

#### A blood component delivered for a patient

A blood service delivers a red blood cell unit to a hospital for a named patient. The delivery number from the blood service goes in `identifier`, `basedOn` points to the hospital's [request](SupplyRequest-example-supply-request.html), and `occurrencePeriod` covers the time from dispatch to handover:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "DEL-2026-0001" }
  ],
  "basedOn": [ { "reference": "SupplyRequest/example-supply-request" } ],
  "status": "completed",
  "patient": { "reference": "Patient/example-salim" },
  "type": {
    "coding": [
      { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "biologicallyderivedproduct" }
    ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
      "itemReference": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" }
    }
  ],
  "occurrencePeriod": { "start": "2026-09-15T09:00:00+05:00", "end": "2026-09-15T10:00:00+05:00" },
  "supplier": { "reference": "Organization/andijan-station" },
  "destination": { "reference": "Location/example-location" },
  "receiver": [ { "reference": "Organization/tashkent-diseases-hospital" } ]
}
```

`receiver` repeats and `destination` does not. `occurrence[x]` is a `dateTime` for a single moment, a `Period` for a delivery that takes time, or a `Timing`.

#### The delivery number {#identifier-slices}

`identifier` is sliced by its `system` URI, so the system must match exactly:

| Identifier | `system` | Issued by |
|---|---|---|
| [Delivery number](NamingSystem-uzb-supply-delivery-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery` | The supplier, such as the blood service issuing blood components |

#### A transfer between warehouses

A hospital moves paracetamol from its central warehouse to the storeroom of its surgical department. The hospital is both `supplier` and `receiver`, so the sending warehouse goes in the deliver-from extension and the storeroom in `destination`:

```json
{
  "resourceType": "SupplyDelivery",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-delivery"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/supplydelivery-deliver-from",
      "valueReference": { "reference": "Location/example-central-warehouse" }
    }
  ],
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-delivery", "value": "TR-2026-0042" }
  ],
  "status": "completed",
  "type": {
    "coding": [ { "system": "http://hl7.org/fhir/supplydelivery-supplyitemtype", "code": "medication" } ]
  },
  "suppliedItem": [
    {
      "quantity": { "value": 200, "unit": "tablets" },
      "itemReference": { "reference": "Medication/example-medication" }
    }
  ],
  "occurrenceDateTime": "2026-10-28T11:30:00+05:00",
  "supplier": { "reference": "Organization/tashkent-diseases-hospital" },
  "destination": { "reference": "Location/example-surgery-storeroom" },
  "receiver": [ { "reference": "Organization/tashkent-diseases-hospital" } ]
}
```

The extension's value is a `Reference` to a [UZ Core Location](StructureDefinition-uz-core-location.html), and it appears at most once. A transfer has no `patient`. Leave out `basedOn` when there was no request for the transfer.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
