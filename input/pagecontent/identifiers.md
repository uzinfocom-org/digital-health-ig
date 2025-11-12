# Identifier systems

This guide explains how to use identifier systems within the Uzbekistan Digital Health Platform for identifying patients, healthcare professionals, and organizations.

## Overview

The UZ Core implementation uses a hierarchical identifier domain system. All identifiers follow the structure:

```
https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}[/subtype]
```

Where:
- `namespace`: `pid` (personal), `pro` (professional), or `org` (organization)
- `country`: ISO 3166-1 two-letter country code (e.g., `uz` for Uzbekistan)
- `type`: Identifier type (e.g., `ppn` for passport, `ni` for national ID)
- `subtype`: Optional further classification (e.g., `local`, `intl` for passport types)

## Patient identifiers

### National ID (PINFL)

The national unique identifier (PINFL - Personal Identification Number for Foreign and Local citizens) is the primary identifier for Uzbek citizens and residents.

**System URI**: `https://dhp.uz/fhir/core/sid/pid/uzb/ni`

```json
{
  "resourceType": "Patient",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uzb/ni",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "use": "official",
      "value": "30211975910033"
    }
  ]
}
```

### Passport - local (internal)

Local passports are used for domestic identification within Uzbekistan.

**System URI**: `https://dhp.uz/fhir/core/sid/pid/uzb/ppn/local`

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uzb/ppn/local",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "PPN",
            "display": "Passport number"
          }
        ]
      },
      "use": "official",
      "value": "AC1234567"
    }
  ]
}
```

### Other patient identifier types

For a complete list of all supported patient identifier systems, see the [PatientIdentifierDomainVS](ValueSet-patient-identifier-domain-vs.html) value set.

## Practitioner identifiers

### Healthcare professional ID (HRM Argos)

Healthcare professionals are identified using the Human Resource Management (HRM) Argos system.

**System URI**: `https://dhp.uz/fhir/core/sid/pro/uzb/argos`

```json
{
  "resourceType": "Practitioner",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pro/uzb/argos",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "use": "official",
      "value": "9876543210"
    }
  ],
  "active": true,
  "name": [{"use": "official", "family": "Karimov", "given": ["Ahmed"]}]
}
```

## Organization identifiers

### Tax ID (Soliq)

Organizations are identified by their tax identification number assigned by the State Tax Committee.

**System URI**: `https://dhp.uz/fhir/core/sid/org/uzb/soliq`

```json
{
  "resourceType": "Organization",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/org/uzb/soliq",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "TAX",
            "display": "Tax ID number"
          }
        ]
      },
      "use": "official",
      "value": "200935935"
    }
  ]
}
```

## Complete example: patient with multiple identifiers

A patient may have multiple identifiers. Here's a complete example showing proper usage:

```json
{
  "resourceType": "Patient",
  "language": "uz",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uzb/ni",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "NI",
            "display": "National unique individual identifier"
          }
        ]
      },
      "use": "official",
      "value": "30211975910033"
    },
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uzb/ppn/local",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "PPN",
            "display": "Passport number"
          }
        ]
      },
      "use": "official",
      "value": "AC1234567"
    },
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uzb/hc",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "HC",
            "display": "Health card number"
          }
        ]
      },
      "use": "official",
      "value": "01234567890123"
    }
  ],
  "active": true,
  "name": [
    {
      "use": "usual",
      "family": "Usmanov",
      "given": ["Salim"],
      "suffix": ["Saliyevich"]
    }
  ],
  "gender": "male",
  "birthDate": "1994-01-27"
}
```

## Implementation guidelines

Not all concepts in the IdentifierDomainCS CodeSystem are selectable. Parent/grouping concepts have the `notSelectable` property set to `true`. Only leaf concepts (actual identifier systems) can be used:

**Selectable** (use these in FHIR resources):
- `https://dhp.uz/fhir/core/sid/pid/uzb/ni`
- `https://dhp.uz/fhir/core/sid/pid/uzb/ppn/local`
- `https://dhp.uz/fhir/core/sid/pro/uzb/argos`

**Not selectable** (parent groupings only):
- `https://dhp.uz/fhir/core/sid/pid` (root)
- `https://dhp.uz/fhir/core/sid/pid/uzb` (country root)
- `https://dhp.uz/fhir/core/sid/pid/uzb/ppn` (passport root)


### Searching

To search for resources by identifier, use the standard FHIR search parameters:

```
# | is used to separate system and value, needs to be URL-encoded as %7C
GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uzb/ni|30211975910033
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uzb/argos|9876543210
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uzb/soliq|200935935
```

## Related resources

- [IdentifierDomainCS CodeSystem](CodeSystem-identifier-domain-cs.html)
- [UZCorePatient Profile](StructureDefinition-uz-core-patient.html)
- [UZCorePractitioner Profile](StructureDefinition-uz-core-practitioner.html)
- [UZCoreOrganization Profile](StructureDefinition-uz-core-organization.html)
- [NamingSystems](artifacts.html#terminology-naming-systems)
