UZ Core Location represents a physical place - a building, department, branch, ward, room, or bed - operated by an [Organization](StructureDefinition-uz-core-organization.html). It is referenced by [Encounter](StructureDefinition-uz-core-encounter.html) to say where care happened and by [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) to say where a service is delivered. Locations can nest, for example a ward inside a building inside a site.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Location Must Have

The only mandatory element this profile adds is a name in Uzbek - the authoritative location name, with Russian and Karakalpak provided as translation extensions.

#### Each UZ Core Location Must Support



- an identifier - the Soliq tax ID slice and a unit slice (branch, ward, or bed, typed from the location-kinds value set). See [Identifier systems](identifiers.html) for the supported system URIs;
- the status (active / suspended / inactive, from a required value set);
- the type of place (coded from the national location-types value set);
- contact details and an address (Uzbek coded administrative divisions);
- the position (geo-coordinates);
- the managingOrganization reference (who runs the place);
- a partOf reference to a containing location, hoursOfOperation, and an endpoint reference.

> `operationalStatus` (bed status) is reserved for future use.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full healthcare facility. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([oncology centre](Location-example-location-1.html), [department branch](Location-example-location-2.html), [psychiatric hospital](Location-example-location.html)).

#### The smallest Location you should send

`name` is the only element this profile makes mandatory, and it carries the authoritative Uzbek name of the place. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile` - that is how the server knows which rules to validate against. A `status` (`active` / `suspended` / `inactive`) is worth sending too. This much already passes validation:

```json
{
  "resourceType": "Location",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "name": "Toshkent shahar 1-sonli shifoxona"
}
```

`status` uses a required binding (`active` / `suspended` / `inactive`); the value must come from that value set. A bare name plus status is enough to register a place you can then reference from an [Encounter](StructureDefinition-uz-core-encounter.html) or [HealthcareService](StructureDefinition-uz-core-healthcareservice.html).

#### Adding the multilingual name, type and address

Uzbek is the authoritative `name`; Russian and Karakalpak ride along as `translation` extensions on the underlying `_name` element. Add the `type` of place (here an oncology centre, coded), an `address` using **coded** Uzbek administrative divisions, and the `managingOrganization` that runs it:

```json
{
  "resourceType": "Location",
  "language": "uz",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "mode": "instance",
  "name": "Respublika onkologiya markazi",
  "_name": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Республиканский онкологический центр" }
        ]
      },
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "kaa" },
          { "url": "content", "valueString": "Respublika onkologiya orayı" }
        ]
      }
    ]
  },
  "type": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode", "code": "ONCL" }] }
  ],
  "address": {
    "type": "postal",
    "line": ["Farobi, 383"],
    "city": "22070022",
    "district": "1735243",
    "country": "UZ"
  },
  "managingOrganization": { "reference": "Organization/example-organization" }
}
```

Note the leading underscore on `_name`: that is where FHIR attaches the translation extensions that travel with the `name` string. `type` is coded from the national location-types value set, and `address` is a single object (not a list) - its `city` and `district` are national administrative codes, not free text (see [Addresses](general-guidance.html#addresses)). `managingOrganization` is a plain `Reference` (`{ "reference": "Organization/id" }`).

#### Adding identifiers - tax ID and unit

A facility carries a Soliq tax ID; a sub-unit (a branch, ward, or bed) carries a unit identifier instead. The `identifier` element is sliced by `system`, so the `system` URI is what selects each slice and must match exactly. The tax-ID slice:

```json
"identifier": [
  {
    "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "TAX", "display": "Tax ID number" }] },
    "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
    "value": "200935935"
  }
]
```

For a department inside a facility, use the unit slice - its `type` is coded from the location-kinds value set, with `use` fixed to `official`:

```json
"identifier": [
  {
    "use": "official",
    "system": "https://dhp.uz/fhir/core/NamingSystem/location-unit",
    "type": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/location-kinds-cs",
          "code": "Branch",
          "display": "Bo'limi"
        }
      ]
    },
    "value": "1"
  }
]
```

These `identifier` arrays slot into the same resource as the examples above. See [Identifier systems](identifiers.html) for the supported system URIs.

#### When the address is free text

For a place whose location is not held as coded administrative divisions, send a free-text `address.text` instead of the coded `city` / `district` fields:

```json
{
  "resourceType": "Location",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"]
  },
  "status": "active",
  "name": "Toshkent shahar 1-sonli shifoxona",
  "address": { "text": "Toshkent shahar, Chilonzor tumani, Katta Qo'yliq 45" }
}
```

Prefer the coded form when you have it; fall back to `address.text` only when the administrative codes are unavailable. To nest one place inside another (a ward inside a building), reference the containing place through `partOf`.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
