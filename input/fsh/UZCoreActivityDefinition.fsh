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
* versionAlgorithm[x] from VersionAlgorithmVS (extensible)

* name MS
* title MS

* status MS
* status from PublicationStatusVS (required)

* subject[x] MS
* subjectCodeableConcept MS
* subjectCodeableConcept from ResourceTypeVS (extensible)

* date MS
* publisher MS
* description MS

* effectivePeriod MS

* kind MS
* kind from RequestResourceTypesVS (required)

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
  * role from ActionParticipantRoleVS (example)

  * function MS

* product[x] MS
* productReference MS
* productCodeableConcept MS
* quantity MS
* dosage MS

* bodySite MS
* bodySite from BodySiteVS (example)

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
Description: "Routine childhood vaccination activity definition for Uzbekistan Digital Health Platform."


* id = "example-activity-definition"
* url = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"

* version = "1.0.0"
* name = "ChildhoodVaccinationActivity"
* title = "Childhood Vaccination Activity"

* status = $publication-status#active "Active"
* date = "2025-08-18"
* publisher = "Ministry of Health of the Republic of Uzbekistan"

* description = "Routine childhood vaccination activity definition."

* effectivePeriod.start = "2025-01-01"

* kind = #ImmunizationRecommendation
* intent = $request-intent#plan "Plan"
* priority = $request-priority#routine "Routine"
* doNotPerform = false

* subjectCodeableConcept = $resource-types#Patient

* code = $sct#33879002 "Administration of vaccine to produce active immunity"

* participant[0].type = $action-participant-type#practitioner "Practitioner"
* participant[0].role = $sct#106292003 