UZ Core Specimen represents a laboratory or other clinical specimen collected from a patient on the Digital Health Platform. In the laboratory flow it sits between the order and the result: `Specimen.request` references the `ServiceRequest` that triggered collection, and `Observation.specimen` on the result references back to the specimen. It carries the specimen type, the collection date/time, and identifiers used to track and match the specimen across systems.

### Each UZ Core Specimen **Must Have**

This profile adds no mandatory cardinality of its own, and the base Specimen resource has no mandatory elements - every constrained element is optional but Must Support.

### Each UZ Core Specimen **Must Support**

- an **identifier** used by the source system (e.g. the LIS) and an **accessionIdentifier** assigned by the laboratory on receipt;
- a **status** (e.g. available, unavailable) bound to the DHP specimen-status value set;
- a **type** (e.g. venous blood, urine, swab; preferred binding);
- a **subject** - where the specimen came from: a [Patient](StructureDefinition-uz-core-patient.html), a [Location](StructureDefinition-uz-core-location.html), or a Substance;
- a **receivedTime** - when the laboratory received the specimen;
- a **parent** specimen reference when this specimen is derived/aliquoted from another;
- a **request** - the `ServiceRequest` that ordered the collection;
- a **combined** flag (whether the container holds a pooled specimen; required binding) and a **role** (preferred binding);
- **collection** details: the **collector** ([Practitioner](StructureDefinition-uz-core-practitioner.html)), the **collected[x]** date/time, the **duration**, the **quantity**, the **method**, the **bodySite**, and the **fastingStatus[x]** (required binding).
