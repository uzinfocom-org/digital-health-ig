UZ Core Substance represents a specific portion of a substance that was sampled for sanitary and epidemiological examination: a pack of a food product, water from a well, air from a room or soil from a playground. It records the sample and batch numbers, the expiry date and the amount taken. What the substance is - its names, classification and manufacturer - is not repeated here: `code` points to the [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html) entry it was chosen from. A [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) taken from the substance references it in `subject`.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Substance Must Have

`instance`, which is always `true`: the resource describes the sampled portion, not the substance in general. `code` with a `reference` to the [UZ Core SubstanceDefinition](StructureDefinition-uz-core-substancedefinition.html) entry. When an identifier from the [table below](#identifier-slices) is sent, both its `system` and its `value` are required.

#### Each UZ Core Substance Must Support

- the sample identifier and the batch (lot) number (see [the table below](#identifier-slices));
- the `status` of the record (active / inactive / entered-in-error);
- the `category` - the kind of sample - water, air, soil or food products -;
- the `code` - the reference list entry, optionally with its SNOMED CT or national code;
- the `expiry` date of the batch;
- the `quantity` taken as the sample, in UCUM units.

### Building the JSON, step by step

The examples below go from a minimal sample to a complete one. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([pasteurized milk](Substance-example-substance-pasteurized-milk.html), [raw cow's milk](Substance-example-substance-raw-milk.html)).

#### The smallest Substance you should send

`instance` and `code` are mandatory. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`:

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "instance": true,
  "status": "active",
  "code": {
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-raw-milk" }
  },
  "quantity": { "value": 0.5, "unit": "L", "system": "http://unitsofmeasure.org", "code": "L" }
}
```

`code` is a `CodeableReference`: its `reference` points to the SubstanceDefinition, so the receiver reads the names and the manufacturer from there. `status` is a plain code with no `display`; its Uzbek and Russian displays come from the [substance status supplement](CodeSystem-substance-status-cs.html).

#### A sample of a product with a batch

A sample of a manufactured product, such as packaged milk, also carries the sample identifier, the batch number, the expiry date and the code of the substance in `code.concept`, so that samples can be searched by code without reading the definition:

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/prd/uz/substance-sample", "value": "NMN-2026-000123" },
    { "system": "https://dhp.uz/fhir/core/sid/prd/uz/substance-lot", "value": "SER-2611-15" }
  ],
  "instance": true,
  "status": "active",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "255620007", "display": "Food" } ] }
  ],
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/substance-names-cs",
          "code": "sbnam-0008-00013",
          "display": "Pasterlangan ichimlik suti"
        },
        {
          "system": "http://snomed.info/sct",
          "code": "3718001",
          "display": "Cow's milk"
        }
      ]
    },
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-pasteurized-milk" }
  },
  "description": "Pasterlangan ichimlik suti, 1 l karton qadoq",
  "expiry": "2026-11-25",
  "quantity": { "value": 1, "unit": "L", "system": "http://unitsofmeasure.org", "code": "L" }
}
```

When `code.concept` is sent it must carry the same codes as the SubstanceDefinition: here the national code of pasteurised drinking milk from the [substance name](ValueSet-substance-names-vs.html) value set, with its broader SNOMED CT concept alongside. Packaging and other remarks go in `description` as free text.

#### Declared composition

When the accompanying document states the content of an ingredient, such as the fat content of milk, send it in `ingredient` as a ratio. The value measured by the laboratory is a separate [UZ Core Observation](StructureDefinition-uz-core-observation.html):

```json
{
  "resourceType": "Substance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substance"] },
  "language": "uz",
  "instance": true,
  "status": "active",
  "code": {
    "reference": { "reference": "SubstanceDefinition/example-substance-definition-pasteurized-milk" }
  },
  "ingredient": [
    {
      "quantity": {
        "numerator": { "value": 3.2, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
        "denominator": { "value": 1, "unit": "1", "system": "http://unitsofmeasure.org", "code": "1" }
      },
      "substanceCodeableConcept": { "text": "Sut yog'i" }
    }
  ]
}
```

#### The identifier slices {#identifier-slices}

A sample may carry the identifiers below. Each is selected by its `system` URI, so the URI must match exactly:

| Identifier | `system` | Issued by |
|---|---|---|
| [Substance sample number](NamingSystem-uzb-substance-sample-number.html) | `https://dhp.uz/fhir/core/sid/prd/uz/substance-sample` | LIS SES, when the sample is added to the sampling act |
| [Substance batch number](NamingSystem-uzb-substance-lot-number.html) | `https://dhp.uz/fhir/core/sid/prd/uz/substance-lot` | The manufacturer, printed on the product |

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
