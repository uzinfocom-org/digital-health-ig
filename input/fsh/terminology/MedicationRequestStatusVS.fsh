ValueSet: MedicationRequestStatusVS
Id: medicationrequest-status-vs
Title: "MedicationRequest status"
Description: "MedicationRequest statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusCS)

* include codes from system $medicationrequest-status
