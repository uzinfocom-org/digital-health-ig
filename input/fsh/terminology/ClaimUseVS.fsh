ValueSet: ClaimUseVS
Id: claim-use-vs
Title: "Claim Use Value set"
Description: "A ValueSet defining the purpose of a Claim."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimUseCS)
* include codes from system $claim-use

