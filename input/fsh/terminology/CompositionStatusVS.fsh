ValueSet: CompositionStatusVS
Id: composition-status-vs
Title: "Document Reference Status ValueSet"
Description: "Defines the consent state codes in Russian and Uzbek"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/composition-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CompositionStatusCS) 

* include codes from system $composition-status