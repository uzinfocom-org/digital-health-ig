ValueSet: LabMethodsVS
Id: lab-method-vs
Title: "Observation Laboratory Methods"
Description: "Observation laboratory methods in Uzbekistan, including SNOMED CT methods with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/lab-method-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(LabMethodsSctCS)

// SNOMED CT laboratory methods
* include codes from system $sct where concept is-a #272394005
* include codes from system $sct where concept is-a #129264002
* include codes from system $sct where concept is-a #386053000

// Uzbekistan local laboratory methods
* include codes from system lab-methods-cs