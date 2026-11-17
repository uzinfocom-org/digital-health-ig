UZ Core DeviceRequest records an order for a medical device to be supplied to a patient or used for them: an intrauterine device for contraception, a hearing aid, crutches after a fracture, or a home oxygen concentrator. It says which device is requested and how many, with which characteristics (such as its size), for which patient, who ordered it and who is asked to provide it, when, and why. The requested device is a reference to a [UZ Core Device](StructureDefinition-uz-core-device.html) or a code for the kind of device. A [CarePlan](StructureDefinition-uz-core-careplan.html) points to a device request in `activity.plannedActivityReference` when the request is part of a plan.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core DeviceRequest Must Have

- the `intent` of the request (proposal / plan / order and others);
- the requested device (`code`);
- the `subject`: the [patient](StructureDefinition-uz-core-patient.html) the device is for.

These three are mandatory in the base DeviceRequest resource; this profile adds no further mandatory elements.

#### Each UZ Core DeviceRequest Must Support

- the request's identifiers (`identifier`), and a `groupIdentifier` shared by requests ordered together;
- the earlier request this one `replaces`;
- the `status` of the request (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- the `priority` (routine / urgent / asap / stat), and `doNotPerform` when the request forbids the device;
- how many devices are requested (`quantity`) and their requested characteristics (`parameter`);
- the [encounter](StructureDefinition-uz-core-encounter.html) during which the request was made;
- when the device should be supplied or used (`occurrence[x]`), and when the request was written (`authoredOn`);
- the `requester` and the `performer` asked to provide the device;
- the `reason` for the request, and whether the device is only needed as needed (`asNeeded`, `asNeededFor`);
- the patient's `insurance`, `supportingInfo`, `note` and the request's `relevantHistory`.

### Which device, and with which characteristics

`code` is a `CodeableReference`, so the device can be given in two ways:

| Use | When |
|---|---|
| `code.reference` to a [UZ Core Device](StructureDefinition-uz-core-device.html) | A particular device, or a device model the facility records as its own resource |
| `code.concept` with a code | Only the kind of device is known, and the supplier chooses the actual one |

`parameter` repeats, one entry per characteristic. `parameter.code` says which characteristic it is and is bound (extensible) to [Device request parameter](ValueSet-device-request-parameter-code-vs.html):

| Code ([SNOMED CT](https://browser.ihtsdotools.org/)) | Display | Uzbek | Russian |
|---|---|---|---|
| `410668003` | Length | Uzunlik | Длина |
| `103355008` | Width | Kenglik | Ширина |
| `81827009` | Diameter | Diametr | Диаметр |

Use another code only when none of these fit. `parameter.value[x]` is a `Quantity` for a measured size, a `Range` for an acceptable range, a `CodeableConcept` for a coded setting or a `boolean`. Send a `Quantity` with its UCUM `system` and `code`.

### Building the JSON, step by step

The examples below go from the smallest valid instance to a complete order. Each one validates against this profile. The complete reference instance is the [copper IUD order](DeviceRequest-example-devicerequest-iud.html).

#### The smallest DeviceRequest you can send

Every UZ Core resource names its profile in `meta.profile`, which tells the server which rules to validate against. A device request also needs its `intent`, the requested device and the patient. Add `status` so the receiver knows whether the request is in force:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "subject": { "reference": "Patient/example-nodira" }
}
```

`status`, `intent` and `priority` use HL7 codes. Their English displays come from the base code systems and their Uzbek and Russian ones from DHP supplements, so you can leave `display` out.

#### An order for a copper IUD with its width

A gynaecologist orders one copper intrauterine device, 28 mm wide, for a patient who has chosen it for contraception. The device is to be inserted at the clinic on 20 November:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "priority": "routine",
  "doNotPerform": false,
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "quantity": 1,
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "103355008", "display": "Width" } ] },
      "valueQuantity": { "value": 28, "unit": "mm", "system": "http://unitsofmeasure.org", "code": "mm" }
    }
  ],
  "subject": { "reference": "Patient/example-nodira" },
  "occurrenceDateTime": "2026-11-20T09:00:00+05:00",
  "authoredOn": "2026-11-16T10:15:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": { "reference": { "reference": "Organization/example-organization" } },
  "reason": [
    { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "13197004", "display": "Uses contraception" } ] } }
  ],
  "asNeeded": false
}
```

`requester` is a [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), so the request records both the doctor and the facility they ordered from. `performer` is a `CodeableReference` to a [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) or an [Organization](StructureDefinition-uz-core-organization.html); unlike `requester`, its reference sits one level deeper, in `performer.reference`. `reason` repeats and works the same way: `concept` for a coded reason, `reference` to a [UZ Core Condition](StructureDefinition-uz-core-condition.html) when the diagnosis is recorded.

#### Changing or cancelling a request

A request is not edited into a different order. To change it, for example to a different size, create a new DeviceRequest that points to the old one in `replaces`, and set the old request's `status` to `revoked`. To cancel a request without a replacement, set its `status` to `revoked`. Use `entered-in-error` only when the request should never have existed.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
