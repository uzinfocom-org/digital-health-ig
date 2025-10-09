ValueSet: ConditionVerificationStatusVS
Id: condition-verification-status-vs
Title: "Types of verification status"
Description: "Types of verification status in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/condition-verification-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ConditionVerificationStatusCS)
* include codes from system $condition-verification-status
