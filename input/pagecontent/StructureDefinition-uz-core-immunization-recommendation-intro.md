UZ Core ImmunizationRecommendation is a computed forecast of which vaccines a patient is due, overdue or scheduled for on the Digital Health Platform. It is generated automatically from the active national immunization schedule (see [PlanDefinition](StructureDefinition-uz-core-plan-definition.html)), the patient's [Immunization](StructureDefinition-uz-core-immunization.html) history, and their demographics - it is not hand-entered. Each recommendation entry names a vaccine and/or target disease, the forecast status (due, overdue, and so on), the dose number in the series, and the dates that drive the recommendation. It references the [Patient](StructureDefinition-uz-core-patient.html) the forecast is for.

### Each UZ Core ImmunizationRecommendation **Must Have**

- the **patient** the forecast is for;
- the **date** the recommendation was created;
- at least one **recommendation** entry, each of which must carry a **forecast status** (due, overdue, scheduled, etc.) and either a **vaccine code** or a **target disease** (the `uzcore-imrec-1` rule requires at least one of the two);
- where a **date criterion** is given, its **code** (which kind of date) and its **value** (the date itself).

### Each UZ Core ImmunizationRecommendation **Must Support**

- a business **identifier** and the responsible **authority** organization;
- within each recommendation entry: the **vaccine code**, **target disease**, any **contraindicated vaccine code**, the **forecast reason**, and the **date criterion** (e.g. earliest date to give, date due, date overdue);
- the **description**, **series** name, **dose number** and total **series doses**;
- the **supporting immunization** records and **supporting patient information** the forecast was based on.

> This resource is produced by the recommendation engine. Clients read it to know what is due; they should not author it directly.
