ValueSet: MedicationKnowledgeStatusVS
Id: medicationknowledge-status-vs
Title: "Medication Knowledge Status VS"
Description: "Medication knowledge status ValueSet with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationknowledge-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationKnowledgeStatusCS)

* include codes from system $medicationknowledge-status