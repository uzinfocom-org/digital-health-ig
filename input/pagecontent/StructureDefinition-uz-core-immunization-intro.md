UZ Core Immunization records a single vaccine dose - whether it was administered or deliberately not given - for a patient on the Digital Health Platform. It captures what vaccine was given, the product, batch and dose, when and where it happened, who administered it, the protocol that was followed, and any reaction. It references the [Patient](StructureDefinition-uz-core-patient.html) who was vaccinated and the administering [Practitioner](StructureDefinition-uz-core-practitioner.html) or [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), and it may be linked back to the [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) that prompted it. A dose is uniquely identified by patient + vaccine code + occurrence + lot number, so the same dose is not recorded twice.

### Each UZ Core Immunization **Must Have**

- a **status** - `completed` (the dose was administered), `not-done` (a medical exemption or refusal, in which case give the **status reason**), or `entered-in-error`;
- the **vaccine code** - which vaccine was given (or would have been);
- the **patient** the record is about;
- an **occurrence** - the date the vaccine was administered (a date/time, or a string when only an approximate date is known);
- where a **performer** is recorded, the **actor** who administered the dose;
- where a **protocol** is recorded, the **dose number** within the series.

### Each UZ Core Immunization **Must Support**

- a business **identifier**, and **basedOn** - the order or [recommendation](StructureDefinition-uz-core-immunization-recommendation.html) that authorised the dose;
- the **status reason** (for a `not-done` record), the **administered product**, **manufacturer lot number** and **expiry date**, and the **dose quantity**;
- the **encounter**, **location**, administration **site** and **route**, and **supporting information**;
- the **primary source** flag and the **information source** (who reported the data);
- the **performer** (and their **function**/role), **notes**, and the **reason** for vaccination;
- the **subpotent** flag with its **reason**, **program eligibility** (program and participation status), and **funding source**;
- the **reaction** (date, manifestation, and whether self-reported);
- the **protocol applied** - series name, authority organization, target disease, dose number and total doses in the series.

> Use `status = not-done` with a **status reason** to record an exemption or refusal - do not omit the record. Reserve `entered-in-error` for records created by mistake.
