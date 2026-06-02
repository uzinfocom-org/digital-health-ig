UZ Core Organization represents a healthcare or administrative organization - a hospital, clinic, medical association, or one of its sub-units - across the Digital Health Platform. It is referenced wherever a resource needs to name the responsible institution: as the employer in [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), the manager of a [Location](StructureDefinition-uz-core-location.html), or the provider of a [HealthcareService](StructureDefinition-uz-core-healthcareservice.html). Organizations are mastered in the Argos HRM system and identified by their Soliq tax ID, so you should **search for an existing Organization by identifier before creating a new one**. Organizations can form a hierarchy through `partOf`.

### Each UZ Core Organization **Must Have**

- a **name** in Uzbek - the authoritative organization name, with Russian and Karakalpak provided as translation extensions.

### Each UZ Core Organization **Must Support**

- an **identifier** - the Soliq tax ID slice, the Argos organization ID slice, and the SHIF/SMIF insurance-payor ID slice (a 3-letter + 6-digit code such as `OAA000024`). See [Identifier systems](identifiers.html) for the supported system URIs;
- the **active** flag;
- a **type** - several coded classification slices (organization type, subordination group, nomenclature group, organizational structure, service group, specialization, and grouping) drawn from the national code systems;
- the national **coverage-area** extension (the geographic area served);
- **contact** details;
- a **partOf** reference to a parent organization (the hierarchy link);
- an **endpoint** reference.

> Populate only the identifier and type *slices* that apply to your organization - you do not populate every slice.
