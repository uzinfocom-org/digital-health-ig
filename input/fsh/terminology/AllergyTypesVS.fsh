ValueSet: AllergyTypesVS
Id: allergy-type-vs
Title: "Allergy types value set"
Description: "Value set defining codes representing different types of allergies or intolerances."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/allergy-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AllergyTypesCS)

* include codes from system $allergy-intolerance-type
