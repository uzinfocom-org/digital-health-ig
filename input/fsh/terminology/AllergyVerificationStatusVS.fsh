ValueSet: AllergyVerificationStatusVS
Id: allergy-verification-status-vs
Title: "Allergy verification status value set"
Description: "Value set defining codes that represent the verification status of an allergy or intolerance."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/allergy-verification-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AllergyVerificationStatusCS)

* include codes from system $allergy-verification
