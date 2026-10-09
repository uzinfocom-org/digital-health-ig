Invariant: uzcore-program-ad-1
Description: "A program activity must declare exactly one focus useContext"
Severity: #error
Expression: "useContext.where(code.system = 'http://terminology.hl7.org/CodeSystem/usage-context-type' and code.code = 'focus').count() = 1"

Profile: UZCoreProgramActivityDefinition
Parent: UZCoreActivityDefinition
Id: uz-core-program-activity-definition
Title: "UZ Core Program ActivityDefinition"
Description: "Uzbekistan Core ActivityDefinition profile for program activities that declare exactly one focus. The existing UZ Core ActivityDefinition remains available for previously published activities."
* ^status = #draft
* ^experimental = true
* url 1..1 MS
* useContext 1..* MS
* obeys uzcore-program-ad-1
* useContext ^slicing.discriminator[0].type = #value
* useContext ^slicing.discriminator[0].path = "code"
* useContext ^slicing.rules = #open
* useContext contains focus 1..1 MS
* useContext[focus].code = $usage-context-type#focus
* useContext[focus].value[x] only CodeableConcept
* useContext[focus].valueCodeableConcept.coding 1..1
* useContext[focus].valueCodeableConcept.coding.system 1..1
* useContext[focus].valueCodeableConcept.coding.code 1..1
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-shallComplyWith named compliesWith 0..* MS
* extension[compliesWith] ^short = "Definition, such as a Questionnaire, to comply with when performing this activity"

Instance: example-program-vaccination-activity
InstanceOf: UZCoreProgramActivityDefinition
Usage: #example
Title: "Example UZ Core Program ActivityDefinition - Vaccination"
Description: "An activity with an explicit immunization focus, alongside the existing vaccination activity example."
* language = #en
* url = "https://dhp.uz/fhir/core/ActivityDefinition/example-program-vaccination-activity"
* version = "1.0.0"
* name = "ExampleProgramVaccinationActivity"
* title = "Example vaccination program activity"
* status = #draft
* experimental = true
* subjectCodeableConcept = $resource-types#Patient
* useContext[focus].valueCodeableConcept = $sct#33879002 "Administration of vaccine to produce active immunity"
* kind = #ImmunizationRecommendation
* code = $sct#33879002 "Administration of vaccine to produce active immunity"
* intent = #plan
