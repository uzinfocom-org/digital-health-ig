UZ Core AllergyIntolerance records a patient's allergy or intolerance on the Digital Health Platform, along with any reactions it has caused. It is anchored to the [Patient](StructureDefinition-uz-core-patient.html) it belongs to and to the [Encounter](StructureDefinition-uz-core-encounter.html) where it was recorded. Allergy records are surfaced in the patient summary and in the emergency minimum data set - they remain visible even when consent restricts access to other clinical data - so keeping them current is important for patient safety.

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

Start from the record below - every value validates against this profile, so copy it and adapt. The two snippets after it show the small additions for a reaction and for marking the allergy resolved. The complete reference instance is the [grass pollen allergy](AllergyIntolerance-example-grass-pollen-allergy.html).

#### A realistic allergy record

The only strictly mandatory element is `patient`, but in practice you also send the allergen `code`, the `clinicalStatus` (active / inactive / resolved), the `verificationStatus` (how confirmed it is), the `type` (allergy or intolerance), the `category` (food / medication / environment / biologic), the `encounter` it was recorded in, and when it started (`onset[x]`). Every UZ Core resource also names the profile it claims in `meta.profile`. `clinicalStatus`, `verificationStatus`, and `type` are `CodeableConcept`s, each with its own HL7 `system`; `category` is a plain `code` list, so send the bare code:

```json
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance"]
  },
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "active"
    }]
  },
  "verificationStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code": "confirmed"
    }]
  },
  "type": {
    "coding": [{ "system": "http://hl7.org/fhir/allergy-intolerance-type", "code": "allergy" }]
  },
  "category": ["environment"],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergen-codes-cs",
      "code": "aller-0010-00001",
      "display": "Grass pollen"
    }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "onsetDateTime": "2025-07-10"
}
```

Each of `type`, `category`, `clinicalStatus`, and `verificationStatus` uses a required binding - the value must come from the bound value set. The allergen `code` has an extensible binding to the DHP allergen value set. `patient` and `encounter` are plain `Reference`s to a [Patient](StructureDefinition-uz-core-patient.html) and an [Encounter](StructureDefinition-uz-core-encounter.html).

#### Recording a reaction

When the allergy has caused a reaction, add a `reaction` entry: a `severity` (mild / moderate / severe - required binding), one or more `manifestation` entries (what was observed), and optionally the `substance` that triggered this event. Watch the shapes - `manifestation` is a `CodeableReference`, so its coded value sits under `concept`, whereas `substance` is a plain `CodeableConcept`. This array slots into the resource above:

```json
{
  "reaction": [{
    "severity": "severe",
    "manifestation": [{
      "concept": {
        "coding": [{
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-manifestation-cs",
          "code": "aller-0006-00004",
          "display": "Shortness of breath"
        }]
      }
    }],
    "substance": {
      "coding": [{
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-substance-cs",
        "code": "aller-0010-00031",
        "display": "Walnut, pollen (Jug r_pollen)"
      }]
    }
  }]
}
```

The per-reaction `substance` is the specific agent that triggered this event - a separate field from the top-level allergen `code`.

#### When the allergy is no longer active

To mark an allergy as resolved, set `clinicalStatus` to `resolved` and add the `allergyintolerance-abatement` extension (0..1) - here as a free-text `valueString`. Send these in place of the active `clinicalStatus` on the record above:

```json
{
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "resolved"
    }]
  },
  "extension": [{
    "url": "http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement",
    "valueString": "Symptoms resolved after antihistamine course"
  }]
}
```

See [Missing & suppressed data](general-guidance.html#missing-data) and the [terminology guidance](general-guidance.html#terminology) for choosing the right coded values.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
