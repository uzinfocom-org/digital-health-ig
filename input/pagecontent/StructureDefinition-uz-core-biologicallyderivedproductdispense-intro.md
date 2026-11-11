UZ Core BiologicallyDerivedProductDispense records that a [biologically derived product](StructureDefinition-uz-core-biologically-derived-product.html), such as a blood component, was issued for a [patient](StructureDefinition-uz-core-patient.html) to the care team that will use it. It says which product was issued and for whom, which order it fulfils, who took part, where the product left from and where it went, and when it was handed over. A dispense usually fulfils a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html). The transfusion itself is recorded as a [Procedure](StructureDefinition-uz-core-procedure.html), which can point to the dispense as supporting information.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core BiologicallyDerivedProductDispense Must Have

A `status`, the `product` that is dispensed and the `patient` it is intended for. All three are mandatory in the base resource. Each `performer` must name its `actor`, and the dispense number is always sent with its `system`.

#### Each UZ Core BiologicallyDerivedProductDispense Must Support

- the dispense number assigned by the issuing system, always sent with its `system` (see [identifier slices](#identifier-slices));
- the [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) the dispense fulfils (`basedOn`);
- the `status` of the dispense (preparation / in-progress / allocated / issued / unfulfilled / returned / entered-in-error / unknown);
- the `product` that is dispensed and the `patient` it is intended for;
- the practitioners who took part (`performer.actor`);
- when the product was actually handed over (`whenHandedOver`).

### Building the JSON, step by step

The examples below go from the smallest valid instance to a returned unit. Each one validates against this profile. The complete reference instances are the [minimal](BiologicallyDerivedProductDispense-example-bdp-dispense-minimal.html), [issued](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.html) and [returned](BiologicallyDerivedProductDispense-example-bdp-dispense-returned.html) dispenses.

#### The smallest BiologicallyDerivedProductDispense you can send

Every UZ Core resource names its profile in `meta.profile`, which tells the server which rules to validate against. Beyond that, the three mandatory elements are enough:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" }
}
```

`status` is a code from the HL7 dispense status list. Its English display comes from the base code system and its Uzbek and Russian ones from a DHP supplement. `product` is a `Reference` to a [UZ Core BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html) and `patient` a `Reference` to a [UZ Core Patient](StructureDefinition-uz-core-patient.html).

#### A blood component issued for a patient

A blood bank issues a unit for a patient against an order. The dispense number from the blood bank goes in `identifier`, `basedOn` points to the [order](ServiceRequest-example-bdp-dispense-request.html), `performer` names the practitioner who released the unit, `location` is where it was issued from and `destination` where it was sent:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense", "value": "ISS-2026-0002" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/example-bdp-dispense-request" } ],
  "status": "issued",
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" },
  "performer": [
    {
      "function": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-performer-function",
            "code": "release"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "location": { "reference": "Location/example-location-1" },
  "quantity": { "value": 263, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "preparedDate": "2026-09-20T10:15:00+05:00",
  "whenHandedOver": "2026-09-20T10:30:00+05:00",
  "destination": { "reference": "Location/example-location-2" }
}
```

`basedOn` and `performer` repeat; `location` and `destination` do not, and both are a `Reference` to a [UZ Core Location](StructureDefinition-uz-core-location.html). `performer.actor` is a `Reference` to a [UZ Core Practitioner](StructureDefinition-uz-core-practitioner.html). `performer.function` is a `CodeableConcept` with a code from the HL7 performer function list. `quantity` is the amount actually dispensed; a blood component is normally issued as a whole unit. `preparedDate` is when the product was selected or matched for this dispense, not when the source product was collected, and `whenHandedOver` is when it was actually dispatched or handed over.

#### The dispense number {#identifier-slices}

`identifier` is sliced by its `system` URI, so the system must match exactly:

| Identifier | `system` | Issued by |
|---|---|---|
| [Dispense number](NamingSystem-uzb-bdp-dispense-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense` | The system that issues the product, such as the blood bank |

A donation number or a product unit number identifies the product, not the dispense, and stays on the [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html).

#### A unit that was returned

Two days before the issue above, the same unit was issued for the same order and came back unused, so the `status` of that dispense became `returned`. This example also carries the optional codes: the relationship between donor and recipient, the type of matching that was done, and the function of the performer:

```json
{
  "resourceType": "BiologicallyDerivedProductDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-biologicallyderivedproductdispense"] },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/bdp-dispense", "value": "ISS-2026-0001" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/example-bdp-dispense-request" } ],
  "status": "returned",
  "originRelationshipType": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-origin-relationship",
        "code": "allogeneic"
      }
    ]
  },
  "product": { "reference": "BiologicallyDerivedProduct/example-blood-component-product" },
  "patient": { "reference": "Patient/example-salim" },
  "matchStatus": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-match-status",
        "code": "crossmatched"
      }
    ]
  },
  "performer": [
    {
      "function": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-performer-function",
            "code": "receipt"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "whenHandedOver": "2026-09-18T14:00:00+05:00"
}
```

`originRelationshipType`, `matchStatus` and `performer.function` are each a `CodeableConcept` with a code from the HL7 code system for that element; you can leave `display` out. `matchStatus` says which kind of matching was performed. The ABO and Rh compatibility results themselves are recorded in an Observation. The `status` describes the issue of the product, not the outcome of the transfusion: a transfusion that was stopped does not make the product `returned`, and its outcome belongs in the [Procedure](StructureDefinition-uz-core-procedure.html).

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
