ValueSet: FundingSourceVS
Id: funding-source-vs
Title: "Immunization funding source value set"
Description: "Immunization funding source codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/funding-source-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FundingSourceCS)

* $immunization-funding-source#private "Private"
* $immunization-funding-source#public "Public"