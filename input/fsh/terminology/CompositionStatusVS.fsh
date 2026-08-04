ValueSet: CompositionStatusVS
Id: composition-status-vs
Title: "Composition status"
Description: "Composition status codes with Uzbek and Russian designations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-status-vs"
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionStatusCS) 

* include codes from system $composition-status
