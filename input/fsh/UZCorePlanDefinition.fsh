Profile: UZCorePlanDefinition
Parent: PlanDefinition
Id: uz-core-plan-definition
Title: "UZ Core PlanDefinition"
Description: "UZ Core profile for Stores and represents the National Immunization Schedule of Uzbekistan, including planned vaccines, recommended administration periods, target age groups, dose sequences, and related scheduling rules. This profile is used to define structured immunization activities that support consistent planning, implementation, and exchange of vaccination schedules within the national digital health ecosystem."
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
* useContext MS
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

Instance: example-uz-core-plan-definition
InstanceOf: UZCorePlanDefinition
Usage: #example
Title: "UZ Core PlanDefinition"
Description: "Uzbekistan Core PlanDefinition profile, used to represent structured clinical and administrative workflow definitions, including actions, timing, participants, and related activities"
* id = "example-uz-core-plan-definition"

* url = "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-plan-definition"

// * version = "1.0.0"

* name = "ExamplePlanDefinition"
* title = "Example Vaccination Follow-up Plan"
* status = $publication-status#draft
* date = "2026-08-10"
* publisher = "DHP Uzbekistan"
* description = "Example PlanDefinition demonstrating actions and relationships."
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



