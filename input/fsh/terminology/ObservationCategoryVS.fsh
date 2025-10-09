ValueSet: ObservationCategoryVS
Id: observation-category-vs
Title: "Observation category"
Description: "Observation category in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ObservationCategoryCS)

* include codes from system $observation-category
