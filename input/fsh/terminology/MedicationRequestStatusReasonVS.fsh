ValueSet: MedicationRequestStatusReasonVS
Id: medicationrequest-status-reason-vs
Title: "MedicationRequest status reason"
Description: "MedicationRequest status reasons"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-status-reason-vs"
* ^experimental = true
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusReasonCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusReasonSctCS)

* include codes from system $medicationrequest-status-reason

* include $sct#438833006 "Administration of medication contraindicated"
