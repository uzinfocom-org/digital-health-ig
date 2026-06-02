UZ Core Goal records a health goal for a patient on the Digital Health Platform - a target the patient is working towards, such as a target weight, a target HbA1c, a blood-pressure target, or a physical-activity target. Goals are often set by the patient in the portal. A Goal may address a [Condition](StructureDefinition-uz-core-condition.html) (through `addresses`) and its result may be measured by an [Observation](StructureDefinition-uz-core-observation.html) (through `outcome`).

### Each UZ Core Goal **Must Have**

This profile adds no mandatory cardinality of its own. The only required elements are those inherited from the base resource: a **lifecycleStatus** and a **description** of the goal.

### Each UZ Core Goal **Must Support**

- an **identifier** (e.g. a number from an insurer's or another clinic's system);
- the **lifecycleStatus** (proposed, planned, accepted, active, on-hold, completed, cancelled, entered-in-error, rejected) - bound to the DHP goal-status value set;
- an **achievementStatus** (in-progress, improving, worsening, no-change, achieved, sustaining, not-achieved, no-progress, not-attainable) - bound to the DHP goal-achievement value set;
- a **category** grouping the goal by type (e.g. treatment, dietary, behavioural, nursing);
- a **continuous** flag - true when effort must continue after the goal is reached (e.g. a lifelong diet);
- a **priority** (high, medium, low);
- a **description** of what the goal is (text or code);
- the **subject** the goal is set for - a [Patient](StructureDefinition-uz-core-patient.html), a Group, or an [Organization](StructureDefinition-uz-core-organization.html);
- a **start[x]** (when work on the goal begins);
- a **target** - the parameter measured (`target.measure`), the figure or state to reach (`target.detail[x]`), and the deadline (`target.due[x]`);
- a **statusDate** and **statusReason** for the current status;
- the **source** - who set the goal (a CareTeam, [Patient](StructureDefinition-uz-core-patient.html), [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), or RelatedPerson);
- the medical problems the goal **addresses** (a [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html), Socioeconomic Observation, medication, nutrition order, service request, risk assessment, or [Procedure](StructureDefinition-uz-core-procedure.html));
- free-text **notes**;
- the **outcome** - the [Observation](StructureDefinition-uz-core-observation.html) that records the result achieved.

> A Goal is never hard-deleted. To withdraw it, change `lifecycleStatus` (for example to `cancelled` or `completed`) rather than calling `DELETE`.
