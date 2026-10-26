UZ Core Medication describes a medicinal product as it is registered and distributed in Uzbekistan - what the product is (an ATC or INN code), its dose form, strength and total volume, its ingredients, the organization that holds the marketing authorization, and the batch it came from. It is the catalogue entry that other resources point to: [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) when a medicine is prescribed, [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) when it is handed over, MedicationAdministration when it is given, [Immunization](StructureDefinition-uz-core-immunization.html) for the administered vaccine product, and [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) for a suspected cause. Products are identified by the national registry and track-and-trace systems (registration certificate, GTIN, Asl Belgisi marking, ICPS code, box group), so you should [search for an existing Medication](#finding) by identifier or code before creating a new one.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Medication Must Have

The only mandatory element this profile adds is at least one identifier - the base Medication resource has no mandatory elements of its own. The identifier is sliced by `system`, and within each slice the `system` URI is fixed, so it is the URI that says which national identifier you are sending.

#### Each UZ Core Medication Must Support



- the identifier slices - registration certificate number, GTIN, Asl Belgisi marking ID, ICPS product/service code, and UzPharm box group ID (see [the table below](#identifier-slices));
- the code - an ATC or INN concept from the [medication classification value set](ValueSet-medication-classification-vs.html) (required binding);
- the status (active / inactive / entered-in-error, from a required value set);
- the marketingAuthorizationHolder - a reference to the [Organization](StructureDefinition-uz-core-organization.html) that holds the registration;
- the doseForm, coded from the national [dose form value set](ValueSet-medication-doseform-vs.html) (extensible binding);
- the totalVolume - a UCUM quantity, with units drawn from the [total volume units value set](ValueSet-medication-total-volume-units-vs.html) (preferred binding);
- the ingredients - each one a concept (ATC / INN) or a reference to another Medication, with its strength as a ratio;
- the batch - the lot number (AIK) and the expiry date.

### Finding an existing Medication {#finding}

Medications are shared catalogue entries, not per-patient records, so look one up before you register it. Every identifier slice and the code are searchable (`|` separates system from value and is URL-encoded as `%7C`):

```
# by national identifier - the reliable match
GET [base]/Medication?identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/gtin|04780123456789
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/marking|010478012345678921AbC9xQ

# by code - every product for a substance (INN) or an ATC class
GET [base]/Medication?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?code=http://www.whocc.no/atc|A06AH03

# by batch, status, dose form, or authorization holder
GET [base]/Medication?lot-number=LOT20241201
GET [base]/Medication?status=active&form=https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs|TAB101
GET [base]/Medication?marketingauthorizationholder=Organization/[id]
```

An identifier search without a system (`?identifier=UZ/MED/2024/00123`) matches the value in any slice; give the system when you know which registry the value came from. A code search matches any coding in `code`, so a product coded with both an INN and an ATC code is found by either. The [Quick Start](#quick-start) at the bottom of the page lists the remaining search parameters.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a fully described registered product. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page ([paracetamol tablets](Medication-example-medication.html), [neomycin drops](Medication-example-neomycin-atc-medication.html), [naloxegol tablets](Medication-example-naloxegol-atc-medication.html)).

#### The smallest Medication you should send

One `identifier` is the only element this profile makes mandatory. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile` - that is how the server knows which rules to validate against. In practice a catalogue entry is useless without a `code` saying what the product is and a `status`, so send those too. This much already passes validation:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active"
}
```

What makes that identifier the registration certificate number is its `system` URI - the one ending in `registration_number`. `use` is fixed to `official` in every slice. `code` is bound `required` to the [medication classification value set](ValueSet-medication-classification-vs.html): an INN code names the substance, an ATC code (`http://www.whocc.no/atc`) places the product in the WHO classification, and you may send both as separate codings. `status` is `active` / `inactive` / `entered-in-error`.

#### A registered product

In practice you describe the product the way the registry does: its `doseForm`, the `totalVolume` of one unit (here the amount of active substance in a tablet, as a UCUM quantity), the `batch` it belongs to, and the `marketingAuthorizationHolder` - a plain `Reference` to the [Organization](StructureDefinition-uz-core-organization.html) that holds the registration. Add the GTIN alongside the registration certificate when the pack is barcoded:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    },
    {
      "use": "official",
      "system": "https://mobile-api.aslbelgisi.uz/gtin",
      "value": "04780123456789"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      },
      {
        "system": "http://www.whocc.no/atc",
        "code": "N02BE01",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active",
  "marketingAuthorizationHolder": { "reference": "Organization/example-organization" },
  "doseForm": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs",
        "code": "TAB101",
        "display": "tablets"
      }
    ]
  },
  "totalVolume": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" },
  "batch": {
    "lotNumber": "LOT20241201",
    "expirationDate": "2027-12-01"
  }
}
```

`doseForm` is an `extensible` binding to the national dose form code system - its displays are Uzbek, with English and Russian designations, so the `display` you send must match the resource `language`. `totalVolume` is a `Quantity`; always send the machine-readable `system` and `code`, not just the human `unit` (see [Units and quantities](general-guidance.html#units-and-quantities)). `batch.lotNumber` is the AIK batch identifier, and `batch.expirationDate` is a plain date.

#### The identifier slices {#identifier-slices}

A product may carry up to five identifiers; populate only the ones you have. Each is selected by its `system` URI, so it must match exactly, and `use` is always `official`:

| Identifier | `system` | Issued by |
|---|---|---|
| [Registration certificate number](NamingSystem-registration-certificate-id.html) | `https://uzpharminfo.uz/registration_number` | Ministry of Health, on registering the medicine |
| [GTIN](NamingSystem-global-trade-item-id.html) | `https://mobile-api.aslbelgisi.uz/gtin` | GS1, the global trade item number on the pack |
| [Asl Belgisi marking ID](NamingSystem-uz-marking-id.html) | `https://mobile-api.aslbelgisi.uz/marking` | The national track-and-trace system, per serialized pack |
| [ICPS product/service code](NamingSystem-product-service-id.html) | `https://uzpharminfo.uz/icps` | The national product and service classification |
| [UzPharm box group ID](NamingSystem-uz-pharm-box-id.html) | `https://uzpharminfo.uz/box_group_id` | The track-and-trace system, grouping serialized packs into a carton |

