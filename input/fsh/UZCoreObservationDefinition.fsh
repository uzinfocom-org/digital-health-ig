Profile: UZCoreObservationDefinition
Parent: ObservationDefinition
Id: uz-core-observation-definition
Title: "UZ Core ObservationDefinition"
Description: "Uzbekistan Core ObservationDefinition profile, used to define reusable observation templates"
* ^experimental = true
* ^status = #active

* url MS
* url ^short = "Logical canonical URL to reference this ObservationDefinition (globally unique)"

* identifier MS
* identifier ^short = "Business identifier of the ObservationDefinition"

* name MS

* title MS

* status MS
* status from PublicationStatusVS (required)

* date MS
* date ^short = "Date last changed"

* description MS
* description ^short = "Natural language description of the ObservationDefinition"

* subject MS

* category MS
* category from ObservationCategoryVS (example)

* code MS
* code from ObservationCodesVS (example)

* permittedUnit MS
* permittedUnit from $ucum-common (preferred)

* method MS
* method from LabMethodsVS (example)

* bodySite MS
* bodySite from $bodysite (example)

* qualifiedValue MS    
  * context from ReferenceRangeMeaningVS (extensible)
  * appliesTo from $referencerange-appliesto (example)
  * gender from AdministrativeGenderVS (required)
  * rangeCategory from ObservationRangeCategoryVS (required)

* hasMember MS
* hasMember ^short = "Definitions of related resources belonging to this kind of observation group"

* component MS
  * code from ObservationCodesVS (example)