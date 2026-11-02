ValueSet: MedicationAdministrationAdminLocationVS
Id: medicationadministration-admin-location-vs
Title: "MedicationAdministration admin location"
Description: "MedicationAdministration admin locations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationadministration-admin-location-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationAdministrationAdminLocationCS)

* include codes from system $medication-admin-location
