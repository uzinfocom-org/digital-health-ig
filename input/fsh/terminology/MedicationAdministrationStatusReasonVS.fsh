ValueSet: MedicationAdministrationStatusReasonVS
Id: medicationadministration-status-reason-vs
Title: "MedicationAdministration status reason"
Description: "Reasons a medication administration was not done, stopped or put on hold, with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationadministration-status-reason-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusReasonCS)

* include codes from system $medicationrequest-status-reason