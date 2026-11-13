UZ Core Laboratory ObservationDefinition describes a laboratory test as a catalogue entry, not a result: what the test or panel is called and coded, which analytes it reports, in which units, by which method, and what the normal ranges are. The Patient Portal uses these definitions to show patients what a test measures and how to read their values. One definition serves the whole country: each organization that offers the test publishes a [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) that points to the definition's canonical `url` through the [service definition](StructureDefinition-service-definition.html) extension. The results themselves are [Observations](StructureDefinition-uz-core-observation.html) with the same `code`. Look for an existing definition by its code or identifier before you create a new one.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)). Not all of them are required, but your system must populate each Must Support element when it has the data, and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types and terminology bindings.

#### Each UZ Core Laboratory ObservationDefinition Must Have

- a `status` (draft / active / retired / unknown);
- the `code` of the laboratory test or panel;
- a `useContext` with the laboratory focus, which marks the resource as a laboratory definition (see [the laboratory focus](#laboratory-focus)).

A `component`, when present, must have its own `code`.

#### Each UZ Core Laboratory ObservationDefinition Must Support

- the canonical `url` that HealthcareService entries point to, and a business `identifier`;
- a computer-friendly `name` and a `title` in Uzbek, with Russian and Karakalpak translations;
- the `date` it was last changed and a plain-language `description`;
- the `subject` type the test applies to (usually a patient);
- the `category` (laboratory) and the test or panel `code`;
- the permitted result types (`permittedDataType`, such as Quantity, CodeableConcept or string) and units (`permittedUnit`, UCUM);
- the laboratory `method`;
- the reference ranges (`qualifiedValue`): context, sex, range category, the `range` itself, or a value set of normal coded values;
- related definitions that belong to this panel (`hasMember`);
- the analytes of a panel (`component`), each with its code, result types and units.

### Finding an existing definition {#finding}

Definitions are shared, so check the catalogue first. Search by the test code, by the business identifier or by the canonical URL:

```
GET [base]/ObservationDefinition?code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-74
GET [base]/ObservationDefinition?identifier=[system]%7C[value]
GET [base]/ObservationDefinition?url=[canonical-url]
```

Add `&status=active` to leave out drafts and retired definitions.

### Building the JSON, step by step

The examples below go from the smallest valid definition to a panel with its analytes. Each one validates against this profile. The complete reference instance is the [hemoglobin definition](ObservationDefinition-example-laboratory-hemoglobin.html).

#### The smallest definition and the laboratory focus {#laboratory-focus}

A definition needs a `status`, a `code` and the laboratory focus in `useContext`. The focus is fixed: the `code` is `focus` from the HL7 usage context types and the value is the SNOMED CT concept 108252007 "Laboratory procedure". It is what lets clients tell laboratory definitions apart from other ObservationDefinitions on the server:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  }
}
```

`code` here is `lab-pan-74` (hemoglobin) from the national [laboratory panel codes](CodeSystem-lab-pan-cs.html); LOINC and SNOMED CT codes are allowed too. Copy the focus coding exactly as shown, `display` included, since the profile fixes the whole value.

#### A catalogue entry for one test

A full catalogue entry gives the canonical `url`, the names, the date and description, and how results are reported: the `permittedDataType`, the UCUM unit and the `method`:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "url": "https://dhp.uz/fhir/core/ObservationDefinition/laboratory-hemoglobin",
  "name": "HemoglobinMassPerVolumeInBlood",
  "title": "Gemoglobin (HB)",
  "_title": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Гемоглобин (HB)" }
        ]
      }
    ]
  },
  "status": "active",
  "date": "2026-01-16",
  "description": "Mass concentration of hemoglobin in whole blood, shown to Patient Portal users in g/L.",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "subject": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "116154003", "display": "Patient" } ] } ],
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  },
  "permittedDataType": [ "Quantity" ],
  "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ],
  "method": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-methods-cs", "code": "lab-method-6" } ]
  }
}
```

The `url` above is illustrative. The `title` is in Uzbek; Russian and Karakalpak forms go in `translation` extensions on the `_title` companion element, one per language. `permittedUnit` must carry a UCUM code; the national supplement gives each unit its Uzbek and Russian names. `method` here is spectrophotometry from the national [laboratory methods](CodeSystem-lab-methods-cs.html).

#### Adding reference ranges

`qualifiedValue` holds the normal ranges the Patient Portal shows next to a result. Repeat it for each population that has its own range; here men and women:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  },
  "permittedDataType": [ "Quantity" ],
  "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ],
  "qualifiedValue": [
    {
      "context": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning", "code": "normal" } ]
      },
      "gender": "male",
      "rangeCategory": "reference",
      "range": {
        "low": { "value": 130, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" },
        "high": { "value": 170, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" }
      }
    },
    {
      "context": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning", "code": "normal" } ]
      },
      "gender": "female",
      "rangeCategory": "reference",
      "range": {
        "low": { "value": 120, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" },
        "high": { "value": 150, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" }
      }
    }
  ]
}
```

`rangeCategory` says what kind of range it is (reference / critical / absolute), `context` what the range means (normal, recommended, therapeutic ...) and `gender` whom it applies to. Use `age` or `gestationalAge` in the same way for age-specific ranges. For tests with coded results, such as "negative" / "positive", point `normalCodedValueSet` to a value set of the normal codes instead of giving a `range`.

#### A panel with its analytes

A panel such as the complete blood count lists its analytes in `component`. Each component has its own `code`, result types and units, and the panel `code` stays on the resource:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-E" } ]
  },
  "component": [
    {
      "code": {
        "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
      },
      "permittedDataType": [ "Quantity" ],
      "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ]
    },
    {
      "code": {
        "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-75" } ]
      },
      "permittedDataType": [ "Quantity" ],
      "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "10*12/L" } ]
    }
  ]
}
```

Catalogue panels use the national laboratory panel codes for their analytes. When a user builds a custom laboratory definition in the Patient Portal, each `component.code` must be a LOINC code (for example 718-7 for hemoglobin); the national codes are kept for the pre-defined catalogue. Use `component` when the analytes have no definition of their own; when each analyte is defined separately, as hemoglobin is above, list those definitions in `hasMember` instead.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
