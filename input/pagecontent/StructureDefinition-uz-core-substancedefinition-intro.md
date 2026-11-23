UZ Core SubstanceDefinition represents an entry of the reference list of substances and sampling objects that samples are taken from for sanitary and epidemiological examination - a food product, a water source, a room or a surface. It holds the code of the substance, its Uzbek and Russian names, its high-level category and its manufacturer, a [UZ Core Organization](StructureDefinition-uz-core-organization.html). Each sample is a [UZ Core Substance](StructureDefinition-uz-core-substance.html) that points to the entry in `code`, so the entry is not about one sample: every system uses the same one, so [look it up by identifier or code](#finding) before you create a new one.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core SubstanceDefinition Must Have

The base SubstanceDefinition resource has no mandatory elements at the top level, and this profile adds none. Each `name` that is sent must have the `name` itself. When the reference list number is sent, both its `system` and its `value` are required; when the substance code is sent, its `code` is required.

#### Each UZ Core SubstanceDefinition Must Support

- the number of the entry in the reference list (see [the table below](#identifier-slices));
- the `status` of the entry (active / retired);
- the `classification` - the kind of sample - water, air, soil or food products - from the [substance sample category](ValueSet-substance-sample-category-vs.html) value set;
- the `code` of the substance: SNOMED CT, or the national code when there is no SNOMED CT concept;
- each `name` - the name itself, whether it is the preferred name, and its language, with translations such as the Russian name;
- the `manufacturer` of the substance or product.

### Finding an existing SubstanceDefinition {#finding}

Look an entry up before you create one:

```
# by reference list number - the reliable match
GET [base]/SubstanceDefinition?identifier=https://dhp.uz/fhir/core/sid/doc/uz/substance-definition|1368

# by SNOMED CT or national code
GET [base]/SubstanceDefinition?code=http://snomed.info/sct|3718001

# by name or category
GET [base]/SubstanceDefinition?name=Pasterlangan
GET [base]/SubstanceDefinition?classification=http://snomed.info/sct|255620007
```

### Building the JSON, step by step

The examples below go from a minimal entry to a complete one. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([pasteurized milk](SubstanceDefinition-example-substance-definition-pasteurized-milk.html), [raw cow's milk](SubstanceDefinition-example-substance-definition-raw-milk.html)).

#### The smallest SubstanceDefinition you should send

Every UZ Core resource must name the profile it claims to conform to in `meta.profile`. Send the substance code and the Uzbek name, so receivers can display and search the entry:

```json
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition"] },
  "language": "uz",
  "code": [
    {
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "3718001",
            "display": "Cow's milk"
          }
        ]
      }
    }
  ],
  "name": [ { "name": "Sigir xom suti", "preferred": true } ]
}
```

The code comes from the [substance name](ValueSet-substance-names-vs.html) value set: a SNOMED CT concept, with Uzbek and Russian names in the [SNOMED CT supplement](CodeSystem-substance-names-snomed-cs.html), or, when there is no SNOMED CT concept, a national code from the [substance names](CodeSystem-substance-names-cs.html) code system. Many LIS SES names share one broader SNOMED CT concept, such as raw cow's milk and pasteurised milk, which are both `3718001` Cow's milk. The exact LIS SES name is kept in `name`.

#### A complete entry

In practice an entry also carries the reference list number, its status and category, the Russian name as a translation of the Uzbek one, and the manufacturer:

```json
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition"] },
  "language": "uz",
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/substance-definition", "value": "1368" } ],
  "version": "1",
  "status": { "coding": [ { "system": "http://hl7.org/fhir/publication-status", "code": "active" } ] },
  "classification": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "255620007", "display": "Food" } ] }
  ],
  "description": "Pasterlangan ichimlik suti",
  "manufacturer": [ { "reference": "Organization/example-organization-dairy-manufacturer" } ],
  "note": [ { "text": "Namuna sovutilgan holda tashiladi" } ],
  "code": [
    {
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "3718001",
            "display": "Cow's milk"
          }
        ]
      }
    }
  ],
  "name": [
    {
      "name": "Pasterlangan ichimlik suti",
      "preferred": true,
      "language": [ { "coding": [ { "system": "urn:ietf:bcp:47", "code": "uz" } ] } ],
      "translation": [
        {
          "name": "Молоко питьевое пастеризованное",
          "language": [ { "coding": [ { "system": "urn:ietf:bcp:47", "code": "ru" } ] } ]
        }
      ]
    }
  ]
}
```

`status` is a `CodeableConcept`, not a plain code; its Uzbek and Russian displays come from the [publication status supplement](CodeSystem-publication-status-cs.html). The name's `language` uses the BCP 47 codes `uz`, `ru` and `en`. When an entry is removed from the reference list, set `status` to `retired` rather than deleting it: existing samples still point to it.

#### The identifier slice {#identifier-slices}

An entry may carry the identifier below. It is selected by its `system` URI, so the URI must match exactly:

| Identifier | `system` | Issued by |
|---|---|---|
| [Substance definition identifier](NamingSystem-uzb-substance-definition-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/substance-definition` | LIS SES reference list of sample names |

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
