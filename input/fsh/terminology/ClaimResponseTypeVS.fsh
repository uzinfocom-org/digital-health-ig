ValueSet: ClaimResponseTypeVS
Id: claim-response-type-vs
Title: "Claim Response Type VS"
Description: "Defines claim response type codes in Uzbek and Russian"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseTypeCS)

* include codes from system $claim-response-type
