UZ Core MedicationKnowledge holds reference information about a medicinal product in DHP: whether the entry is in use, and the prices approved for the product - the price ceiling, the wholesale and retail prices and the price of the [State Health Insurance Fund (SHIF)](https://ig.shif.uz/build/core/en/index.html) - each with the period it applies to. It does not describe the product itself. The product is a [UZ Core Medication](StructureDefinition-uz-core-medication.html), which the entry points to through `associatedMedication`, and the organization that publishes or maintains the entry is a [UZ Core Organization](StructureDefinition-uz-core-organization.html). An entry is not about a patient: every system uses the same one, so [look it up by identifier](#finding) before you create a new one.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core MedicationKnowledge Must Have

The base MedicationKnowledge resource has no mandatory elements at the top level. This profile adds one: exactly one `associatedMedication`, a reference to the [UZ Core Medication](StructureDefinition-uz-core-medication.html) the entry is about. Each `cost` that is sent must have one `effectiveDate` period, a `type` saying which price it is, and the price itself as `costMoney`. When the DHP identifier is sent, both its `system` and its `value` are required.

#### Each UZ Core MedicationKnowledge Must Support

- the DHP identifier of the entry (see [the table below](#identifier-slices));
- the `status` - whether the entry is in use ([active / inactive / entered-in-error](ValueSet-medicationknowledge-status-vs.html));
- the `associatedMedication` - the [UZ Core Medication](StructureDefinition-uz-core-medication.html) the entry is about;
- the `author` - the [UZ Core Organization](StructureDefinition-uz-core-organization.html) that publishes or maintains the entry;
- each `cost` - which price it is (`type`, from the [cost type value set](ValueSet-medicationknowledge-cost-type-vs.html)), the period it applies to (`effectiveDate`) and the amount.

### Finding an existing MedicationKnowledge {#finding}

Look an entry up before you create one:

```
# by DHP identifier - the reliable match
GET [base]/MedicationKnowledge?identifier=https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge|MK-2026-000123

# by product - the entry for a Medication you already have, or for its registration number
GET [base]/MedicationKnowledge?associated-medication=Medication/example-medication
GET [base]/MedicationKnowledge?associated-medication.identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123

# active entries, or entries with a price from a given source
GET [base]/MedicationKnowledge?status=active
GET [base]/MedicationKnowledge?source-cost=DTSJ
```

`associated-medication` is a [UZ Core search parameter](SearchParameter-uz-core-medicationknowledge-associated-medication.html): FHIR R5 has none for `associatedMedication`. Chain it on `identifier` to search by the product's registration number or GTIN without reading the Medication first.

### Building the JSON, step by step

The examples below go from an entry with a single price to an entry whose price changes. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is linked at the bottom of the page ([price ceiling](MedicationKnowledge-example-medication-knowledge-price-ceiling.html)).

#### The smallest MedicationKnowledge you should send

`associatedMedication` is the only mandatory element. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile` - that is how the server knows which rules to validate against. Send the `status` as well, so receivers know the entry is in use, and a `cost` for each approved price:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    }
  ]
}
```

`associatedMedication` is a plain `Reference`, and in this profile it holds exactly one product. `effectiveDate` is a `Period`: a `start` with no `end` means the price applies from that date until further notice. The cost type code system has Uzbek displays, with English and Russian designations, so the `display` you send must match the resource `language`. The price is a `Money` value with an ISO 4217 currency code - `UZS` for Uzbek sum.

#### An entry with several prices

In practice an entry carries every approved price of the product, each as its own `cost`, together with the DHP identifier and the organization that publishes the entry. `source` names the authority that set a price:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge",
      "value": "MK-2026-000123"
    }
  ],
  "status": "active",
  "author": { "reference": "Organization/[id]" },
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00003",
            "display": "Chakana narx"
          }
        ]
      },
      "costMoney": { "value": 4300, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2026-10-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00004",
            "display": "DTSJ narx"
          }
        ]
      },
      "source": "DTSJ",
      "costMoney": { "value": 4000, "currency": "UZS" }
    }
  ]
}
```

`cost.type` is an `extensible` binding: use a code from the [cost type value set](ValueSet-medicationknowledge-cost-type-vs.html) whenever one fits, and another code system only for a price none of them covers. `source` is free text, and the `source-cost` search matches it exactly, so spell each authority the same way every time. `status` is a plain code with no `display`; its Uzbek and Russian displays come from the [MedicationKnowledge status supplement](CodeSystem-medicationknowledge-status-cs.html).

#### When a price changes

`effectiveDate` keeps the price history in one entry. When a new price is approved, close the old period with an `end` and add a new `cost` of the same `type` with the new period, then update the entry:

```json
{
  "resourceType": "MedicationKnowledge",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationknowledge"] },
  "language": "uz",
  "status": "active",
  "associatedMedication": [ { "reference": "Medication/example-medication" } ],
  "cost": [
    {
      "effectiveDate": [ { "start": "2026-10-01", "end": "2026-12-31" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4500, "currency": "UZS" }
    },
    {
      "effectiveDate": [ { "start": "2027-01-01" } ],
      "type": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationknowledge-cost-type-cs",
            "code": "price-type-0001-00001",
            "display": "Cheklangan narx"
          }
        ]
      },
      "costMoney": { "value": 4700, "currency": "UZS" }
    }
  ]
}
```

To find the price in force on a given date, take the `cost` of the wanted `type` whose period contains that date. When the product is withdrawn, set `status` to `inactive` rather than deleting the entry.

#### The identifier slice {#identifier-slices}

An entry may carry the DHP identifier below. It is selected by its `system` URI, so the URI must match exactly:

| Identifier | `system` | Issued by |
|---|---|---|
| [Medication knowledge identifier](NamingSystem-uzb-medication-knowledge-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/medication-knowledge` | DHP |

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
