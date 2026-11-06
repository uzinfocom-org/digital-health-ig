ValueSet: AllergyReactionSeverityVS
Id: allergy-reaction-severity-vs
Title: "Allergy reaction severity"
Description: "Allergy reaction severities"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/allergy-reaction-severity-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AllergyReactionSeverityCS)

* include codes from system $allergy-reaction-severity
