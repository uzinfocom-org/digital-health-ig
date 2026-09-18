ValueSet: MedicationAdministrationStatusCodesVS
Id: medication-administration-status-codes-vs
Title: "Medication Administration Status VS"
Description: "A value set defining codes that represent the medication administration status codes, supplemented with Uzbek and Russian translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-administration-status-codes-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationAdministrationStatusCodesCS)
* include codes from system $medication-administration-status-codes