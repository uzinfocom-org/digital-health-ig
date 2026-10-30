ValueSet: ConditionVerificationStatusVS
Id: condition-verification-status-vs
Title: "Condition verification status"
Description: "Condition verification statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/condition-verification-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ConditionVerificationStatusCS)
* include codes from system $condition-verification-status
