Profile: UZCoreImmunizationPlanDefinition
Parent: PlanDefinition
Id: uz-core-immunization-plan-definition
Title: "UZ Core Immunization PlanDefinition"
Description: "Uzbekistan Core profile that stores and represents the National Immunization Schedule of Uzbekistan, including planned vaccines, recommended administration periods, target age groups, dose sequences, and related scheduling rules. It is used to define structured immunization activities that support consistent planning, implementation, and exchange of vaccination schedules within the national digital health ecosystem."
* ^status = #draft
* ^experimental = true

* url 1..1 MS
* url ^short = "Canonical identifier for this PlanDefinition"

* identifier MS
* version MS
* versionAlgorithm[x] MS
* versionAlgorithm[x] from VersionAlgorithmVS (extensible)

* name 1..1 MS
* name ^short = "Machine-processable name for this PlanDefinition"

* title MS
* status MS
* status from PublicationStatusVS (required)

* subject[x] MS
* subject[x] only CodeableConcept or Reference
* subjectCodeableConcept MS
* subjectReference MS
* subjectReference only Reference(
    Group or
    MedicinalProductDefinition or
    SubstanceDefinition or
    AdministrableProductDefinition or
    ManufacturedItemDefinition or
    PackagedProductDefinition
)

* date MS
* publisher MS
* description 1..1 MS

// useContext lets clients tell immunization schedules apart from other PlanDefinitions on the
// server. Every UZ Core immunization schedule carries a fixed focus context, so it is found with
// GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct|33879002
* useContext 1..* MS
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext ^slicing.description = "Distinguishes immunization schedules from other PlanDefinitions"
* useContext contains immunizationFocus 1..1 MS
* useContext[immunizationFocus] ^short = "Marks this PlanDefinition as an immunization schedule"
* useContext[immunizationFocus].code = $usage-context-type#focus
* useContext[immunizationFocus].value[x] only CodeableConcept
* useContext[immunizationFocus].valueCodeableConcept.coding 1..1
* useContext[immunizationFocus].valueCodeableConcept.coding.system 1..1
* useContext[immunizationFocus].valueCodeableConcept.coding.code 1..1
* useContext[immunizationFocus].valueCodeableConcept.coding.display ^short = "Active immunization"
* useContext[immunizationFocus].valueCodeableConcept = $sct#33879002

* approvalDate MS
* effectivePeriod MS

* action MS
* action ^short = "Definition of action included in the plan"

* action.linkId MS
* action.linkId ^short = "Unique id for the action in the PlanDefinition"

* action.title MS
* action.description MS

* action.code MS
* action.code from ActionCodeVS (example)

// A vaccine dose is often applicable to several risk groups, but action.subject is 0..1.
// Model one action per risk group rather than repeating subject; the precise eligibility
// rule lives in action.condition (kind = applicability).
* action.subject[x] MS
* action.subject[x] only CodeableConcept
* action.subjectCodeableConcept from RiskGroupVS (extensible)
* action.subject[x] ^short = "Risk group this immunization action is applicable to"

* action.condition MS
* action.condition.kind MS
* action.condition.kind from ActionConditionVS (required)
* action.condition.expression MS

* action.relatedAction MS
* action.relatedAction.targetId MS
* action.relatedAction.targetId ^short = "Identifier of related action"
* action.relatedAction.targetId ^comment = "targetId should reference an existing action.linkId."
* action.relatedAction.relationship  MS
* action.relatedAction.relationship from ActionRelationshipTypeVS (required)

* action.relatedAction.offset[x] MS
* action.relatedAction.offset[x] only Duration or Range
* action.relatedAction.offsetDuration MS
* action.relatedAction.offsetRange MS

* action.timing[x] MS
* action.timing[x] only Age or Timing
* action.timingAge MS
* action.timingTiming MS

* action.participant MS
* action.participant.actorId MS
* action.participant.type MS
* action.participant.type from ParticipantResourceTypesVS (required)

* action.definition[x] MS
* action.definition[x] only canonical or uri
* action.definitionCanonical only Canonical(
    ActivityDefinition or
    MessageDefinition or
    ObservationDefinition or
    PlanDefinition or
    Questionnaire or
    SpecimenDefinition
)
* action.definitionCanonical MS
* action.definitionUri MS

Instance: example-uz-core-immunization-plan-definition
InstanceOf: UZCoreImmunizationPlanDefinition
Usage: #example
Title: "UZ Core Immunization PlanDefinition"
Description: "Uzbekistan Core Immunization PlanDefinition profile, used to represent structured immunization schedule definitions, including actions, timing, participants, and related activities"
* id = "example-uz-core-immunization-plan-definition"

