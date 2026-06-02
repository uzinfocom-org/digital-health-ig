UZ Core QuestionnaireResponse is a completed instance of a [Questionnaire](StructureDefinition-uz-core-questionnaire.html) on the Digital Health Platform - for example a patient health-status declaration or feedback captured in the patient portal. It carries the answers given against the questions of the referenced template.

### Each UZ Core QuestionnaireResponse **Must Have**

- a **questionnaire** reference to the [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) being answered (1..1);
- a **status** (in-progress, completed, amended, entered-in-error, stopped), inherited as mandatory from the base resource.

### Each UZ Core QuestionnaireResponse **Must Support**

- an **identifier**, **basedOn**, and **partOf**;
- the **questionnaire** reference and the **status**;
- the **subject** and the **encounter** (an [Encounter](StructureDefinition-uz-core-encounter.html)) the response belongs to;
- the **authored** date/time, the **author** (a [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html), RelatedPerson, Device, or [Organization](StructureDefinition-uz-core-organization.html)), and the **source** (a [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html), or RelatedPerson);
- the **item** structure - **linkId**, **definition**, **text**, **answer** (with `value[x]` and nested `item`), and nested **item**s.

> Patient-entered QuestionnaireResponse data is informational. It is **not** automatically converted into a [Condition](StructureDefinition-uz-core-condition.html) or [Observation](StructureDefinition-uz-core-observation.html); that happens only through a clinician's action within an [Encounter](StructureDefinition-uz-core-encounter.html), recorded via Provenance. On submission a response is validated for structure and terminology only, not for clinical correctness.
