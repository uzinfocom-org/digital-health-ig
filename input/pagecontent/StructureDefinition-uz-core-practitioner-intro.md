UZ Core Practitioner describes an individual healthcare professional - a doctor, nurse, technician, or other clinical staff member - across the Digital Health Platform. A Practitioner on its own carries identity, demographics, and qualifications; it is placed into a working context (organization, specialty, role) by [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), which is what clinical resources reference as the performer or requester. Practitioner records are mastered centrally: identity and demographics flow from the State Personalization Centre by PINFL, the professional identifier comes from the HRM Argos system, and qualifications come from Tibtoifa - so you should search for an existing Practitioner by identifier before creating a new one.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Practitioner Must Have

The base FHIR Practitioner has no mandatory elements, and this profile does not add any. In practice you will almost always populate the professional identifier and name (see Must Support below).

#### Each UZ Core Practitioner Must Support



- an identifier - in particular the HRM Argos professional identifier slice (which carries the PINFL as a national unique individual identifier). See [Identifier systems](identifiers.html) for the supported system URIs;
- the active flag;
- a name (family, given, suffix, with a required name-use binding);
- telecom contact details (phone, email, with a required contact-system binding);
- a gender (with the national `gender-other` extension where applicable);
- a birth date, and the deceased date/flag;
- an address - either an Uzbek address (coded administrative divisions) or an international free-text address;
- a photo;
- one or more qualifications, each with a code from the Tibtoifa licence/certificate value set, plus its validity period and issuing organization.

> The `gender-other` extension may only be used when `gender` is set to `other`.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full practitioner record. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([example practitioner](Practitioner-example-practitioner.html), [practitioner with gender extension](Practitioner-example-practitioner-gender-other.html)).

#### The smallest Practitioner you should send

The base Practitioner has no mandatory elements, but a record is only useful with the professional identifier and a name. The professional identifier is the HRM Argos slice - what makes it that slice is its `system` URI (the one ending in `sid/pro/uz/argos`); the `type` and `value` simply travel with it. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile` - that is how the server knows which rules to validate against:

```json
{
  "resourceType": "Practitioner",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/pro/uz/argos",
      "value": "9876543210"
    }
  ],
  "name": [ { "use": "official", "text": "Test Test Test", "family": "Test", "given": [ "Test" ] } ]
}
```

The Argos identifier carries the practitioner's PINFL as the national unique individual identifier; its `type` code is `NI`. See [Identifier systems](identifiers.html) for the supported system URIs. Both `identifier.use` and `name.use` are required bindings, so `official` must come from the bound value sets.

#### A realistic practitioner record

In practice you send the demographics the platform expects you to support: the `active` flag, `telecom`, `gender`, `birthDate`, and an `address`. An Uzbek address uses **coded** administrative divisions (district, city), not free text - here `country` also carries a numeric code:

```json
{
  "resourceType": "Practitioner",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner" ] },
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/pro/uz/argos",
      "value": "9876543210"
    }
  ],
  "active": true,
  "name": [
    {
      "use": "official",
      "text": "Test Test Test",
      "family": "Test",
      "given": [ "Test" ],
      "suffix": [ "Test" ]
    }
  ],
  "telecom": [ { "system": "phone", "value": "975555555", "use": "mobile" } ],
  "gender": "female",
  "birthDate": "1985-05-06",
  "address": [
    {
      "use": "temp",
      "type": "physical",
      "country": "182",
      "district": "1703217",
      "city": "22070033",
      "line": [ "mahallasi Dilobod, Katortol ko'chasi, 9-uy, 15-xonadon" ]
    }
  ]
}
```

`telecom.system` and `name.use` use **required** bindings - the value must come from the bound value set. The `district` / `city` codes come from national value sets - see [Addresses](general-guidance.html#addresses) for where each code is sourced. For a practitioner living abroad, use a free-text address with `country` set to the foreign ISO code instead.

#### Adding qualifications, photo and deceased status

A full record carries the practitioner's `qualification` (each `code` from the Tibtoifa licence/certificate value set, with its `issuer`), a `photo`, and the `deceasedBoolean` / `deceasedDateTime` when applicable. The qualification `issuer` is a plain `Reference` to an [Organization](StructureDefinition-uz-core-organization.html). These keys slot into the same resource as the realistic record above:

```json
{
  "photo": [
    { "url": "http://example.org/photos/practitioner.jpg", "size": "1024" }
  ],
  "qualification": [
    {
      "code": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0360", "code": "DIP" }] },
      "issuer": { "reference": "Organization/example-organization" }
    }
  ],
  "deceasedBoolean": true
}
```

`qualification.code` is bound (required) to the Tibtoifa licence/certificate value set. Use `deceasedDateTime` when the exact date of death is known, or `deceasedBoolean` when only the fact is known.

#### Recording a non-binary gender

When `gender` is `other`, attach the national `gender-other` extension to qualify it. The extension hangs off the `_gender` companion element (the leading underscore is where FHIR puts an extension on a primitive), and its `valueCoding` comes from the national gender value set (full instance: [practitioner with gender extension](Practitioner-example-practitioner-gender-other.html)):

```json
{
  "gender": "other",
  "_gender": {
    "extension": [
      {
        "url": "https://dhp.uz/fhir/core/StructureDefinition/gender-other",
        "valueCoding": {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/gender-other-cs",
          "code": "regis0007.00005",
          "display": "Jinsni erkakka o'zgartirdi"
        }
      }
    ]
  }
}
```

The `gender-other` extension may only be used when `gender` is set to `other` - the profile rejects it otherwise. See [Missing & suppressed data](general-guidance.html#missing-data) for related conventions.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
