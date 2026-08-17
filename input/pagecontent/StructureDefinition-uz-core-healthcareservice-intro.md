UZ Core HealthcareService describes a service that an [Organization](StructureDefinition-uz-core-organization.html) offers at a [Location](StructureDefinition-uz-core-location.html). It has two jobs in the Digital Health Platform: routing referrals to the right provider, and acting as the catalogue of available laboratory tests - its category and type connect to the laboratory test and result definitions. A [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) can also point to the service a professional delivers.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core HealthcareService Must Have

The base FHIR HealthcareService has no mandatory elements, and this profile does not add any. In practice you will populate the name, category, and type together (see Must Support below).

#### Each UZ Core HealthcareService Must Support



- the active flag;
- a name for the service;
- a category - coded into either the DHP service category slice or the laboratory category slice (each bound to its national value set);
- a type - coded into either the DHP service slice or the laboratory test slice (each bound to its national value set).

> Use the laboratory category/type slices when the service is a lab test in the catalogue, and the DHP service slices for clinical services - populate the slice that matches, not both.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full catalogue entry with translated names. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is the [example HealthcareService](HealthcareService-example-healthcareservice.html).

#### The smallest HealthcareService you should send

This profile and the base resource add no mandatory elements, so the absolute minimum is just the profile claim in `meta.profile`. That is not useful on its own - always send the `active` flag and a `name` so the entry is identifiable in the catalogue. To make the service routable for referrals or classifiable as a lab test, add the `category` and `type` shown next:

```json
{
  "resourceType": "HealthcareService",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice"]
  },
  "active": true,
  "name": "IHC-ga xos"
}
```

The `active` flag says whether the service is currently offered; set it to `false` to retire an entry from the catalogue without deleting it.

#### A DHP clinical service

For a clinical service, add the `category` and `type`. Both are sliced on the coding `system`: the DHP slices use the `cancer-types-cs` system, with `category` carrying the service category and `type` the specific service. The `system` URI is what selects the slice, so it must match exactly:

```json
{
  "resourceType": "HealthcareService",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice"]
  },
  "active": true,
  "name": "IHC-ga xos",
  "category": [
    {
      "coding": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/cancer-types-cs", "code": "cancr0013.00000" }
      ]
    }
  ],
  "type": [
    {
      "coding": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/cancer-types-cs", "code": "cancr0013.00001" }
      ]
    }
  ]
}
```

The `category` and `type` codes are bound to national value sets (required binding) - `category` to [ServiceCategoriesVS](ValueSet-service-categories-vs.html) and `type` to [ServiceNamesVS](ValueSet-service-names-vs.html); the value must come from the bound set. See [Terminology](general-guidance.html#terminology) for how the national code systems are sourced.

#### A laboratory test in the catalogue

Laboratory services are catalogued through a dedicated lab slice on `category` and `type`. That slice is still being finalized - the lab `type` code system is not yet published - so a complete JSON example for lab services will be added here once the terminology is in place. Until then, model services with the DHP slice shown above.

#### Names in more than one language

The platform serves Uzbek, Russian and Karakalpak. The `name` holds the authoritative Uzbek text; translations travel as a `translation` extension on the `_name` companion element (note the leading underscore - that is where FHIR puts extensions on a primitive). Each translation pairs a `lang` code with the translated `content`:

```json
"name": "IHC-ga xos",
"_name": {
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/translation",
      "extension": [
        { "url": "lang", "valueCode": "ru" },
        { "url": "content", "valueString": "ИГХ специфические" }
      ]
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/translation",
      "extension": [
        { "url": "lang", "valueCode": "kaa" },
        { "url": "content", "valueString": "IHC ushın arnawlı" }
      ]
    }
  ]
}
```

The `name` carries the authoritative Uzbek text; the `_name` companion holds its Russian and Karakalpak translations, paired field-by-field. Add one `translation` extension per language you hold.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