* url = "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition"

// * version = "1.0.0"

* name = "ExampleImmunizationPlanDefinition"
* title = "Example Vaccination Follow-up Plan"
* status = $publication-status#draft
* date = "2026-08-10"
* publisher = "DHP Uzbekistan"
* description = "Example PlanDefinition demonstrating actions and relationships."
* useContext[immunizationFocus].code = $usage-context-type#focus
* useContext[immunizationFocus].valueCodeableConcept = $sct#33879002 "Active immunization"
* approvalDate = "2026-08-01"

* effectivePeriod.start = "2026-08-01"
* effectivePeriod.end = "2027-08-01"

* action[0].id = "action-1"
* action[0].linkId = "action-1"
* action[0].title = "Initial vaccination"
* action[0].description = "Administer first vaccine dose."
* action[0].code = $action-code#recommend-immunization "Recommend an immunization"
* action[0].condition[0].kind = $action-condition-kind#applicability "Applicability"
* action[0].condition[0].expression.description = "Patient must be 18 years or older"
* action[0].condition[0].expression.language = #text/fhirpath
* action[0].condition[0].expression.expression = "Patient.birthDate <= today() - 18 years"
* action[0].participant[0].type = $action-participant-type#practitioner
* action[0].participant[0].actorId = "vaccinator"
* action[0].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"


* action[1].id = "action-2"
* action[1].linkId = "action-2"
* action[1].title = "Follow-up vaccination"
* action[1].description = "Administer second vaccine dose."
* action[1].relatedAction[0].targetId = "action-1"
* action[1].relatedAction[0].relationship = $action-relationship-type#after-end
* action[1].relatedAction[0].offsetDuration.value = 30
* action[1].relatedAction[0].offsetDuration.unit = "days"
* action[1].relatedAction[0].offsetDuration.system = "http://unitsofmeasure.org"
* action[1].relatedAction[0].offsetDuration.code = #d
* action[1].participant[0].type = $action-participant-type#practitioner
* action[1].participant[0].actorId = "vaccinator"
* action[1].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"


Instance: example-hepatitis-b-risk-based-schedule
InstanceOf: UZCoreImmunizationPlanDefinition
Usage: #example
Title: "Example UZ Core Immunization PlanDefinition - Hepatitis B by risk group"
Description: "Hepatitis B schedule demonstrating risk-group-targeted actions: a universal birth dose, the protocol for infants of HBsAg-positive mothers, and the occupational 0-1-6 month series for healthcare workers. Each dose targets a single risk group via action.subject, so risk groups are expressed as separate actions rather than a repeating field."
* id = "example-hepatitis-b-risk-based-schedule"

* url = "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-hepatitis-b-risk-based-schedule"
* name = "HepatitisBRiskBasedImmunizationSchedule"
* title = "Hepatitis B Immunization Schedule by Risk Group"
* status = $publication-status#draft
* experimental = true
* date = "2026-06-29"
* publisher = "DHP Uzbekistan"
* description = "National hepatitis B immunization actions, split by the population each dose targets. The universal birth dose applies to all newborns; additional actions target infants of HBsAg-positive mothers and occupationally exposed healthcare workers."

* useContext[immunizationFocus].code = $usage-context-type#focus
* useContext[immunizationFocus].valueCodeableConcept = $sct#33879002 "Active immunization"

* approvalDate = "2025-12-15"
* effectivePeriod.start = "2026-01-01"

// Action 0 - universal birth dose: applies to every newborn, so it carries no risk-group subject
* action[0].id = "hepb-birth-universal"
* action[0].linkId = "hepb-birth-universal"
* action[0].title = "Hepatitis B vaccine - birth dose"
* action[0].description = "Administer monovalent hepatitis B vaccine to all newborns within 24 hours of birth."
* action[0].code = $action-code#recommend-immunization "Recommend an immunization"
* action[0].timingAge.value = 0
* action[0].timingAge.unit = "day"
* action[0].timingAge.system = "http://unitsofmeasure.org"
* action[0].timingAge.code = #d
* action[0].participant[0].type = $action-participant-type#practitioner
* action[0].participant[0].actorId = "vaccinator"
* action[0].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/hepatitis-b-monovalent"

