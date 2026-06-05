UZ Core RelatedPerson represents a person connected to a patient - a next-of-kin, legal representative, or parent/guardian. It always belongs to one [Patient](StructureDefinition-uz-core-patient.html) and is used wherever the platform needs to record who a patient is associated with: for example, the parent who consents to and views a child's immunizations. Unlike a Practitioner, a RelatedPerson is not a member of staff and has no professional role.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core RelatedPerson Must Have

Every RelatedPerson must carry at least one identifier - a national or document identifier from one of the defined slices (PINFL, local or international passport, birth certificate, driver's licence, diplomatic passport, health card, or military ID); where a value is genuinely absent, the identifier may carry a data-absent-reason (see [Identifier systems](identifiers.html) for the supported system URIs). It must also carry a patient reference - the patient this person is related to (must point to a UZ Core Patient).

#### Each UZ Core RelatedPerson Must Support



- the relationship to the patient (coded from a required relationship value set);
- a name (use, text, family, given, suffix, period);
- telecom contact details (with required system and use bindings);
- a gender (with the national `gender-other` extension where applicable);
- an address - either an Uzbek address (coded administrative divisions) or an international free-text address;
- the active flag, a birth date, and the period during which the relationship is/was valid.

> Populate the identifier *slice* that matches your data - you do not populate every slice - but at least one identifier is required. The `gender-other` extension may only be used when `gender` is set to `other`.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full next-of-kin record. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is linked at the bottom of the page ([example related person](RelatedPerson-example-related-person.html)).

#### The smallest RelatedPerson you should send

A RelatedPerson must carry at least one `identifier` and must name the `patient` it is related to - both are mandatory. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`, so the server knows which rules to validate against. The PINFL is the identifier you should send when you have it; what makes it a PINFL is its `system` URI - the one ending in `sid/pid/uz/ni`. This much already passes validation:

```json
{
  "resourceType": "RelatedPerson",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
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
      "value": "12345678901234"
    }
  ],
  "patient": { "reference": "Patient/example-david" }
}
```

`patient` is a plain `Reference` to a UZ Core [Patient](StructureDefinition-uz-core-patient.html) - the `reference` string is `Type/id`. To record a different document instead of (or alongside) the PINFL, use the matching `system` and `type` from the table below.

#### A realistic next-of-kin

In practice you also send the `relationship` to the patient, a `name`, a way to reach the person (`telecom`), and their `gender`. `relationship` is a `CodeableConcept` bound to a required value set; the example below records a witness. Names carry the full text plus the parsed parts:

```json
{
  "resourceType": "RelatedPerson",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
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
      "value": "12345678901234"
    }
  ],
  "patient": { "reference": "Patient/example-david" },
  "relationship": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
          "code": "WIT",
          "display": "witness"
        }
      ]
    }
  ],
  "name": [
    {
      "use": "usual",
      "text": "Зафаров Дамир Каримович",
      "family": "Зафаров",
      "given": [ "Дамир" ],
      "suffix": [ "Каримович" ]
    }
  ],
  "telecom": [ { "system": "phone", "value": "+998901234567", "use": "mobile" } ],
  "gender": "male"
}
```

`telecom.system` and `telecom.use` each use a required binding, as does `relationship` - the value must come from the bound value set (the Snapshot view below lists each one). When `gender` is `other`, supply the national `gender-other` extension; that extension is only allowed in that case.

#### Adding an address and the relationship period

When you have it, add the person's `address` and the `period` during which the relationship is valid. An Uzbek address uses **coded** administrative divisions (region, district, mahalla) rather than free text - the human-readable `text` travels alongside the codes. These keys slot into the same resource as the realistic record above:

```json
{
  "address": [
    {
      "use": "home",
      "type": "physical",
      "text": "махалля Дилобод, Каторток кўчаси, 9-уй, 15-хонадон",
      "line": ["Каторток кўчаси"],
      "state": "1726",
      "district": "1726294",
      "city": "103-0104",
      "country": "182",
      "period": { "start": "1999-06-04" }
    }
  ],
  "period": { "start": "1998-02-16" }
}
```

The `state` / `district` / `city` codes come from national SOATO value sets - see [Addresses](general-guidance.html#addresses) for where each code is sourced. For a related person living abroad, use a free-text address with `country` set to the foreign ISO code instead.

#### Carrying more than one identifier, or none

A person usually holds several documents. Add one entry to the `identifier` array per document, each with its own `system` and `type`; populate only the ones you actually have. The `system` URI is what selects the slice, so it must match exactly:

| Identifier | `system` | `type` code |
|---|---|---|
| PINFL (national id) | `https://dhp.uz/fhir/core/sid/pid/uz/ni` | `NI` |
| Local passport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local` | `PPN` |
| International passport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl` | `PPN` |
| Birth certificate | `https://dhp.uz/fhir/core/sid/pid/uz/bct` | `BCT` |
| Driver's licence | `https://dhp.uz/fhir/core/sid/pid/uz/dl` | `DL` |
| Diplomatic passport | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/dp` | `DP` |
| Health card | `https://dhp.uz/fhir/core/sid/pid/uz/hc` | `HC` |
| Military ID | `https://dhp.uz/fhir/core/sid/pid/uz/mi` | `MI` |

If a value is genuinely absent - the person has no passport, say - do not invent one and do not drop the whole identifier. Mark the value as absent with a `data-absent-reason` extension on `_value`:

```json
{
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "PPN", "display": "Passport number" }] },
      "system": "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local",
      "_value": {
        "extension": [
          { "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason", "valueCode": "unknown" }
        ]
      }
    }
  ]
}
```

Note the leading underscore: `_value` is where FHIR puts the extension that stands in for the missing `value`. See [Identifier systems](identifiers.html) for the complete list of supported system URIs and [Missing & suppressed data](general-guidance.html#missing-data) for choosing the right absence mechanism.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
