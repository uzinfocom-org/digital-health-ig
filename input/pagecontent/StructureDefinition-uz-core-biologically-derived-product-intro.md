UZ Core BiologicallyDerivedProduct describes material of human origin intended for transfusion or transplantation: a unit of donated whole blood, a red blood cell, plasma or platelet component prepared from it, or tissues and cells. It records what the product is, its unit number and the donation it comes from, the product it was prepared from, the blood service that processed it, when it was collected, when it expires, how it must be stored, and its blood group, volume and hematocrit. A [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) points to the product when it is delivered to a hospital, an [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) when it is held in stock, a [SupplyRequest](StructureDefinition-uz-core-supply-request.html) can ask for it, and an [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) can name it as the suspected cause of a transfusion reaction. Each unit is identified by its unit number, so you should [search for an existing product](#finding) before creating a new one.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core BiologicallyDerivedProduct Must Have

The base BiologicallyDerivedProduct resource has no mandatory elements, and this profile adds none. A unit number and a donation number must each carry their `system` and `value`, and each `property` must carry its type and value.

#### Each UZ Core BiologicallyDerivedProduct Must Support

- the unit number assigned by the collecting or processing blood service, always sent with its `system` and `value` (see [identifier slices](#identifier-slices));
- the donation number the product comes from (`biologicalSourceEvent`), with its `system` and `value`;
- the broad `productCategory` (organ / tissue / fluid / cells / biological agent) and the `productCode`, the blood product type;
- the product or products it was prepared from (`parent`), for a processed or pooled component;
- the `productStatus` (available / unavailable);
- the `expirationDate`;
- the collection: the donor or source organization (`collection.source`), the practitioner who collected it (`collection.collector`) and when (`collection.collected[x]`);
- the blood service that processed the product (`processingFacility`);
- the portion or dose number, such as 2/3, when one product is split (`division`);
- the storage temperature range (`storageTempRequirements`);
- the [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) the product was obtained or issued for (`request`);
- the properties of the product: its ABO group, RhD type, volume and hematocrit (`property`).

### Finding an existing BiologicallyDerivedProduct {#finding}

A blood unit is created once by the blood service and then referred to by every delivery, stock record and transfusion, so look it up before you create it. `|` separates the system from the value and is URL-encoded as `%7C`:

```
# by unit number - the reliable match
GET [base]/BiologicallyDerivedProduct?identifier=https://dhp.uz/fhir/core/sid/prd/uz/blood/unit|BB-COMP-2026-0001

# every product from one donation, the whole blood unit and its components
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation|DON-2025-0088231

# by product type and availability
GET [base]/BiologicallyDerivedProduct?code=http://snomed.info/sct|126251004&product-status=available
GET [base]/BiologicallyDerivedProduct?product-category=cells

# products issued for a transfusion order
GET [base]/BiologicallyDerivedProduct?request=ServiceRequest/[id]
```

A processed component keeps the donation number of its source product, so a donation number search returns the whole blood unit and every component prepared from it. The [Quick Start](#quick-start) at the bottom of the page lists the remaining search parameters.

### Building the JSON, step by step

The examples below go from the smallest useful instance to a whole blood donation and a component prepared from it. Each one validates against this profile. The complete reference instances are the [whole blood donation](BiologicallyDerivedProduct-example-blood-donation-product.html) and the [red blood cell component](BiologicallyDerivedProduct-example-blood-component-product.html).

#### The smallest BiologicallyDerivedProduct you should send

The profile makes nothing mandatory, but every UZ Core resource names its profile in `meta.profile`, which tells the server which rules to validate against. A product is only useful when it says what it is and whether it is available. This much passes validation:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "fluid" },
  "productCode": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "88487009", "display": "Human whole blood product" } ]
  },
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" }
}
```

`productCategory` and `productStatus` use HL7 codes. Their English displays come from the base code systems and their Uzbek and Russian ones from DHP supplements, so you can leave `display` out. `productCode` takes a SNOMED CT code from the [blood product type](ValueSet-blood-product-type-snomed-vs.html) value set; the binding is `extensible`, so tissues and cells may use other codes.

#### A whole blood donation

A blood station collects a unit of whole blood. The unit gets its own unit number, the donation gets a donation number, and the properties record the blood group, volume and hematocrit. A direct donation has no `parent`:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "fluid" },
  "productCode": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "88487009", "display": "Human whole blood product" } ]
  },
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-DON-2026-00123" } ],
  "biologicalSourceEvent": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "processingFacility": [ { "reference": "Organization/andijan-station" } ],
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  "expirationDate": "2026-10-20T08:00:00+05:00",
  "collection": {
    "collector": { "reference": "Practitioner/example-practitioner" },
    "collectedDateTime": "2026-09-15T08:00:00+05:00"
  },
  "storageTempRequirements": {
    "low": { "value": 2, "unit": "°C", "system": "http://unitsofmeasure.org", "code": "Cel" },
    "high": { "value": 6, "unit": "°C", "system": "http://unitsofmeasure.org", "code": "Cel" }
  },
  "property": [
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "63915006" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "115678000" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "165747007", "display": "RhD positive" } ]
      }
    },
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "118565006" } ] },
      "valueQuantity": { "value": 450, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" }
    },
    {
      "type": { "coding": [ { "system": "http://loinc.org", "code": "4544-3" } ] },
      "valueQuantity": { "value": 40, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

`property` is sliced by its `type`:

| Property | `type` | Value |
|---|---|---|
| ABO group | SNOMED CT `63915006` (ABO blood group system) | `valueCodeableConcept` from the [blood group](ValueSet-blood-group-vs.html) value set |
| RhD type | SNOMED CT `115678000` (Rh blood group system) | `valueCodeableConcept` from the [RhD type](ValueSet-blood-rh-vs.html) value set |
| Volume | SNOMED CT `118565006` (Volume) | `valueQuantity` in UCUM, such as `mL` |
| Hematocrit | LOINC `4544-3` (Hematocrit) | `valueQuantity` in `%` |

The blood group and RhD value bindings are `required`. `collection.source` names the donor ([Patient](StructureDefinition-uz-core-patient.html)) or the [Organization](StructureDefinition-uz-core-organization.html) the material came from; leave it out when the donor is not recorded in the platform. Never put a donor identifier in `biologicalSourceEvent`.

#### The unit and donation numbers {#identifier-slices}

Both numbers are matched by their `system` URI, so the system must match exactly:

| Number | Element | `system` | Issued by |
|---|---|---|---|
| [Blood unit number](NamingSystem-uzb-blood-unit-number.html) | `identifier` | `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit` | The collecting or processing blood service |
| [Blood donation number](NamingSystem-uzb-blood-donation-number.html) | `biologicalSourceEvent` | `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation` | The collecting blood service |

Every product, including each component, gets its own unit number and keeps it for its whole life. A component prepared from a donation keeps the donation number of its source, which links all products of one donation.

#### A component prepared from the donation

The blood station prepares leukocyte-reduced red blood cells from the whole blood unit, for the patient's transfusion order. The component has its own unit number, keeps the donation number, and points to the whole blood unit in `parent`:

```json
{
  "resourceType": "BiologicallyDerivedProduct",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologically-derived-product"] },
  "productCategory": { "system": "http://hl7.org/fhir/product-category", "code": "cells" },
  "productCode": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "126251004", "display": "Leukocyte reduced red blood cells, human" }
    ]
  },
  "parent": [ { "reference": "BiologicallyDerivedProduct/example-blood-donation-product" } ],
  "request": [ { "reference": "ServiceRequest/transfusion-order-01" } ],
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/unit", "value": "BB-COMP-2026-0001" } ],
  "biologicalSourceEvent": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "processingFacility": [ { "reference": "Organization/andijan-station" } ],
  "productStatus": { "system": "http://hl7.org/fhir/biologicallyderived-product-status", "code": "available" },
  "expirationDate": "2026-10-15T23:59:00+05:00",
  "property": [
    {
      "type": { "coding": [ { "system": "http://snomed.info/sct", "code": "118565006" } ] },
      "valueQuantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" }
    },
    {
      "type": { "coding": [ { "system": "http://loinc.org", "code": "4544-3" } ] },
      "valueQuantity": { "value": 60, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

Direct donations, including apheresis plasma and platelets, have no `parent`. A pooled product lists every unit in the pool, and cryoprecipitate points to its source plasma. When one component is split into portions, `division` gives the portion number, such as `2/3`. `productStatus` only says whether the product is available; its detailed stock state, such as quarantine, reserved or issued, is recorded in the [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) that holds it.

For example API calls and the search-before-create flow, see the [Quick Start](#quick-start) at the bottom of this page.
