ValueSet: ClaimResponseOutcomeVS
Id: claim-response-outcome-vs
Title: "Claim response outcome"
Description: "Claim response outcomes"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-outcome-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseOutcomeCS)

* include codes from system $claim-response-outcome





