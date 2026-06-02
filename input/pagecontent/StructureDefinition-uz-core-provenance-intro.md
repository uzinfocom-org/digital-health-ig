UZ Core Provenance records the origin, authorship and signature of a clinical record on the Digital Health Platform. Every clinically significant record should have a Provenance saying who recorded it and when; for signed documents the digital signature - created via **MyID** biometric authentication or **EDS / E-IMZO** - is carried in `Provenance.signature`, and `Provenance.target` references the signed resource. Provenance is generally written by the originating system alongside the data it describes, so most clients will read it rather than create it.

### Each UZ Core Provenance **Must Have**

This profile adds no mandatory cardinality of its own. The required elements are the ones inherited from the base resource: at least one **target** (the resource this Provenance describes) and at least one **agent** with a **who** (the actor responsible). Here `target` is constrained to a [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) or Medication, and `agent.who` to a [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html).

### Each UZ Core Provenance **Must Support**

- the **target** - the record this Provenance is about;
- the **occurredDateTime** - when the activity took place;
- the **activity** that was performed (required binding);
- the **patient** the activity involved;
- an **agent** with its **type** (the participation role, required binding) and **who** (a PractitionerRole);
- an **entity** with its **role** (required binding) and **what** it points to;
- a **signature** carrying its **type** (required binding), **when** it was made, **who** signed (a PractitionerRole), the **sigFormat** and the signature **data**.

> For signed documents, the MyID or EDS / E-IMZO signature blob lives in `signature.data`; `target` references the document that was signed.
