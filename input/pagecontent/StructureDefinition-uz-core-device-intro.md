UZ Core Device describes one physical medical device: a piece of hospital equipment such as a CT scanner, or a single item such as an intrauterine device. It records what the device is (a SNOMED CT type and a category), who made it and when, the model, serial and lot numbers that tell this unit apart, whether it is active and available, and the organization and location it belongs to. Other resources point to it when a device takes part in care. [Observation](StructureDefinition-uz-core-observation.html) uses `device` for the device that took the measurement, [Procedure](StructureDefinition-uz-core-procedure.html) for a performer or a subject, [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) for a suspected cause, and [SupplyRequest](StructureDefinition-uz-core-supply-request.html), [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html) and [InventoryItem](StructureDefinition-uz-core-inventoryitem.html) for the item supplied or stocked. A Device is a shared record of a real unit, so [search for an existing Device](#finding) by serial number or identifier before you create a new one.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core Device Must Have

The base Device resource has no mandatory elements, and this profile adds none. Inside an optional `name`, both `value` and `type` are required.

#### Each UZ Core Device Must Support

- an identifier, always sent with its `system` (see [Identifiers](identifiers.html));
- the `status` (active / inactive / entered-in-error) and the `availabilityStatus` (available / lost / damaged / destroyed), each from a required value set ([device status](ValueSet-device-status-vs.html), [availability status](ValueSet-device-availability-status-vs.html));
- the `displayName`, and each `name` with its `value`, its `type` from the [name type value set](ValueSet-device-name-type-vs.html) (registered, user-friendly or patient-reported name), and the `display` flag;
- the `type`, coded with SNOMED CT from the [device type value set](ValueSet-device-type-vs.html), and the `category` from the [device category value set](ValueSet-device-category-vs.html);
- the `manufacturer`, `modelNumber` and `partNumber`;
- the `serialNumber`, `lotNumber`, `manufactureDate` and `expirationDate`;
- the `owner`, a reference to an [Organization](StructureDefinition-uz-core-organization.html), and the `location`, a reference to a [Location](StructureDefinition-uz-core-location.html);
- `contact` details for the device, and free-text `note`s.

### Finding an existing Device {#finding}

Look a device up before you register it, so the same unit is not recorded twice (`|` separates system from value and is URL-encoded as `%7C`):

```
# by serial number - the reliable match for one unit
GET [base]/Device?serial-number=SN-2023-001456

# by type, within one organization
GET [base]/Device?type=http://snomed.info/sct|54953005&organization=Organization/[id]

# by manufacturer and model, or by batch
GET [base]/Device?manufacturer=Siemens Healthineers&model=SOMATOM Edge
GET [base]/Device?lot-number=CU-2025-0412
```

A `type` search matches any coding in `type`. The [Quick Start](#quick-start) at the bottom of the page lists the remaining searches.

### Building the JSON, step by step

The examples below go from the smallest useful instance to a fully described unit. Each one validates against this profile. The complete reference instance is the [CT scanner example](Device-example-ct-scanner.html).

#### The smallest Device you should send

The profile makes nothing mandatory, but every UZ Core resource names its profile in `meta.profile`, which tells the server which rules to validate against. A device record is only useful with a `type` that says what the device is and a `status`. This much passes validation:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "status": "active",
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "54953005",
          "display": "Computed tomography scanner"
        }
      ]
    }
  ]
}
```

`type` is a list of `CodeableConcept`s coded with SNOMED CT from the physical device hierarchy (`49062001 |Device|` and below). `status` is the record status: `active` while the device is in use, `inactive` once it is withdrawn, and `entered-in-error` for a record created by mistake.

#### Equipment at a hospital

Hospital equipment is usually described the way it was registered: manufacturer, model and serial number, its registered `name`, and the `owner` and `location` that tell you which organization holds it and where it stands. `availabilityStatus` says whether the device can be used right now, separately from `status`:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "displayName": "SOMATOM Edge CT scanner",
  "status": "active",
  "availabilityStatus": {
    "coding": [ { "system": "http://hl7.org/fhir/device-availability-status", "code": "available" } ]
  },
  "manufacturer": "Siemens Healthineers",
  "manufactureDate": "2023-05-15",
  "serialNumber": "SN-2023-001456",
  "name": [
    { "value": "SOMATOM Edge", "type": "registered-name", "display": true }
  ],
  "modelNumber": "SOMATOM Edge",
  "category": [
    {
      "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "dme" } ]
    }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "54953005",
          "display": "Computed tomography scanner"
        }
      ]
    }
  ],
  "owner": { "reference": "Organization/tashkent-diseases-hospital" },
  "location": { "reference": "Location/example-location" }
}
```

`name.type` is a plain `code` (`registered-name`, `user-friendly-name` or `patient-reported-name`), not a `CodeableConcept`. Set `display` to `true` on the name that should be shown by default. `displayName` is the label a user interface shows. `availabilityStatus` and `category` use HL7 codes. Their English displays come from the base code systems and their Uzbek and Russian ones from DHP supplements, so you can leave `display` out and let the server fill it in. `owner` and `location` are plain `Reference`s.

#### A single-use device with a batch

An implant or a single-use item is tracked by its batch rather than as a long-lived asset: send the `lotNumber` and `expirationDate` from the package, and the `category` codes that say how it is used. `category` repeats, so one device can be both `implantable` and `single-use`:

```json
{
  "resourceType": "Device",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-device"] },
  "language": "en",
  "status": "active",
  "availabilityStatus": {
    "coding": [ { "system": "http://hl7.org/fhir/device-availability-status", "code": "available" } ]
  },
  "manufacturer": "Pregna International",
  "manufactureDate": "2025-04-10",
  "expirationDate": "2030-03-31",
  "lotNumber": "CU-2025-0412",
  "name": [
    { "value": "Copper T 380A", "type": "registered-name", "display": true }
  ],
  "category": [
    { "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "implantable" } ] },
    { "coding": [ { "system": "http://hl7.org/fhir/device-category", "code": "single-use" } ] }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "268460000",
          "display": "Intrauterine contraceptive device"
        }
      ]
    }
  ],
  "owner": { "reference": "Organization/example-organization" }
}
```

`expirationDate` and `manufactureDate` are `dateTime`s, so a plain date is enough. The UZ Core [device type value set](ValueSet-device-type-vs.html) carries Uzbek and Russian names for the contraceptive device types: intrauterine contraceptive device, condom, drug-eluting contraceptive implant and contraceptive device.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
