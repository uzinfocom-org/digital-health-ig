ValueSet: MedicationRequestStatusReasonVS
Id: medicationrequest-status-reason-vs
Title: "MedicationRequest Status Reason ValueSet"
Description: "A value set defining the reasons for a medication request status change, supplemented with Uzbek and Russian translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-status-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusReasonCS)

* include codes from system $medicationrequest-status-reason