// Action 1 - infants of HBsAg-positive mothers (life-stage / exposure risk group)
* action[1].id = "hepb-hbsag-mother"
* action[1].linkId = "hepb-hbsag-mother"
* action[1].title = "Hepatitis B vaccine and HBIG - infant of HBsAg-positive mother"
* action[1].description = "For infants born to HBsAg-positive mothers, give the hepatitis B vaccine birth dose together with hepatitis B immunoglobulin (HBIG) within 12 hours of birth, then complete the primary series on schedule."
* action[1].code = $action-code#recommend-immunization "Recommend an immunization"
* action[1].subjectCodeableConcept = risk-group-cs#newborn-hbsag-positive-mother "Newborns of HBsAg-positive mothers"
* action[1].condition[0].kind = $action-condition-kind#applicability "Applicability"
* action[1].condition[0].expression.description = "Infant whose mother is hepatitis B surface antigen (HBsAg) positive"
* action[1].condition[0].expression.language = #text/fhirpath
* action[1].condition[0].expression.expression = "%maternalHBsAg = 'positive'"
* action[1].timingAge.value = 0
* action[1].timingAge.unit = "day"
* action[1].timingAge.system = "http://unitsofmeasure.org"
* action[1].timingAge.code = #d
* action[1].participant[0].type = $action-participant-type#practitioner
* action[1].participant[0].actorId = "vaccinator"
* action[1].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/hepatitis-b-monovalent"

// Action 2 - healthcare workers, dose 1 of the 0-1-6 month occupational series
* action[2].id = "hepb-hcw-dose1"
* action[2].linkId = "hepb-hcw-dose1"
* action[2].title = "Hepatitis B vaccine - healthcare worker, dose 1"
* action[2].description = "First dose of the 3-dose hepatitis B series for healthcare workers exposed to blood and body fluids who lack documented immunity."
* action[2].code = $action-code#recommend-immunization "Recommend an immunization"
* action[2].subjectCodeableConcept = risk-group-cs#medical-workers "Healthcare workers"
* action[2].condition[0].kind = $action-condition-kind#applicability "Applicability"
* action[2].condition[0].expression.description = "Healthcare worker with occupational exposure to blood or body fluids and no documented hepatitis B immunity"
* action[2].condition[0].expression.language = #text/fhirpath
* action[2].condition[0].expression.expression = "%occupationalBloodExposure = true"
* action[2].participant[0].type = $action-participant-type#practitioner
* action[2].participant[0].actorId = "vaccinator"
* action[2].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/hepatitis-b-adult"

// Action 3 - healthcare workers, dose 2 (one month after dose 1)
* action[3].id = "hepb-hcw-dose2"
* action[3].linkId = "hepb-hcw-dose2"
* action[3].title = "Hepatitis B vaccine - healthcare worker, dose 2"
* action[3].description = "Second dose, given one month after the first dose."
* action[3].code = $action-code#recommend-immunization "Recommend an immunization"
* action[3].subjectCodeableConcept = risk-group-cs#medical-workers "Healthcare workers"
* action[3].relatedAction[0].targetId = "hepb-hcw-dose1"
* action[3].relatedAction[0].relationship = $action-relationship-type#after-end
* action[3].relatedAction[0].offsetDuration.value = 1
* action[3].relatedAction[0].offsetDuration.unit = "month"
* action[3].relatedAction[0].offsetDuration.system = "http://unitsofmeasure.org"
* action[3].relatedAction[0].offsetDuration.code = #mo
* action[3].participant[0].type = $action-participant-type#practitioner
* action[3].participant[0].actorId = "vaccinator"
* action[3].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/hepatitis-b-adult"

// Action 4 - healthcare workers, dose 3 (six months after dose 1), completing the series
* action[4].id = "hepb-hcw-dose3"
* action[4].linkId = "hepb-hcw-dose3"
* action[4].title = "Hepatitis B vaccine - healthcare worker, dose 3"
* action[4].description = "Third dose, given six months after the first dose, completing the series."
* action[4].code = $action-code#recommend-immunization "Recommend an immunization"
* action[4].subjectCodeableConcept = risk-group-cs#medical-workers "Healthcare workers"
* action[4].relatedAction[0].targetId = "hepb-hcw-dose1"
* action[4].relatedAction[0].relationship = $action-relationship-type#after-end
* action[4].relatedAction[0].offsetDuration.value = 6
* action[4].relatedAction[0].offsetDuration.unit = "month"
* action[4].relatedAction[0].offsetDuration.system = "http://unitsofmeasure.org"
* action[4].relatedAction[0].offsetDuration.code = #mo
* action[4].participant[0].type = $action-participant-type#practitioner
* action[4].participant[0].actorId = "vaccinator"
* action[4].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/hepatitis-b-adult"



