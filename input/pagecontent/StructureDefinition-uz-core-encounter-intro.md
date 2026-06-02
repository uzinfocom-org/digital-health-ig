UZ Core Encounter represents a single interaction between a patient and the health system - a visit - on the Digital Health Platform. It is the pivot of the patient journey: [Observations](StructureDefinition-uz-core-observation.html), [Procedures](StructureDefinition-uz-core-procedure.html), [Conditions](StructureDefinition-uz-core-condition.html), MedicationRequests, and clinical documents all reference the Encounter they belong to. It carries the `class` and `status` of the visit, the `actualPeriod`, the `diagnosis` list (each pointing at a [Condition](StructureDefinition-uz-core-condition.html)), `location`, `serviceProvider`, and `admission`/discharge detail. An Encounter may be grouped under an [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) through `episodeOfCare`.

### Each UZ Core Encounter **Must Have**

- a **status** (planned | in-progress | completed | cancelled ...) - required binding, inherited as mandatory from the base resource;
- when a **location** is recorded, its **location** reference is mandatory (`location.location` 1..1) - you cannot list a location entry without saying which place it is.

### Each UZ Core Encounter **Must Support**

- an **identifier** (0..1);
- the **status**, **class**, **priority**, and **type** (each a required binding);
- a **serviceType** (referencing a HealthcareService);
- the **subject** (the patient) and the **subjectStatus** (required binding);
- **episodeOfCare**, **basedOn**, **careTeam**, and **partOf** links;
- the **serviceProvider** organization;
- **participant** entries with their **actor**, **type** (extensible binding), and **period**;
- the **appointment** that scheduled the encounter;
- the **reason** - with a `use` (preferred binding) and a `value` referencing a Condition, DiagnosticReport, Procedure, or Observation;
- the **virtualService** (telemedicine) detail;
- the **actualPeriod**, **plannedStartDate**, **plannedEndDate**, and **length**;
- the **diagnosis** list, each with its **condition** (a Condition reference) and **use**;
- the **account** for billing;
- **admission** detail - origin, admitSource, reAdmission, destination, dischargeDisposition (each coded value is a required binding);
- the **location** where the encounter takes place.

> An Encounter cannot be set to `completed` while its period end is earlier than its start - check `actualPeriod` before closing the visit.
