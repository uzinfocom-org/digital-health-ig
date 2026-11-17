UZ Core DeviceRequest records an order for a medical device to be supplied to a patient or used for them: an intrauterine device for contraception, a hearing aid, crutches after a fracture, or a home oxygen concentrator. It says which device is requested and how many, with which characteristics (such as its size), for which patient, who ordered it and who is asked to provide it, when, and why. The requested device is a reference to a [UZ Core Device](StructureDefinition-uz-core-device.html) or a code for the kind of device. A [CarePlan](StructureDefinition-uz-core-careplan.html) points to a device request in `activity.plannedActivityReference` when the request is part of a plan.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core DeviceRequest Must Have

This profile adds no mandatory elements. The base resource requires an `intent`, the requested device (`code`) and the [patient](StructureDefinition-uz-core-patient.html) it is for (`subject`).

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

The requested device goes in [`code`](#k-DeviceRequest.code), either as a reference or as a code:

- `code.reference` points to a [UZ Core Device](StructureDefinition-uz-core-device.html) when you order a particular device or model.
- `code.concept` holds a code when only the kind of device matters and the supplier picks the actual one.

Add one `parameter` for each characteristic. `parameter.code` says which one it is: length (`410668003`), width (`103355008`) or diameter (`81827009`) from [Device request parameter](ValueSet-device-request-parameter-code-vs.html), or another SNOMED CT code if none of these fit. `parameter.value[x]` holds the value, usually a `Quantity` with its UCUM `system` and `code`.

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

#### A device ordered by kind, with a size

When only the kind of device matters, put a SNOMED CT code in `code.concept` and let the supplier pick the unit. A physiotherapist orders a replacement manual wheelchair for a patient with a disability. Any model will do if its seat is 44 to 48 cm wide:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "58938008", "display": "Wheelchair" } ] }
  },
  "quantity": 1,
  "parameter": [
    {
      "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "103355008", "display": "Width" } ] },
      "valueRange": {
        "low": { "value": 44, "unit": "cm", "system": "http://unitsofmeasure.org", "code": "cm" },
        "high": { "value": 48, "unit": "cm", "system": "http://unitsofmeasure.org", "code": "cm" }
      }
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-11-10T11:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-physiotherapist-role" },
  "reason": [ { "reference": { "reference": "Condition/example-disability" } } ]
}
```

`parameter.value[x]` is a `Range` here because any width in it is acceptable; use a `Quantity` for one exact size. The reference instance is the [wheelchair order](DeviceRequest-example-devicerequest-wheelchair.html).

#### A completed order for a particular copper IUD

At a consultation on 10 February a gynaecologist orders the copper intrauterine device the polyclinic has in stock, for a patient who has chosen it for contraception. The polyclinic inserted it on 18 February, so the order is now `completed`:

```json
{
  "resourceType": "DeviceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-devicerequest"] },
  "replaces": [ { "reference": "DeviceRequest/example-devicerequest-implant" } ],
  "status": "completed",
  "intent": "order",
  "priority": "routine",
  "doNotPerform": false,
  "code": { "reference": { "reference": "Device/example-copper-iud" } },
  "quantity": 1,
  "subject": { "reference": "Patient/example-nodira" },
  "encounter": { "reference": "Encounter/example-encounter-iud-consultation" },
  "occurrenceDateTime": "2026-02-18T09:00:00+05:00",
  "authoredOn": "2026-02-10T10:15:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": { "reference": { "reference": "Organization/xonobod-medical-association" } },
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "13197004", "display": "Uses contraception" } ]
      }
    }
  ],
  "asNeeded": false,
  "note": [ { "text": "Copper T 380A from the polyclinic stock; insertion booked for 18 February." } ]
}
```

`requester` is a [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), so the request records both the doctor and the facility they ordered from. `performer` is a `CodeableReference` to a [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) or an [Organization](StructureDefinition-uz-core-organization.html); unlike `requester`, its reference sits one level deeper, in `performer.reference`. `reason` repeats and works the same way: `concept` for a coded reason, `reference` to a [UZ Core Condition](StructureDefinition-uz-core-condition.html) when the diagnosis is recorded.

#### Changing or cancelling a request

A request is not edited into a different order. To change it, for example to a different size, create a new DeviceRequest that points to the old one in `replaces`, and set the old request's `status` to `revoked`. The copper IUD order above replaces an earlier [implant order](DeviceRequest-example-devicerequest-implant.html), revoked when the patient chose an IUD instead. To cancel a request without a replacement, set its `status` to `revoked`. Use `entered-in-error` only when the request should never have existed.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
