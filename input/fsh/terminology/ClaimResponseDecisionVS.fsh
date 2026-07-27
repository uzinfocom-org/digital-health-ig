ValueSet: ClaimResponseDecisionVS
Id: claim-response-decision-vs
Title: "Claim Response Decision VS"
Description: "Defines claim response decision codes in Uzbek and Russian"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-decision-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseDecisionCS)

* include codes from system $claim-response-decision





