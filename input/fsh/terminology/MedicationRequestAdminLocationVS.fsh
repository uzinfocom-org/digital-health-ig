ValueSet: MedicationRequestAdminLocationVS
Id: medicationrequest-admin-location-vs
Title: "MedicationRequest Administration Location ValueSet"
Description: "A value set defining the category of a medication request (setting where the medication is administered or prescribed), supplemented with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-admin-location-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestAdminLocationCS)

* include codes from system $medicationrequest-admin-location
* include codes from system medication-request-order-type-cs