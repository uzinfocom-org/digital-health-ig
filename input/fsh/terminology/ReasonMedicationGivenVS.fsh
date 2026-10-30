ValueSet: ReasonMedicationGivenVS
Id: reason-medication-given-vs
Title: "Reason medication given"
Description: "Reasons a medication was given, with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/reason-medication-given-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ReasonMedicationGivenCS)
* include codes from system $reason-medication-given-codes
