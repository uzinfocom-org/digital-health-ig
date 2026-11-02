ValueSet: MedicationDispenseStatusReasonVS
Id: medicationdispense-status-reason-vs
Title: "MedicationDispense status reason"
Description: "MedicationDispense status reasons"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationdispense-status-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationDispenseStatusReasonCS)


* include codes from system $medicationdispense-status-reason