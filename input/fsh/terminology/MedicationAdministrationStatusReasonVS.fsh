ValueSet: MedicationAdministrationStatusReasonVS
Id: medication-administration-status-reason-vs
Title: "Medication Administration Status Reason ValueSet"
Description: "A value set defining codes that represent the medication administration status, supplemented with Uzbek and Russian translations."
* ^url = "https://dhp.uz/fhir/core/ValueSet/medication-administration-status-reason-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestStatusReasonCS)

* include codes from system $medicationrequest-status-reason