UZ Core Practitioner describes an individual healthcare professional - a doctor, nurse, technician, or other clinical staff member - across the Digital Health Platform. A Practitioner on its own carries identity, demographics, and qualifications; it is placed into a working context (organization, specialty, role) by [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), which is what clinical resources reference as the performer or requester. Practitioner records are mastered centrally: identity and demographics flow from the State Personalization Centre by PINFL, the professional identifier comes from the HRM Argos system, and qualifications come from Tibtoifa - so you should search for an existing Practitioner by identifier before creating a new one.

> Prefer referencing a [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) over the bare Practitioner when recording who performed or requested something: one practitioner can hold several roles - across organizations, specialties, or positions - and only the role says in which capacity they acted.

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
- one or more qualifications, each with a code from the Tibtoifa licence/certificate value set, plus its validity period and issuing organization. A [specialist certificate](#specialist-certificates) also carries its series and number in `identifier` and its specialty, category and role in `code.text`.

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
  "language": "uz",
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

`telecom.system` and `name.use` use required bindings - the value must come from the bound value set. The `district` / `city` codes come from national value sets - see [Addresses](general-guidance.html#addresses) for where each code is sourced. For a practitioner living abroad, use a free-text address with `country` set to the foreign ISO code instead.

#### Adding qualifications, photo and deceased status

A full record carries the practitioner's `qualification` (each `code` from the Tibtoifa licence/certificate value set, with its `issuer`), a `photo`, and the `deceasedBoolean` / `deceasedDateTime` when applicable. The qualification `issuer` is a plain `Reference` to an [Organization](StructureDefinition-uz-core-organization.html). These keys slot into the same resource as the realistic record above:

```json
{
  "photo": [
    { "url": "https://media.dhp.uz/practitioner/example.jpg", "size": "1024" }
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

### Specialist certificates {#specialist-certificates}

A specialist certificate (*sertifikat*) is issued by the Ministry of Health and confirms that a practitioner may work in a given specialty at a given qualification category. Certificates are held in Tibtoifa, which returns all certificates of a practitioner by PINFL. Each certificate becomes one `qualification` of the Practitioner.

<div>{% include practitioner-certificate-sequence.svg %}</div><br clear="all"/>

#### What Tibtoifa returns

One entry of the Tibtoifa response for PINFL `42410540220011`:

```
{
  "pinfl": "42410540220011",
  "serial": "CA",
  "number": "008815",
  "category": { "uz": "Oliy toifa", "ru": "Высшая категория", "en": "Higher category" },
  "speciality": { "uz": "psixiatriya", "ru": "психиатрия", "en": "psychiatry" },
  "medicaleRoleName": { "uz": "Shifokor", "ru": "Врач", "en": "Doctor" },
  "givenDate": "2024-05-05",
  "validityPeriod": "2029-05-05",
  "commandNumber": "35",
  "commandDate": "2024-05-05"
}
```

The entry also carries Tibtoifa's internal ids (`id`, `serialId`, `categoryId`, `specialityId`, `medicalRoleId`) and a Karakalpak (`kaa`) name next to each translated field.

#### Mapping to FHIR

| Tibtoifa field | Example | FHIR element | Rule |
|---|---|---|---|
| `pinfl` | `42410540220011` | `Practitioner.identifier` (PINFL) | Finds the practitioner; not repeated in the qualification |
| `serial` + `number` | `CA` + `008815` | `qualification.identifier.value` | Series followed by number, no separator: `CA008815` |
| - | - | `qualification.identifier.system` | Always `https://dhp.uz/fhir/core/sid/doc/uz/specialist-certificate` |
| - | - | `qualification.code.coding` | Always `http://terminology.hl7.org/CodeSystem/v2-0360#CER` "Certificate" |
| `speciality`, `category`, `medicaleRoleName` | `psixiatriya`, `Oliy toifa`, `Shifokor` | `qualification.code.text` | `{speciality}, {category}, {role}` in the resource language: `Psixiatriya, oliy toifa, shifokor` |
| the same fields in `ru`, `kaa`, `en` | `Психиатрия, высшая категория, врач` | `translation` extension on `code.text` | One extension per language |
| `givenDate` | `2024-05-05` | `qualification.period.start` | Date of issue |
| `validityPeriod` | `2029-05-05` | `qualification.period.end` | Last day of validity |
| `id`, `serialId`, `categoryId`, `specialityId`, `medicalRoleId` | `9448`, `2`, `1`, `90`, `1` | - | Internal Tibtoifa ids, not sent |
| `commandNumber`, `commandDate` | `35`, `2024-05-05` | - | Not sent |

Specialty, category and role are sent as text for now; coded value sets for them may follow in a later version.

#### Rules

- **One certificate, one qualification.** A practitioner with certificates in two specialties has two `qualification` entries.
- **Match on the identifier.** When a certificate is received again (for example after a renewal changed its validity), find the existing qualification by `identifier.system` and `identifier.value` and update it instead of adding a duplicate.
- **Keep expired certificates.** A certificate whose `period.end` has passed stays in the record; the period shows that it no longer applies.
- **Series letters.** Tibtoifa mixes Latin and Cyrillic series (for example `CA` and `ТТБ`). Send the series exactly as Tibtoifa returns it, so the same certificate always produces the same `identifier.value`.
- **No category.** Tibtoifa category `0` ("None") means the category is unknown - leave it out of the text. Category `5` ("Toifasiz", uncategorized) is a real value and is written out.

#### The certificate in the Practitioner

The qualification built from the Tibtoifa entry above:

```json
{
  "resourceType": "Practitioner",
  "language": "uz",
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
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
      "value": "42410540220011"
    }
  ],
  "qualification": [
    {
      "identifier": [
        {
          "system": "https://dhp.uz/fhir/core/sid/doc/uz/specialist-certificate",
          "value": "CA008815"
        }
      ],
      "code": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code": "CER",
            "display": "Certificate"
          }
        ],
        "text": "Psixiatriya, oliy toifa, shifokor",
        "_text": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/translation",
              "extension": [
                { "url": "lang", "valueCode": "ru" },
                { "url": "content", "valueString": "Психиатрия, высшая категория, врач" }
              ]
            },
            {
              "url": "http://hl7.org/fhir/StructureDefinition/translation",
              "extension": [
                { "url": "lang", "valueCode": "en" },
                { "url": "content", "valueString": "Psychiatry, higher category, doctor" }
              ]
            }
          ]
        }
      },
      "period": { "start": "2024-05-05", "end": "2029-05-05" }
    }
  ]
}
```

The certificate number system is described by the [specialist certificate naming system](NamingSystem-uzb-specialist-certificate.html); the full record is in the [example practitioner](Practitioner-example-practitioner.html).

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
