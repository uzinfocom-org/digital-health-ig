ValueSet: ClaimFMStatusVS
Id: claim-fm-status-vs
Title: "Claim Financial Management Status Value set"
Description: "Status codes used to indicate the current state of a claim"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-fm-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimFMStatusCS)
* include codes from system $fm-status