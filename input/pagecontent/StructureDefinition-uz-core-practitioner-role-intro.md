UZ Core PractitionerRole is the join that places a [Practitioner](StructureDefinition-uz-core-practitioner.html) inside an [Organization](StructureDefinition-uz-core-organization.html) - and optionally at a [Location](StructureDefinition-uz-core-location.html) or offering a [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) - with a stated role and specialty. This is the context that clinical resources point to as the performer or requester: it answers "in what capacity, and on whose behalf, did this professional act". Roles and specialties are coded from the Tibtoifa-derived national value sets.

### Each UZ Core PractitionerRole **Must Have**

The base FHIR PractitionerRole has no mandatory elements, and this profile does not add any. In practice you will populate the practitioner and organization references together (see Must Support below).

### Each UZ Core PractitionerRole **Must Support**

- the **active** flag;
- the **practitioner** reference (who is acting);
- the **organization** reference (the employer or hosting organization);
- a **role** code (`code`) - the position/profession, from the national role value set;
- a **specialty** - the clinical specialization, from the national profession-specialization value set;
- a **location** reference (where the role is exercised);
- a **healthcareService** reference (the service the role delivers).

> Role and specialty are sliced to the DHP national code systems, but free text (`code.text`) is allowed where a coded value is not available.
