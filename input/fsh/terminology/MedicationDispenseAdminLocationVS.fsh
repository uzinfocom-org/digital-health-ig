ValueSet: MedicationDispenseAdminLocationVS
Id: medicationdispense-admin-location-vs
Title: "MedicationDispense AdminLocation"
Description: "Allowed MedicationDispense administration location codes with Uzbek/Russian display translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationdispense-admin-location-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationDispenseAdminLocationCS)


* include codes from system $medicationdispense-admin-location