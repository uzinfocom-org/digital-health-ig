ValueSet: SubstanceStatusVS
Id: substance-status-vs
Title: "Substance status"
Description: "Substance statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/substance-status-vs"
* ^status = #active
* ^experimental = false
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SubstanceStatusCS)

* include codes from system $substance-status
