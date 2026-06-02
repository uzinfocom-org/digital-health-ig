UZ Core HealthcareService describes a service that an [Organization](StructureDefinition-uz-core-organization.html) offers at a [Location](StructureDefinition-uz-core-location.html). It has two jobs in the Digital Health Platform: routing referrals to the right provider, and acting as the catalogue of available laboratory tests - its category and type connect to the laboratory test and result definitions. A [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) can also point to the service a professional delivers.

### Each UZ Core HealthcareService **Must Have**

The base FHIR HealthcareService has no mandatory elements, and this profile does not add any. In practice you will populate the name, category, and type together (see Must Support below).

### Each UZ Core HealthcareService **Must Support**

- the **active** flag;
- a **name** for the service;
- a **category** - coded into either the DHP service category slice or the laboratory category slice (each bound to its national value set);
- a **type** - coded into either the DHP service slice or the laboratory test slice (each bound to its national value set).

> Use the laboratory category/type slices when the service is a lab test in the catalogue, and the DHP service slices for clinical services - populate the slice that matches, not both.
