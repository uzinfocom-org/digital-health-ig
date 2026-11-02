ValueSet: MedicationRequestStatusReasonVS
Id: medicationrequest-status-reason-vs
Title: "MedicationRequest status reason"
Description: "MedicationRequest status reasons"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-status-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusReasonCS)

* include codes from system $medicationrequest-status-reason
