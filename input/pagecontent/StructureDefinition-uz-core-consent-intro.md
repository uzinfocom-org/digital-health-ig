UZ Core Consent records the patient's own decision about whether their health data may be shared on the Digital Health Platform. The DHP consent model is intentionally binary - a single provision that either **permits** or **denies** - and the patient sets it themselves in the patient portal. The platform enforces it: when a consent denies access, a data request is refused with **HTTP 403**. Two exceptions exist - a lawful-access path for treating clinicians and other legally authorized parties, and an emergency **break-glass** path (recorded in [AuditEvent](StructureDefinition-uz-core-auditevent.html) with an emergency purpose-of-use). A Consent is anchored to its [Patient](StructureDefinition-uz-core-patient.html) through `subject`.

### Each UZ Core Consent **Must Have**

This profile adds no mandatory cardinality of its own. The only required element is the one inherited from the base resource: a **status** (the state of the consent record itself, bound to the DHP consent-state value set).

### Each UZ Core Consent **Must Support**

- a **subject** - the patient the consent belongs to;
- a **grantor** - the party granting the decision (the patient);
- a **period** - the **start** and **end** of the time the consent applies;
- a **regulatory basis** identifying the law or policy behind it (required binding);
- a **decision** - **permit** or **deny** (required binding);
- a **source** - either a **sourceAttachment** (with its **url** and **creation** date) or a **sourceReference** carrying the underlying consent document;
- a **provision** narrowing the decision, with its **action** and **purpose** (both required bindings).

> The decision is binary by design: one `decision` of `permit` or `deny`. The platform reads it to allow or refuse each data request.
