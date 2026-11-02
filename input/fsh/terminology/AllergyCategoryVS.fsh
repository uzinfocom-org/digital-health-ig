ValueSet: AllergyCategoryVS
Id: allergy-category-vs
Title: "Allergy category"
Description: "Allergy categories"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/allergy-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AllergyCategoryCS)

* include codes from system $allergy-category