The registration certificate, GTIN and ICPS code describe the *product* and are the same on every pack; the marking ID and box group ID describe a *physical pack or carton* and differ per unit. When you only need the catalogue entry, send the product-level identifiers.

#### Adding the ingredients

When the composition matters - a combination product, or a dispense that must match strength - list each `ingredient`. The `item` is a `CodeableReference`: give the substance as a `concept` coded with INN or ATC, or point at another Medication through its nested `reference`. The strength is a `strengthRatio` of amount per unit of the dose form:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active",
  "doseForm": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs",
        "code": "TAB101",
        "display": "tablets"
      }
    ]
  },
  "ingredient": [
    {
      "item": {
        "concept": {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
              "code": "005325",
              "display": "paracetamol"
            }
          ]
        }
      },
      "isActive": true,
      "strengthRatio": {
        "numerator": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" },
        "denominator": {
          "value": 1,
          "unit": "piece",
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
          "code": "piece"
        }
      }
    }
  ]
}
```

`ingredient.item` is a `CodeableReference` - its concept sits under `concept`, and a reference to another [Medication](StructureDefinition-uz-core-medication.html) would sit one level deeper (`{ "reference": { "reference": "Medication/id" } }`). See [References and CodeableReferences](how-to-read.html#references-and-codeablereferences) for the distinction. The numerator and denominator units come from the [total volume units value set](ValueSet-medication-total-volume-units-vs.html) - UCUM for mass and volume, and the local units code system for countable units such as a `piece` (one tablet, capsule or ampoule).

For example API calls and the search-before-register flow, see the [Quick Start](#quick-start) at the bottom of this page.
