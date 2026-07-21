ValueSet: FMStatusVS
Id: fm-status-vs
Title: "Financial Management Status Value set"
Description: "Status codes used to indicate the current state of a financial management resource"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/fm-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FMStatusCS)
* include codes from system $fm-status