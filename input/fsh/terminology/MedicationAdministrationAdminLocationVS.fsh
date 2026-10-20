ValueSet: MedicationAdministrationAdminLocationVS
Id: medicationadministration-admin-location-vs
Title: "MedicationAdministration admin location"
Description: "Settings where a medication is administered: inpatient, outpatient or community, with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationadministration-admin-location-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestAdminLocationCS)

* include codes from system $medicationrequest-admin-location
