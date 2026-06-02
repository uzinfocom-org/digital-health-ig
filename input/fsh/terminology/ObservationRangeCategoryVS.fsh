ValueSet: ObservationRangeCategoryVS
Id: observation-range-category-vs
Title: "Observation range category"
Description: "Observation range category in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-range-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ObservationRangeCategoryCS)

* include codes from system $observation-range-category