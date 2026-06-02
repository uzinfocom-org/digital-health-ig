UZ Core Socioeconomic Observation captures a patient's preferential/benefit category and socioeconomic status - the facts that influence reimbursement eligibility, such as a disability or social-benefit group, as well as education, profession, and social status. It is modelled as an [Observation](StructureDefinition-uz-core-observation.html) so it lives alongside clinical observations but is categorised distinctly. Use the Observation endpoint to read and search these records.

### Each UZ Core Socioeconomic Observation **Must Have**

- a **subject** - the [Patient](StructureDefinition-uz-core-patient.html) the record is about (1..1);
- a **code** carrying the socioeconomic observation type, through the required `socioeconomicType` coding *slice* (1..1) - one of: *Eligible for benefit*, *Educational achievement*, *Occupation*, or *Social status* (SNOMED CT, bound to the DHP socioeconomic-observation-codes value set);
- an **effectiveDateTime** - when the data was recorded or applies (1..1);
- a **status** (inherited from the base resource).

### Each UZ Core Socioeconomic Observation **Must Support**

- the **subject**, the **code** (with its `socioeconomicType` slice), and the **effectiveDateTime** listed above.

> The `value[x]` is a CodeableConcept whose value set depends on the `code`: benefits use BenefitsVS, education uses EducationVS, profession uses PositionAndProfessionVS, and social status uses SocialStatusVS. Pick the value set that matches the chosen type code.
