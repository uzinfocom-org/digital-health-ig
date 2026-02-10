ValueSet: MedicationRequestStatusVS
Id: medicationrequest-status-vs
Title: "Medication Request Status ValueSet"
Description: "A set of status values ​​for prescribing medications"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-status"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusCS)

* include codes from system $medicationrequest-status
