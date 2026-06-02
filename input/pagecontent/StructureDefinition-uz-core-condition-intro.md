UZ Core Condition records a diagnosis, problem, or other clinical condition for a patient on the Digital Health Platform. Conditions are coded with ICD-10 today (ICD-11 and SNOMED CT are planned). The `category` separates a long-running **problem-list-item** from an **encounter-diagnosis**, while `clinicalStatus` and `verificationStatus` together decide whether a Condition is surfaced as an active, confirmed problem. A Condition is anchored to its [Patient](StructureDefinition-uz-core-patient.html) through `subject` and to the visit it was recorded in through `encounter`; an [Encounter](StructureDefinition-uz-core-encounter.html) in turn points back at the Condition through `diagnosis.condition`, and that diagnosis code is what flows through to reporting.

### Each UZ Core Condition **Must Have**

This profile adds no mandatory cardinality of its own. The only required element is the one inherited from the base resource: a **subject** (the patient the condition belongs to).

### Each UZ Core Condition **Must Support**

- a **clinical status** (active, recurrence, remission, resolved ...) bound to the DHP clinical-status value set;
- a **verification status** (provisional, confirmed, refuted, entered-in-error ...);
- a **severity** (preferred binding; a disability classification is required when the code is the SNOMED *Disability* concept);
- a **code** identifying the condition itself (preferred ICD-10 / DHP condition value set);
- a **diagnosis-type** extension (e.g. main diagnosis, referring-institution diagnosis), 0..1;
- a **body site**;
- the **subject** and the **encounter** it was recorded in;
- the **onset[x]** and **abatement[x]** timing and the **recordedDate**;
- a **participant** (0..1) - the actor who asserted the condition and their function;
- free-text **notes**.

> `clinicalStatus` and `verificationStatus` are not mandatory here, but together they govern whether downstream views treat the condition as an active, confirmed problem - populate them whenever the data is known.
