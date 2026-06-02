UZ Core EpisodeOfCare groups a series of [Encounters](StructureDefinition-uz-core-encounter.html) into one ongoing case of care managed by an organization on the Digital Health Platform - for example a pregnancy pathway or a chronic-disease management programme. It is anchored to its [Patient](StructureDefinition-uz-core-patient.html) through `patient`, owned by an [Organization](StructureDefinition-uz-core-organization.html) through `managingOrganization`, and carries the `reason` and `diagnosis` (ICD-10-bound [Conditions](StructureDefinition-uz-core-condition.html)) the episode addresses. Decide deliberately whether to open a new episode or reuse one: an acute, curable condition's episode is closed once the patient is cured, whereas a lifelong chronic condition's episode stays `active` for years and may be transferred between organizations.

### Each UZ Core EpisodeOfCare **Must Have**

This profile adds no mandatory cardinality of its own. The required elements are inherited from the base resource: a **status** (planned | active | onhold | finished | cancelled ...) and a **patient**.

### Each UZ Core EpisodeOfCare **Must Support**

- an **identifier**;
- the **status** (required binding) and the **statusHistory** (each past `status` and its `period`);
- a **type** classifying the episode;
- the **reason**, with a `use` and a `value` (a Condition, Procedure, Observation, or HealthcareService, bound to ICD-10);
- the **diagnosis**, with its **condition** (a Condition reference, ICD-10-bound) and its **use** (role of the diagnosis);
- the **patient** and the **managingOrganization** responsible for coordinating care;
- the overall **period**;
- the **referralRequest** (a ServiceRequest);
- the **careManager** (the coordinating practitioner or role) and the **careTeam**.

> One EpisodeOfCare spans many Encounters - link each visit back to the episode from the Encounter's `episodeOfCare`, rather than opening a fresh episode per visit.
