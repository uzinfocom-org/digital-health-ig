ValueSet: FlagCategoryVS
Id: flag-category-vs
Title: "Flag category"
Description: "Flag categories"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/flag-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FlagCategoryCS)
* include codes from system $flag-category
