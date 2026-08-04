ValueSet: ClaimResponseOutcomeVS
Id: claim-response-outcome-vs
Title: "Claim Response Outcome VS"
Description: "Defines claim response outcome codes in Uzbek and Russian"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-outcome-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseOutcomeCS)

* include codes from system $claim-response-outcome





