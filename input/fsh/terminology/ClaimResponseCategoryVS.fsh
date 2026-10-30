ValueSet: ClaimResponseCategoryVS
Id: claim-response-category-vs
Title: "Claim response category"
Description: "Claim response categories"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/claim-response-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClaimResponseCategoryCS)

* include $claim-response-category#benefit