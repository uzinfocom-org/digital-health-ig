Profile: UZCorePlanDefinition
Parent: PlanDefinition
Id: uz-core-plan-definition
Title: "UZ Core PlanDefinition"
Description: "Uzbekistan Core profile for PlanDefinition resource"

* ^url = "https://terminology.dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition"
* ^status = #draft
* ^experimental = true

* url 1..1 MS
* url ^short = "Canonical identifier for this PlanDefinition"
* url obeys canonical-url-no-version-fragment

* identifier 0..* MS
* version 0..1 MS
* versionAlgorithm[x] 0..1 MS
* versionAlgorithm[x] from VersionAlgorithmVS (extensible)

* name 1..1 MS
* name ^short = "Machine-processable name for this PlanDefinition"

* title 0..1 MS
* status 1..1 MS
* status from PublicationStatusVS (required)

* subject[x] 0..1 MS
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

* date 0..1 MS
* publisher 0..1 MS
* description 0..1 MS
* useContext 0..* MS
* approvalDate 0..1 MS
* effectivePeriod 0..1 MS


* action 0..* MS
* action ^short = "Definition of action included in the plan"

* action.linkId 0..1 MS
* action.linkId ^short = "Unique id for the action in the PlanDefinition"

* action.title 0..1 MS
* action.description 0..1 MS

* action.code 0..1 MS
* action.code from ActionCodeVS (example)

* action.condition 0..* MS
* action.condition.kind 1..1 MS
* action.condition.kind from ActionConditionVS (required)
* action.condition.expression 0..1 MS

* action.relatedAction 0..* MS
* action.relatedAction.targetId 1..1 MS
* action.relatedAction.targetId ^short = "Identifier of related action"
* action.relatedAction.targetId ^comment = "targetId should reference an existing action.linkId."

* action.relatedAction.relationship 1..1 MS
* action.relatedAction.relationship from ActionRelationshipTypeVS (required)

* action.relatedAction.offset[x] 0..1 MS
* action.relatedAction.offset[x] only Duration or Range
* action.relatedAction.offsetDuration MS
* action.relatedAction.offsetRange MS

* action.timing[x] 0..1 MS
* action.timing[x] only Age or Timing
* action.timingAge MS
* action.timingTiming MS

* action.participant 0..* MS
* action.participant.actorId 0..1 MS
* action.participant.type 0..1 MS
* action.participant.type from ParticipantResourceTypesVS (required)

* action.definition[x] 0..1 MS
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


Invariant: canonical-url-no-version-fragment
Description: "Canonical URL must not contain | or #."
Severity: #warning
Expression: "matches('^[^|#]+$')"



Instance: example-uz-core-plan-definition
InstanceOf: UZCorePlanDefinition
Usage: #example
Title: "UZ Core PlanDefinition"
Description: "Uzbekistan Core PlanDefinition profile, used to represent structured clinical and administrative workflow definitions, including actions, timing, participants, and related activities"
* id = "example-uz-core-plan-definition"

* url = "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-plan-definition"
* identifier[0].system = "https://terminology.dhp.uz/fhir/core/sid/plan-definition"
* identifier[0].value = "PLAN-001"

// * version = "1.0.0"

* name = "ExamplePlanDefinition"
* title = "Example Vaccination Follow-up Plan"
* status = $publication-status#draft
* subjectReference = Reference(Group/example-patient-group)
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
* action[0].code = $action-code#collect-information "Collect information"
* action[0].condition[0].kind = $action-condition-kind#applicability "Applicability"

* action[0].condition[0].expression.description = "Patient must be older than 18 years"
* action[0].condition[0].expression.language = #text/plain
* action[0].condition[0].expression.expression = "Patient age is greater than 18 years"

* action[0].timingTiming.repeat.frequency = 1
* action[0].timingTiming.repeat.period = 1
* action[0].timingTiming.repeat.periodUnit = #d

* action[0].participant[0].type = $resource-types#patient
* action[0].participant[0].actorId = "vaccinator"

* action[0].definitionUri = "https://example.org/fhir/ActivityDefinition/vaccination"



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

* action[1].timingAge.value = 30
* action[1].timingAge.unit = "days"
* action[1].timingAge.system = "http://unitsofmeasure.org"
* action[1].timingAge.code = #d

* action[1].participant[0].type = $resource-types#practitioner
* action[1].participant[0].actorId = "vaccinator"

* action[1].definitionUri = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"



// this instance can be removed after Profile for group is created
Instance: example-patient-group
InstanceOf: Group
Usage: #example
* id = "example-patient-group"
* identifier.system = "https://terminology.dhp.uz/fhir/core/sid/group"
* identifier.value = "GROUP-001"
* active = true
* type = #person
* name = "Example Adult Patient Group"
* description = "Example group representing adult patients eligible for vaccination follow-up workflow."
* membership = #definitional

Instance: example-activity-definition
InstanceOf: ActivityDefinition
Title: "Example ActivityDefinition"
Description: "Example ActivityDefinition used by the UZ Core PlanDefinition example to represent the vaccination activity referenced from a plan action."
Usage: #example

* id = "example-activity-definition"
* url = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"

* status = #draft
* name = "ExampleActivityDefinition"
* kind = #Task