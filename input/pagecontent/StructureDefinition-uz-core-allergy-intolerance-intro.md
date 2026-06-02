UZ Core AllergyIntolerance records a patient's allergy or intolerance on the Digital Health Platform - the allergen (`code`), whether it is an allergy or an intolerance (`type`), how confirmed it is (`verificationStatus`), and any reactions it has caused. It is anchored to its [Patient](StructureDefinition-uz-core-patient.html) through `patient` and to the [Encounter](StructureDefinition-uz-core-encounter.html) where it was recorded through `encounter`. Allergy records are surfaced in the patient summary and in the emergency minimum data set - they remain visible even when consent restricts access to other clinical data - so keeping `clinicalStatus`, `verificationStatus`, and `criticality` current is important for patient safety.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core AllergyIntolerance Must Have

This profile adds no mandatory cardinality of its own. The only required element is the one inherited from the base resource: a patient (the person the allergy belongs to).

#### Each UZ Core AllergyIntolerance Must Support



- an identifier;
- a code identifying the allergen itself (extensible binding to the DHP allergen value set);
- a type - allergy or intolerance (required binding);
- a clinical status - active \| inactive \| resolved (required binding);
- a verification status - how well the allergy has been confirmed (required binding);
- a category - food, medication, environment, biologic (required binding);
- the patient and the encounter it was recorded in;
- the onset[x] timing and an abatement extension (0..1);
- one or more reactions, each with a severity (required binding), manifestation (extensible), and the reaction substance (extensible).

> The allergen `code` is the substance the patient reacts to; the per-reaction `substance` records the specific agent that triggered a particular reaction event - they are not the same field.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full allergy record with a reaction. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is the [grass pollen allergy](AllergyIntolerance-example-grass-pollen-allergy.html).

#### The smallest AllergyIntolerance you should send

The only strictly mandatory element is `patient` - the person the allergy belongs to. In practice you always send more: the `code` naming the allergen, the `clinicalStatus` (active / inactive / resolved), and the `verificationStatus` (how confirmed it is). Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`. Note that `clinicalStatus` and `verificationStatus` are `CodeableConcept` types, each carrying its own HL7 `system`:

```json
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical", "code": "active", "display": "Active" }]
  },
  "verificationStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification", "code": "confirmed", "display": "Confirmed" }]
  },
  "code": {
    "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergen-codes-cs", "code": "aller-0010-00001", "display": "Grass pollen" }]
  },
  "patient": { "reference": "Patient/example-salim" }
}
```

The allergen `code` has an extensible binding to the DHP allergen value set, so its `system` is `allergen-codes-cs`. `patient` is a plain `Reference` to a [Patient](StructureDefinition-uz-core-patient.html).

#### A realistic allergy record

Add the `type` (allergy or intolerance - required binding), the `category` (food / medication / environment / biologic), the `encounter` it was recorded in, and when it started (`onset[x]`). Unlike the coded status fields, `category` in R5 is a plain `code` list, not a `CodeableConcept` - send the bare code only:

```json
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical", "code": "active", "display": "Active" }]
  },
  "verificationStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification", "code": "confirmed", "display": "Confirmed" }]
  },
  "type": {
    "coding": [{ "system": "http://hl7.org/fhir/allergy-intolerance-type", "code": "allergy", "display": "Allergy" }]
  },
  "category": ["environment"],
  "code": {
    "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergen-codes-cs", "code": "aller-0010-00001", "display": "Grass pollen" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "onsetDateTime": "2025-07-10"
}
```

`type`, `category`, `clinicalStatus`, and `verificationStatus` each use a required binding - the value must come from the bound value set. `encounter` is a plain `Reference` to an [Encounter](StructureDefinition-uz-core-encounter.html).

#### Recording a reaction

When the allergy has caused a reaction, add a `reaction` entry. Each reaction carries a `severity` (mild / moderate / severe - required binding), one or more `manifestation` entries (what was observed), and optionally the `substance` that triggered this particular event. Watch the shapes: `manifestation` is a `CodeableReference`, so the coded value sits one level deeper under `concept`, whereas `substance` is a plain `CodeableConcept`:

```json
{
  "reaction": [
    {
      "severity": "severe",
      "manifestation": [
        {
          "concept": {
            "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-manifestation-cs", "code": "aller-0006-00004", "display": "Shortness of breath" }]
          }
        }
      ],
      "substance": {
        "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-substance-cs", "code": "aller-0010-00031", "display": "Walnut, pollen (Jug r_pollen)" }]
      }
    }
  ]
}
```

This `reaction` array slots into the same resource as the realistic record above. The per-reaction `substance` is the specific agent that triggered this event; it is a separate field from the top-level allergen `code`.

#### When the allergy is no longer active

To mark an allergy as resolved, set `clinicalStatus` to `resolved` and add the abatement extension to record that it has settled. The abatement detail rides on the `allergyintolerance-abatement` extension (0..1) - here as a free-text `valueString`:

```json
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance"]
  },
  "clinicalStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical", "code": "resolved", "display": "Resolved" }]
  },
  "verificationStatus": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification", "code": "confirmed", "display": "Confirmed" }]
  },
  "code": {
    "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergen-codes-cs", "code": "aller-0010-00001", "display": "Grass pollen" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement",
      "valueString": "Symptoms resolved after antihistamine course"
    }
  ]
}
```

See [Missing & suppressed data](general-guidance.html#missing-data) and the [terminology guidance](general-guidance.html#terminology) for choosing the right coded values.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
