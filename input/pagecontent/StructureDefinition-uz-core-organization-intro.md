UZ Core Organization represents a healthcare or administrative organization - a hospital, clinic, medical association, or one of its sub-units - across the Digital Health Platform. It is referenced wherever a resource needs to name the responsible institution: as the employer in [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), the manager of a [Location](StructureDefinition-uz-core-location.html), or the provider of a [HealthcareService](StructureDefinition-uz-core-healthcareservice.html). Organizations are mastered in the Argos HRM system and identified by their Soliq tax ID, so you should search for an existing Organization by identifier before creating a new one. Organizations can form a hierarchy.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Organization Must Have

The only mandatory element this profile adds is a name in Uzbek - the authoritative organization name, with Russian and Karakalpak provided as translation extensions.

#### Each UZ Core Organization Must Support



- an identifier - the Soliq tax ID slice, the Argos organization ID slice, and the SHIF/SMIF insurance-payor ID slice (a 3-letter + 6-digit code such as `OAA000024`). See [Identifier systems](identifiers.html) for the supported system URIs;
- the active flag;
- a type - several coded classification slices (organization type, subordination group, nomenclature group, organizational structure, service group, specialization, without-legal-status, and grouping) drawn from the national code systems;
- the national coverage-area extension (the geographic area served);
- contact details;
- a partOf reference to a parent organization (the hierarchy link);
- an endpoint reference.

> Populate only the identifier and type *slices* that apply to your organization - you do not populate every slice.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a fully categorized organization. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([oncology center](Organization-example-organization.html), [medical association](Organization-xonobod-medical-association.html), [infectious-diseases hospital](Organization-tashkent-diseases-hospital.html)).

#### The smallest Organization you should send

`name` is the only mandatory element - the authoritative Uzbek name of the organization. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`, so the server knows which rules to validate against. In practice you should always send the Soliq tax ID as well, since organizations are matched on it. This much already passes validation:

```json
{
  "resourceType": "Organization",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization"]
  },
  "active": true,
  "name": "Xonobod shahar tibbiyot birlashmasi",
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "TAX", "display": "Tax ID number" }] },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
      "value": "200248215"
    }
  ]
}
```

What makes that identifier the Soliq tax ID is its `system` URI - the one ending in `sid/org/uz/soliq`. That `system` is what selects the slice, so it must match exactly. To carry a different identifier, use the matching `system` and `type` from [the table below](#identifier-slices).

#### Adding the Uzbek name translations

The Uzbek `name` is authoritative; the Russian and Karakalpak names travel alongside it as translation extensions on `_name` (note the leading underscore - that is where FHIR attaches extensions to a primitive). Each translation is one `translation` extension carrying a `lang` code and the translated `content`:

```json
{
  "resourceType": "Organization",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization"]
  },
  "active": true,
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
  }
}
```

#### A fully categorized organization

In practice you send the full picture: every identifier the organization holds, the classification `type`, contact details, and the area it covers. Note that `type` is a single `CodeableConcept` whose `coding` array holds each classification - they are distinguished by `system`, not by separate `type` entries. The `coverage-area` extension (geographic area served) sits at the root of the resource:

```json
{
  "resourceType": "Organization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization" ] },
  "active": true,
  "name": "Respublika onkologiya markazi",
  "identifier": [
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "TAX",
            "display": "Tax ID number"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
      "value": "200935935"
    },
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "XX",
            "display": "Organization Identifier"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/argos",
      "value": "9512"
    },
    {
      "use": "official",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NIIP",
            "display": "National Insurance Payor Identifier (Payor)"
          }
        ]
      },
      "system": "https://dhp.uz/fhir/core/sid/org/uz/shif",
      "value": "OAA000024",
      "period": { "start": "2024-01-15" }
    }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organization-types-uz-cs",
          "code": "I",
          "display": "Boshqaruv boyicha taqsimlanishi"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-subordination-group-cs",
          "code": "I_1",
          "display": "Respublika tassarufidagi muassasalari"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/nomenclature-group-cs",
          "code": "II_100",
          "display": "Shifoxona muassasalari"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-structure-cs",
          "code": "110",
          "display": "Ixtisoslashtirilgan ilmiy-amaliy tibbiyot markazi"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-service-group-cs",
          "code": "III_100",
          "display": "Poliklinika bo'limi va statsionar bo'limi mavjud"
        },
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-specialization-cs",
          "code": "145.0",
          "display": "Kattalar onkologiyasi"
        }
      ]
    }
  ],
  "contact": [
    {
      "telecom": [
        { "system": "phone", "value": "+998711234567" },
        { "system": "email", "value": "info@example.uz" },
        { "system": "url", "value": "https://cancercenter.uz" }
      ],
      "address": {
        "line": [ "Farobiy ko'chasi, 383" ],
        "state": "1726",
        "district": "1726269",
        "country": "UZ"
      }
    }
  ]
}
```

Each `type.coding` is bound to its own national code system and is selected by its `system` URI - send only the classifications that apply. The address `state` / `district` codes come from national value sets (see [Addresses](general-guidance.html#addresses)). To attach an organization to a parent in the hierarchy, add `partOf` as a plain reference: `{ "reference": "Organization/parent-id" }`.

#### The identifier slices {#identifier-slices}

An organization may hold up to three identifiers; populate only the ones you have. Each is selected by its `system` URI, so it must match exactly:

| Identifier | `system` | `type` code |
|---|---|---|
| Soliq tax ID | `https://dhp.uz/fhir/core/sid/org/uz/soliq` | `TAX` |
| Argos organization ID | `https://dhp.uz/fhir/core/sid/org/uz/argos` | `XX` |
| SHIF insurance-payor ID | `https://dhp.uz/fhir/core/sid/org/uz/shif` | `NIIP` |

The SHIF identifier value must be 3 uppercase Latin letters followed by 6 digits (for example `OAA000024`). See [Identifier systems](identifiers.html) for the complete list of supported system URIs.

#### Recording the coverage area

When an organization serves a defined geographic area, add the national `coverage-area` extension at the root of the resource. Its `valueCodeableConcept` carries a region code from the states code system:

```json
{
  "resourceType": "Organization",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization"]
  },
  "active": true,
  "name": "Xonobod shahar tibbiyot birlashmasi",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/coverage-area",
      "valueCodeableConcept": {
        "coding": [
          { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/states-cs", "code": "1703", "display": "Andijon viloyati" }
        ]
      }
    }
  ]
}
```

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
