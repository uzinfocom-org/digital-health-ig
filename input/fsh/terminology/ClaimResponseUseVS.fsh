ValueSet: ClaimResponseUseVS
Id: claim-response-use-vs
Title: "Claim Response Use VS"
Description: "Defines claim response use codes in Uzbek and Russian"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseUseCS)

* include codes from system $claim-response-use

