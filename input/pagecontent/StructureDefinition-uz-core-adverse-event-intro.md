UZ Core AdverseEvent records an adverse event such as a post-immunization reaction on the Digital Health Platform. It references the suspected entity that may have caused it - for a vaccine reaction this is the [Immunization](StructureDefinition-uz-core-immunization.html) - and it may be accompanied by an [Observation](StructureDefinition-uz-core-observation.html) or [Condition](StructureDefinition-uz-core-condition.html) describing the reaction itself. It identifies the [Patient](StructureDefinition-uz-core-patient.html) affected and the [Practitioner](StructureDefinition-uz-core-practitioner.html) who recorded it. The event can be an actual harm or an intercepted near-miss.

### Each UZ Core AdverseEvent **Must Have**

The base FHIR AdverseEvent has no mandatory elements, and this profile does not add any. In practice you will always populate the status, actuality, subject, and the suspect entity (see Must Support below).

### Each UZ Core AdverseEvent **Must Support**

- an **identifier**, the **status** of the record, and the **actuality** (actual harm versus a potential near-miss);
- the **subject** the event happened to, the **encounter**, and the **occurrence** (a date/time, period, or schedule);
- when the event was **detected** and its **recorded date**;
- the **resulting effect** - the [Condition](StructureDefinition-uz-core-condition.html) or [Observation](StructureDefinition-uz-core-observation.html) the event caused - and the **location**;
- the **seriousness** and **outcome**;
- the **recorder**, and the **participant** (their **function** and **actor**);
- the **suspect entity** - the **instance** suspected of causing the event, which for a post-immunization reaction is the [Immunization](StructureDefinition-uz-core-immunization.html);
- **notes**.

> For a post-immunization reaction, point the **suspect entity** at the [Immunization](StructureDefinition-uz-core-immunization.html) and use **resulting effect** to link the Condition or Observation that describes the reaction.
