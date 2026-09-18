ValueSet: ReasonMedicationGivenCodesVS
Id: reason-medication-given-codes-vs
Title: "Reason Medication Given VS"
Description: "A value set defining codes that represent the reason medication given, supplemented with Uzbek and Russian translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/reason-medication-given-codes-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ReasonMedicationGivenCodesCS)
* include codes from system $reason-medication-given-codes