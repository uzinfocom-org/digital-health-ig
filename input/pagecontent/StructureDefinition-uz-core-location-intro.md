UZ Core Location represents a physical place - a building, department, branch, ward, room, or bed - operated by an [Organization](StructureDefinition-uz-core-organization.html). It is referenced by [Encounter](StructureDefinition-uz-core-encounter.html) to say where care happened and by [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) to say where a service is delivered. Locations can nest through `partOf` (for example a ward inside a building inside a site).

### Each UZ Core Location **Must Have**

- a **name** in Uzbek - the authoritative location name, with Russian and Karakalpak provided as translation extensions.

### Each UZ Core Location **Must Support**

- an **identifier** - the Soliq tax ID slice and a unit slice (branch, ward, or bed, typed from the location-kinds value set). See [Identifier systems](identifiers.html) for the supported system URIs;
- the **status** (active / suspended / inactive, from a required value set);
- the **type** of place (coded from the national location-types value set);
- **contact** details and an **address** (Uzbek coded administrative divisions);
- the **position** (geo-coordinates);
- the **managingOrganization** reference (who runs the place);
- a **partOf** reference to a containing location, **hoursOfOperation**, and an **endpoint** reference.

> `operationalStatus` (bed status) is reserved for future use.
