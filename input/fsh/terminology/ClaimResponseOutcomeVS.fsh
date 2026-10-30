ValueSet: ClaimResponseOutcomeVS
Id: claim-response-outcome-vs
Title: "ClaimResponse outcome"
Description: "ClaimResponse outcomes"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-outcome-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseOutcomeCS)

* include codes from system $claim-response-outcome





