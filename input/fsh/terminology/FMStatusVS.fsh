ValueSet: FMStatusVS
Id: fm-status-vs
Title: "Financial management status"
Description: "Financial management statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/fm-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FMStatusCS)
* include codes from system $fm-status