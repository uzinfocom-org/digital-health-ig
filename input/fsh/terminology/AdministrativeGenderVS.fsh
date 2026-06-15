ValueSet: AdministrativeGenderVS
Id: administrative-gender-vs
Title: "Administrative gender"
Description: "Administrative gender in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/administrative-gender-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AdministrativeGenderCS)

* include codes from system $administrative-gender