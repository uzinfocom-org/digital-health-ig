UZ Core Patient carries the administrative and demographic information that identifies a patient across the Digital Health Platform. It is the anchor that almost every clinical resource points back to. Patient identity is mastered centrally - in most workflows you will search for an existing Patient by identifier before creating a new one (see Quick Start below), so that the same person is not registered twice.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Patient Must Have

Every Patient must carry at least one identifier. The PINFL (national personal identification number) is the primary way patients are identified on the platform and should be sent whenever it is known; the other identifiers (passport, birth certificate, health card, and so on) supplement it, or substitute for it when no PINFL is available. See [Identifier systems](identifiers.html) for every supported system URI and which to use, including the temporary identifiers for unidentified patients.

#### Each UZ Core Patient Must Support



- a name (Uzbek authoritative, with translations as designations);
- a gender (with the national `gender-other` extension where applicable);
- a birth date;
- an address - either an Uzbek address (coded administrative divisions: region, district, mahalla) or an international free-text address;
- the active flag (whether this patient record is in active use);
- nationality, citizenship, and the managing-organization attachment date (the patient's enrolment with their primary healthcare organization).

`maritalStatus` and the contact (next-of-kin) details are bound to national value sets where present.

> Populate the identifier *slice* that matches your data - you do not populate every slice. A patient typically has a PINFL plus one or more document identifiers.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full registration payload. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([Salim](Patient-example-salim.html), [Emma](Patient-example-emma.html), [David](Patient-example-david.html), [unidentified patient](Patient-example-unidentified-patient.html)).

#### The smallest Patient you should send

`identifier` is the only mandatory element, and the PINFL is the identifier you should send. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile` - that is how the server knows which rules to validate against. This much already passes validation:

```json
{
  "resourceType": "Patient",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient"]
  },
  "identifier": [
    {
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "NI" }] },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "30211975910033"
    }
  ]
}
```

What makes that identifier a PINFL is its `system` URI - the one ending in `sid/pid/uz/ni`. That is the single field the profile matches on to recognise which kind of identifier it is; the `type` and `value` simply travel with it. To record a different identifier, use the matching `system` and `type` from [the table below](#identifier-slices).

#### A realistic registration

In practice you send the PINFL plus the core demographics the platform expects you to support: name, gender, birth date and address. Names carry Uzbek as the authoritative text. An Uzbek address uses **coded** administrative divisions (region, district, mahalla), not free text:

```json
{
  "resourceType": "Patient",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient"]
  },
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "NI" }] },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "30211975910033"
    }
  ],
  "active": true,
  "name": [
    {
      "use": "official",
      "text": "Usmonov Salim Saidovich",
      "family": "Usmonov",
      "given": ["Salim"]
    }
  ],
  "gender": "male",
  "birthDate": "1994-01-27",
  "address": [
    {
      "use": "home",
      "type": "physical",
      "country": "UZ",
      "state": "1727",
      "district": "1727220",
      "city": "17150085",
      "line": ["Amir Temur ko'chasi, 15-uy"]
    }
  ]
}
```

The `state` / `district` / `city` codes come from national value sets - see [Addresses](general-guidance.html#addresses) for where each code is sourced. For a patient living abroad, use a free-text address with `country` set to the foreign ISO code instead (see the [Emma example](Patient-example-emma.html)).

#### Carrying more than one identifier {#identifier-slices}

A person usually holds several identifiers. Add one entry to the `identifier` array per document, each with its own `system` and `type`; populate only the ones you actually have. The `system` URI is what selects the slice, so it must match exactly:

```json
"identifier": [
  {
    "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "NI" }] },
    "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
    "value": "30211975910033"
  },
  {
    "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "PPN" }] },
    "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
    "value": "AC1234567"
  }
]
```

The most common identifiers and the exact values to use:

| Identifier | `system` | `type` code |
|---|---|---|
| PINFL (national id) | `https://dhp.uz/fhir/core/sid/pid/uz/ni` | `NI` |
| Local passport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local` | `PPN` |
| International passport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl` | `PPN` |
| Birth certificate | `https://dhp.uz/fhir/core/sid/pid/uz/bct` | `BCT` |
| Health card | `https://dhp.uz/fhir/core/sid/pid/uz/hc` | `HC` |

See [Identifier systems](identifiers.html) for the complete list, including the URI patterns for foreign nationals.

#### When you have no identifier at all

For an unidentified patient - someone brought in unconscious, say - you still cannot omit `identifier`. Rather than invent a value, mark the value as absent with a `data-absent-reason` extension (full instance: [unidentified patient](Patient-example-unidentified-patient.html)):

```json
"identifier": [
  {
    "use": "temp",
    "_value": {
      "extension": [
        { "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason", "valueCode": "unknown" }
      ]
    }
  }
]
```

Note the leading underscore: `_value` is where FHIR puts the extension that stands in for the missing `value`. Better still, assign a temporary medical record number when the receiving organization is known - see [Identifier systems](identifiers.html) - and fall back to `data-absent-reason` only when it is not.

#### Recording a non-binary gender

When `gender` is `other`, attach the national `gender-other` extension to qualify it. The extension hangs off the `_gender` companion element (the leading underscore is where FHIR puts an extension on a primitive), and its `valueCoding` comes from the national gender value set (full instance: [David](Patient-example-david.html)):

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

For example API calls and the search-before-register flow, see the [Quick Start](#quick-start) at the bottom of this page.
