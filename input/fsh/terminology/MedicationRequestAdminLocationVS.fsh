ValueSet: MedicationRequestAdminLocationVS
Id: medicationrequest-admin-location-vs
Title: "Medication Request Administration Location ValueSet"
Description: "A value set defining the category of a medication request (setting where the medication is administered or prescribed), supplemented with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-admin-location-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[0].valueCanonical = Canonical(MedicationRequestAdminLocationCS)

* include codes from system $medicationrequest-admin-location