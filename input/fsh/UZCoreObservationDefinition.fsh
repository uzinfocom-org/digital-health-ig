Profile: UZCoreLaboratoryObservationDefinition
Parent: ObservationDefinition
Id: uz-core-laboratory-observation-definition
Title: "UZ Core Laboratory ObservationDefinition"
Description: "Uzbekistan Core Laboratory ObservationDefinition profile, used to structurally describe laboratory services provided by healthcare organizations in the Patient Portal. It allows defining the laboratory service code, related analytes, reference ranges, and permitted coded normal values required to display information about laboratory tests to Patient Portal users."
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

// useContext lets clients tell laboratory definitions apart from other ObservationDefinitions on the
// server. Every UZ Core laboratory ObservationDefinition carries a fixed focus context, so it is found
// with GET [base]/ObservationDefinition?context-type-value=focus$http://snomed.info/sct|108252007
* useContext 1..* MS
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext ^slicing.description = "Distinguishes laboratory definitions from other ObservationDefinitions"
* useContext contains laboratoryFocus 1..1 MS
* useContext[laboratoryFocus] ^short = "Marks this ObservationDefinition as a laboratory definition"
* useContext[laboratoryFocus].code = $usage-context-type#focus
* useContext[laboratoryFocus].value[x] only CodeableConcept
* useContext[laboratoryFocus].valueCodeableConcept = $sct#108252007 "Laboratory procedure"

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
