Profile: UZCoreActivityDefinition
Parent: ActivityDefinition
Id: uz-core-activity-definition
Title: "UZ Core ActivityDefinition"
Description: "Uzbekistan Core ActivityDefinition Profile, used for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context."
* ^experimental = true
* ^status = #active
* ^date = "2025-08-18"
* ^publisher = "Uzinfocom"

* url MS
* identifier MS
* version MS
* versionAlgorithm[x] MS
* name MS
* title MS
* status MS
* status from PublicationStatusVS (required)
* subject[x] MS
* date MS
* publisher MS
* description MS
* effectivePeriod MS
* kind MS
* profile MS
* code MS
* code from ProcedureCodeVS (example)
* intent MS
* intent from RequestIntentVS (required)
* priority MS
* priority from RequestPriorityVS (required)
* doNotPerform MS
* timing[x] MS
* participant MS
  * type MS
  * type from ActionParticipantTypeVS (required)
  * typeCanonical MS
  * typeReference MS
  * role MS
  * function MS
* product[x] MS
* quantity MS
* dosage MS
* bodySite MS
* bodySite from $bodysite (example)
* specimenRequirement MS
* observationRequirement MS
* observationResultRequirement MS
* transform MS
* dynamicValue MS
  * path MS
  * expression MS


Instance: example-activity-definition
InstanceOf: UZCoreActivityDefinition
Usage: #example
Title: "Example ActivityDefinition — Childhood Vaccination"
Description: "An example ActivityDefinition for a routine childhood vaccination activity within the Uzbekistan Digital Health Platform."

* url = "https://dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"
* identifier[0].system = $mis-dmed-uz
* identifier[0].value = "actdef-vac-0001"
* version = "1.0.0"
* name = "ChildhoodVaccinationActivity"
* title = "Childhood Vaccination Activity"
* status = $publication-status#active "Active"
* date = "2025-08-18"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* description = "Routine childhood vaccination activity definition for the national immunization schedule."
* effectivePeriod.start = "2025-01-01"
* kind = #ImmunizationRecommendation
* intent = $request-intent#plan "Plan"
* priority = $request-priority#routine "Routine"
* doNotPerform = false
* participant[0]
  * type = $action-participant-type#practitioner "Practitioner"
  * role.coding = $sct#224535009 "Registered nurse"
