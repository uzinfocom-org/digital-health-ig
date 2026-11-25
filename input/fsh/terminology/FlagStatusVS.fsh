ValueSet: FlagStatusVS
Id: flag-status-vs
Title: "Flag status"
Description: "Flag statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/flag-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FlagStatusCS)
* include codes from system $flag-status
