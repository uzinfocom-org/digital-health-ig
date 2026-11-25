ValueSet: MedicationKnowledgeStatusVS
Id: medicationknowledge-status-vs
Title: "MedicationKnowledge status"
Description: "MedicationKnowledge statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationknowledge-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationKnowledgeStatusCS)

* include codes from system $medicationknowledge-status