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
* identifier ^short = "Identifier of the ObservationDefinition"

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
* code ^short = "Laboratory panel or test code displayed in the Patient Portal"
* permittedUnit MS
* permittedUnit from $ucum-common (preferred)
* permittedUnit ^short = "Permitted unit of measure for the laboratory analyte value"

* method MS
* method from LabMethodsVS (example)
* method ^short = "Laboratory method used to perform the test or analyte measurement"

* qualifiedValue MS    
  * context from ReferenceRangeMeaningVS (extensible)
  * gender from AdministrativeGenderVS (required)
  * rangeCategory from ObservationRangeCategoryVS (required)
  * range ^short = "Reference range used as the normal value for the laboratory analyte displayed in the Patient Portal"
  * normalCodedValueSet ^short = "Value set defining coded normal values for the laboratory analyte"
* hasMember MS
* hasMember ^short = "Definitions of related resources belonging to this kind of observation group"

* component MS
  * code from ObservationCodesVS (example)
  * code ^short = "Laboratory analyte or indicator code included in the laboratory panel displayed in the Patient Portal"
