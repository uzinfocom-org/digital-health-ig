ValueSet: CommunicationCategoryVS
Id: communication-category-vs
Title: "Communication category"
Description: "Communication categories"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/communication-category-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CommunicationCategoryCS)

* include codes from system $communication-category
