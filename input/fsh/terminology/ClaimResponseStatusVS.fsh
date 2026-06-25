ValueSet: ClaimResponseStatusVS
Id: claim-response-status-vs
Title: "Claim Response Status VS"
Description: "Defines claim response status codes in Uzbek and Russian"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseStatusCS)

* include codes from system $claim-response-status





