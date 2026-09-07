ValueSet: MedicationRequestStatusVS
Id: medicationrequest-status-vs
Title: "MedicationRequest Status ValueSet"
Description: "A value set defining the status of a medication request (active, on-hold, cancelled, completed, etc.) with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusCS)

* include codes from system $medicationrequest-status
