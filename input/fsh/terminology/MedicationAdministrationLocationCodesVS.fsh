ValueSet: MedicationAdministrationLocationCodesVS
Id: medication-administration-location-codes-vs
Title: "Medication Administration Location Codes VS"
Description: "A value set defining codes that represent the medication administration location, supplemented with Uzbek and Russian translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-administration-location-codes-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestAdminLocationCS)

* include codes from system $medicationrequest-admin-location