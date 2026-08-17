Invariant: uzcore-plandef-1
Description: "A schedule must declare exactly one focus useContext, so clients can tell what kind of schedule it is"
* severity = #error
* expression = "useContext.where(code.system = 'http://terminology.hl7.org/CodeSystem/usage-context-type' and code.code = 'focus').count() = 1"

Profile: UZCorePlanDefinition
Parent: PlanDefinition
Id: uz-core-plan-definition
Title: "UZ Core PlanDefinition"
Description: "Uzbekistan Core PlanDefinition profile, used to represent national healthcare schedules - immunization, whole blood donation and screening - including planned activities, recommended administration or visit periods, target groups, dose and visit sequences, and related scheduling rules. It supports consistent planning, implementation, and exchange of these schedules within the national digital health ecosystem."
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

* insert MultilingualTitle(Plan definition)
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

// useContext lets clients tell schedules apart from other PlanDefinitions on the server, and tell
// the kinds of schedule apart from each other. Every UZ Core schedule carries exactly one focus
// context, so a schedule of a given kind is found with
// GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct|33879002
// The focus slices are 0..1 rather than 1..1: a schedule has one focus, not all of them. Making
// them mandatory would make SUSHI inject the missing fixed values into every instance.
* useContext 1..* MS
* obeys uzcore-plandef-1
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "value"
* useContext ^slicing.rules = #open
* useContext ^slicing.description = "Distinguishes healthcare schedules and their categories"

* useContext contains
    immunizationFocus 0..1 MS and
    scheduleCategory 0..1 MS and
    bloodDonationFocus 0..1 MS and
    screeningFocus 0..1 MS

* useContext[immunizationFocus] ^short = "Marks this PlanDefinition as an immunization schedule"
* useContext[immunizationFocus].code = $usage-context-type#focus
* useContext[immunizationFocus].value[x] only CodeableConcept
* useContext[immunizationFocus].valueCodeableConcept.coding 1..1
* useContext[immunizationFocus].valueCodeableConcept.coding.system 1..1
* useContext[immunizationFocus].valueCodeableConcept.coding.code 1..1
* useContext[immunizationFocus].valueCodeableConcept = $sct#33879002

* useContext[scheduleCategory] ^short = "Kind of immunization schedule"
* useContext[scheduleCategory] ^comment = "Only meaningful on immunization schedules; the bound value set is immunization-specific."
* useContext[scheduleCategory].code = $usage-context-type#topic
* useContext[scheduleCategory].value[x] only CodeableConcept
* useContext[scheduleCategory].valueCodeableConcept from ImmunizationScheduleTypeVS (required)

* useContext[bloodDonationFocus] ^short = "Marks this PlanDefinition as a whole blood donation schedule"
* useContext[bloodDonationFocus].code = $usage-context-type#focus
* useContext[bloodDonationFocus].value[x] only CodeableConcept
* useContext[bloodDonationFocus].valueCodeableConcept.coding 1..1
* useContext[bloodDonationFocus].valueCodeableConcept.coding.system 1..1
* useContext[bloodDonationFocus].valueCodeableConcept.coding.code 1..1
* useContext[bloodDonationFocus].valueCodeableConcept = $sct#25179006

* useContext[screeningFocus] ^short = "Marks this PlanDefinition as a screening schedule"
* useContext[screeningFocus].code = $usage-context-type#focus
* useContext[screeningFocus].value[x] only CodeableConcept
* useContext[screeningFocus].valueCodeableConcept.coding 1..1
* useContext[screeningFocus].valueCodeableConcept.coding.system 1..1
* useContext[screeningFocus].valueCodeableConcept.coding.code 1..1
* useContext[screeningFocus].valueCodeableConcept = $sct#360156006

* approvalDate MS
* effectivePeriod MS

* extension contains PlanDefinitionStatusHistory named statusHistory 0..* MS
* extension[statusHistory] ^short = "History of PlanDefinition status changes"

* action MS
* action ^short = "Definition of action included in the plan"

* action.linkId MS
* action.linkId ^short = "Unique id for the action in the PlanDefinition"

* action.title MS
* action.description MS

* action.code MS
* action.code from ActionCodeVS (example)

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

// definition[x]'s types and canonical targets are inherited from base R5 unchanged;
// restating them as choice-type slices makes the validator reject definitionCanonical
// with a false "allows for the type uri but found type canonical" error
* action.definition[x] MS

Instance: example-uz-core-immunization-plan-definition
InstanceOf: UZCorePlanDefinition
Usage: #example
Title: "Example UZ Core PlanDefinition - Immunization Schedule"
Description: "Example age-based national immunization schedule, showing the focus and category use contexts, the vaccination actions, their timing, and the relationship between two doses."
* id = "example-uz-core-immunization-plan-definition"

* url = "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-immunization-plan-definition"

// * version = "1.0.0"

* name = "ExampleImmunizationPlanDefinition"
* title = "Example Vaccination Follow-up Plan"
* status = $publication-status#draft
* date = "2026-08-10"
* publisher = "DHP Uzbekistan"
* description = "Example age-based immunization PlanDefinition demonstrating vaccination actions and relationships."

* useContext[immunizationFocus].code = $usage-context-type#focus
* useContext[immunizationFocus].valueCodeableConcept = $sct#33879002 "Active immunization"

* useContext[scheduleCategory].code = $usage-context-type#topic
* useContext[scheduleCategory].valueCodeableConcept = ImmunizationScheduleTypeCS#pd-type-0001-00001 "Age-based"

* approvalDate = "2026-08-01"

* effectivePeriod.start = "2026-08-01"
* effectivePeriod.end = "2027-08-01"

* extension[statusHistory].extension[status].valueCode = #draft
* extension[statusHistory].extension[period].valuePeriod.start = "2026-08-01"
* extension[statusHistory].extension[reason].valueString = "Initial draft."
* extension[statusHistory].extension[changedBy].valueReference = Reference(example-practitioner) 


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
* action[0].definitionCanonical = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"


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
* action[1].definitionCanonical = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"



