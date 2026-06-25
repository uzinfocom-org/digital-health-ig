ValueSet: ClaimTypeCodeVS
Id: claim-type-code-vs
Title: "Claim Type Value set"
Description: "Types of healthcare claims used for billing and reimbursement."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-type-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimTypeCodeCS)
* include codes from system $claim-type