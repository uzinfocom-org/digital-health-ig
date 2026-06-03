UZ Core AllergyIntolerance records a patient's allergy or intolerance on the Digital Health Platform - the allergen (`code`), whether it is an allergy or an intolerance (`type`), how confirmed it is (`verificationStatus`), and any reactions it has caused. It is anchored to its [Patient](StructureDefinition-uz-core-patient.html) through `patient` and to the [Encounter](StructureDefinition-uz-core-encounter.html) where it was recorded through `encounter`. Allergy records are surfaced in the patient summary and in the emergency minimum data set - they remain visible even when consent restricts access to other clinical data - so keeping `clinicalStatus`, `verificationStatus`, and `criticality` current is important for patient safety.

### Each UZ Core AllergyIntolerance **Must Have**

This profile adds no mandatory cardinality of its own. The only required element is the one inherited from the base resource: a **patient** (the person the allergy belongs to).

### Each UZ Core AllergyIntolerance **Must Support**

- an **identifier**;
- a **code** identifying the allergen itself (extensible binding to the DHP allergen value set);
- a **type** - allergy or intolerance (required binding);
- a **clinical status** - active | inactive | resolved (required binding);
- a **verification status** - how well the allergy has been confirmed (required binding);
- a **category** - food, medication, environment, biologic (required binding);
- the **patient** and the **encounter** it was recorded in;
- the **onset[x]** timing and an **abatement** extension (0..1);
- one or more **reactions**, each with a **severity** (required binding), **manifestation** (extensible), and the reaction **substance** (extensible).

> The allergen `code` is the substance the patient reacts to; the per-reaction `substance` records the specific agent that triggered a particular reaction event - they are not the same field.
