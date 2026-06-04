UZ Core Procedure records an action performed on or for a patient on the Digital Health Platform - a surgical operation, a therapy session, a diagnostic intervention, and the like. A Procedure is anchored to its [Patient](StructureDefinition-uz-core-patient.html) through `subject` and to the [Encounter](StructureDefinition-uz-core-encounter.html) in which it took place through `encounter`. When the procedure was ordered, `basedOn` points back to the originating ServiceRequest (or CarePlan), and `reason` may reference the [Condition](StructureDefinition-uz-core-condition.html) or finding that justified it.

### Each UZ Core Procedure **Must Have**

This profile adds no mandatory cardinality of its own. The required elements are inherited from the base resource: a **status** (preparation | in-progress | completed | not-done ...) and a **subject** (the patient or other target the procedure was performed on).

### Each UZ Core Procedure **Must Support**

- an **identifier**, **basedOn** (CarePlan or ServiceRequest), and **partOf** (a parent procedure, observation, or medication administration);
- the **status** (required binding) and a **category**;
- the **code** identifying the procedure (required binding to the DHP procedure-code value set);
- the **subject** and the **encounter** it occurred in;
- the **occurrence[x]** timing, the **recorded** date, and the **recorder**;
- the **performer** and their **actor**;
- the **location**, the **reason** (a condition, observation, procedure, report, or document), and the **bodySite** (required binding);
- the **outcome** (extensible binding) and free-text **note**;
- the items **used** in the procedure.

> Set `status` to `not-done` (rather than omitting the Procedure) when an ordered procedure was deliberately not performed, so the decision stays on the record.
