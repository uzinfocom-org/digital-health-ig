UZ Core SupplyRequest records a request for supplies to be delivered: a hospital asking a blood service for red blood cells for a named patient, an order to replenish a hospital's stock of a blood component, or a transfer of supplies between institutions. It says what is needed and how much, how urgently, for whom, who asked, which organization should supply it, and where it should go. A named request is usually based on the clinician's transfusion order, a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), and it can be based on another SupplyRequest. The [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) that carries out the request points back to it in `basedOn`, and a [CarePlan](StructureDefinition-uz-core-careplan.html) can point to it as a planned activity.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core SupplyRequest Must Have

- the item requested (`item`);
- the quantity requested (`quantity`).

Both are mandatory in the base SupplyRequest resource; this profile adds no further mandatory elements. A request or contract number must carry its `system`, and each blood group parameter must carry both its code and its value.

#### Each UZ Core SupplyRequest Must Support

- the request number assigned by the requesting hospital and the number of the supply agreement it falls under, each sent with its `system` (see [identifier slices](#identifier-slices));
- the [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) or other SupplyRequest the request is based on (`basedOn`);
- the `status` of the request (draft / active / suspended / cancelled / completed / entered-in-error / unknown);
- the `category` of the request (stock replenishment / named, for one patient / between institutions);
- the `priority` (routine / urgent / asap / stat);
- the `patient` the supplies are for (`deliverFor`), for a named request;
- the item requested and its `quantity`;
- the ABO and RhD blood group the blood component must match (`parameter`);
- when the supplies are needed (`occurrence[x]`) and when the request was made (`authoredOn`);
- who made the request (`requester`) and which organization or service should supply it (`supplier`);
- the reason for the request, as a code or a reference to a [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) or [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) (`reason`);
- where the supplies should be delivered (`deliverTo`).

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a named request for a patient and a stock replenishment. Each one validates against this profile. The complete reference instance is the [request for red blood cells](SupplyRequest-example-supply-request.html).

#### The smallest SupplyRequest you should send

`item` and `quantity` are the only mandatory elements. Every UZ Core resource also names its profile in `meta.profile`, which tells the server which rules to validate against, and a request is only actionable with a `status`. This much passes validation:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "status": "active",
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ]
    }
  },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" }
}
```

`item` is a `CodeableReference`. A blood component is requested by its type, so its SNOMED CT code goes under `concept`, from the [blood product type](ValueSet-blood-product-type-snomed-vs.html) value set; that binding is `extensible`, so other supplies may use other codes. To request a specific recorded item, put a reference under `reference` instead. `status` uses HL7 codes, whose Uzbek and Russian displays come from a DHP supplement, so you can leave `display` out.

#### A named request for a patient

A hospital asks the Andijan blood station for two units of red blood cells for a named patient, under its supply agreement. The request is based on the clinician's [transfusion order](ServiceRequest-transfusion-order-01.html), `deliverFor` names the patient, and two `parameter` entries give the blood group the units must match:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0001" },
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-contract", "value": "AGR-2025-017" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/transfusion-order-01" } ],
  "status": "active",
  "category": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0002" }
    ]
  },
  "priority": "urgent",
  "deliverFor": { "reference": "Patient/example-salim" },
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "431069006", "display": "Packed red blood cells" } ]
    }
  },
  "quantity": { "value": 2, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "63915006" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "115678000" } ] },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "165747007", "display": "RhD positive" } ]
      }
    }
  ],
  "occurrenceDateTime": "2025-09-01T09:00:00+05:00",
  "authoredOn": "2025-08-31T14:20:00+05:00",
  "requester": { "reference": "Practitioner/example-practitioner" },
  "supplier": [ { "reference": "Organization/andijan-station" } ],
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "87522002", "display": "Iron deficiency anemia" } ]
      }
    }
  ],
  "deliverTo": { "reference": "Organization/tashkent-hospital" }
}
```

`parameter` is sliced by its `code`: SNOMED CT `63915006` (ABO blood group system) carries the ABO group from the [blood group](ValueSet-blood-group-vs.html) value set, and `115678000` (Rh blood group system) carries the RhD type from the [RhD type](ValueSet-blood-rh-vs.html) value set. Both value bindings are `required`. The `category` code system is Uzbek-first, with Russian and English designations; send a `display` only when it matches the resource `language`. `supplier` repeats, `deliverTo` does not. `reason` is a `CodeableReference`: a code under `concept`, or a reference to the diagnosis or test result under `reference`.

#### The request and contract numbers {#identifier-slices}

`identifier` is sliced by its `system` URI, so the system must match exactly:

| Identifier | `system` | Issued by |
|---|---|---|
| [Supply request number](NamingSystem-uzb-supply-request-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-request` | The requesting hospital |
| [Supply contract number](NamingSystem-uzb-supply-contract-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/supply-contract` | The party that issued the supply agreement between the hospital and the blood service |

The request number lets the blood service and the hospital match the request with the delivery that answers it; the delivery carries its own [delivery number](StructureDefinition-uz-core-supply-delivery.html#identifier-slices).

#### A stock replenishment

A hospital orders ten units of fresh frozen plasma for its stock, to be delivered to its central warehouse during the next week. A stock request has no `deliverFor` and no `basedOn`, and the requester is the hospital itself:

```json
{
  "resourceType": "SupplyRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-supply-request"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/supply-request", "value": "CK-0002" }
  ],
  "status": "active",
  "category": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/request-type-cs", "code": "req-type-0001-0001" }
    ]
  },
  "priority": "routine",
  "item": {
    "concept": {
      "coding": [ { "system": "http://snomed.info/sct", "code": "346447007" } ]
    }
  },
  "quantity": { "value": 10, "unit": "units", "system": "http://unitsofmeasure.org", "code": "1" },
  "occurrencePeriod": { "start": "2025-09-08", "end": "2025-09-12" },
  "authoredOn": "2025-09-01T10:00:00+05:00",
  "requester": { "reference": "Organization/tashkent-diseases-hospital" },
  "supplier": [ { "reference": "Organization/andijan-station" } ],
  "deliverTo": { "reference": "Location/example-central-warehouse" }
}
```

`occurrence[x]` is a `dateTime` for a single moment, a `Period` for a delivery window, or a `Timing` for repeated deliveries. `deliverTo` points to an [Organization](StructureDefinition-uz-core-organization.html), a [Location](StructureDefinition-uz-core-location.html) such as a warehouse, a [Patient](StructureDefinition-uz-core-patient.html) or a [RelatedPerson](StructureDefinition-uz-core-relatedperson.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
