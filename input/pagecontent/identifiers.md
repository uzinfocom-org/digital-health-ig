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

For a complete list of all supported identifier systems across all countries, see the [IdentifierDomainCS CodeSystem](CodeSystem-identifier-domain-cs.html).

## Patient identifiers

### National ID (PINFL)

The national unique identifier (PINFL - Personal Identification Number for Foreign and Local citizens) is the primary identifier for Uzbek citizens and residents.

**System URI**: `https://dhp.uz/fhir/core/sid/pid/uz/ni`

```json
{
  "resourceType": "Patient",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
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

**System URI**: `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
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

### Temporary medical record number

Temporary medical record numbers are organization-specific identifiers assigned by healthcare providers. Each organization uses its tax ID (Soliq) to create a unique namespace.

**System URI pattern**: `https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt`

**Example** (using organization with tax ID `200935935`):

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/prn/200935935/mrt",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MRT",
            "display": "Temporary Medical Record Number"
          }
        ]
      },
      "use": "temp",
      "value": "550e8400-e29b-41d4-a716-446655440000"
    }
  ]
}
```

### Foreign passports and driver's licenses

The platform supports identification of foreign nationals using their passport numbers and driver's licenses. The system URI follows the same pattern using the ISO 3166-1 two-letter country code:

**System URI pattern**: `https://dhp.uz/fhir/core/sid/pid/{country-code}/ppn` for passports, `https://dhp.uz/fhir/core/sid/pid/{country-code}/dl` for driver's licenses

Example for an Estonian passport:

```json
{
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/ee/ppn",
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
      "value": "K1234567"
    }
  ]
}
```

For a complete list of all supported patient identifier systems, including all supported countries for foreign passports and driver's licenses, see the [PatientIdentifierDomainVS](ValueSet-patient-identifier-domain-vs.html) value set.

## Practitioner identifiers

### Healthcare professional ID (HRM Argos)

Healthcare professionals are identified using the Human Resource Management (HRM) Argos system.

**System URI**: `https://dhp.uz/fhir/core/sid/pro/uz/argos`

```json
{
  "resourceType": "Practitioner",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pro/uz/argos",
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

For a complete list of all supported practitioner identifier systems, see the [PractitionerIdentifierDomainVS](ValueSet-practitioner-identifier-domain-vs.html) value set.

## Organization identifiers

### Tax ID (Soliq)

Organizations are identified by their tax identification number assigned by the State Tax Committee.

**System URI**: `https://dhp.uz/fhir/core/sid/org/uz/soliq`

```json
{
  "resourceType": "Organization",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/org/uz/soliq",
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

For a complete list of all supported organization identifier systems, see the [OrganizationIdentifierDomainVS](ValueSet-organization-identifier-domain-vs.html) value set.

## Complete example: patient with multiple identifiers

A patient may have multiple identifiers. Here's a complete example showing proper usage:

```json
{
  "resourceType": "Patient",
  "language": "uz",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ni",
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
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
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
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/hc",
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
    },
    {
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/prn/200935935/mrt",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MRT",
            "display": "Temporary Medical Record Number"
          }
        ]
      },
      "use": "temp",
      "value": "550e8400-e29b-41d4-a716-446655440000"
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
- `https://dhp.uz/fhir/core/sid/pid/uz/ni`
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`
- `https://dhp.uz/fhir/core/sid/pro/uz/argos`

**Not selectable** (parent groupings only):
- `https://dhp.uz/fhir/core/sid/pid` (root)
- `https://dhp.uz/fhir/core/sid/pid/uz` (country root)
- `https://dhp.uz/fhir/core/sid/pid/uz/ppn` (passport root)


### Searching

To search for resources by identifier, use the standard FHIR search parameters:

```
# | is used to separate system and value, needs to be URL-encoded as %7C

GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|30211975910033
GET [base]/Practitioner?identifier=https://dhp.uz/fhir/core/sid/pro/uz/argos|9876543210
GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
```

## Related resources

- [IdentifierDomainCS CodeSystem](CodeSystem-identifier-domain-cs.html)
- [UZCorePatient Profile](StructureDefinition-uz-core-patient.html)
- [UZCorePractitioner Profile](StructureDefinition-uz-core-practitioner.html)
- [UZCoreOrganization Profile](StructureDefinition-uz-core-organization.html)
- [NamingSystems](artifacts.html#terminology-naming-systems)
