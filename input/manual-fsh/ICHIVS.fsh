ValueSet: ICHIVS
Id: ichi-vs
Title: "ICHI Codes"
Description: "WHO International Classification of Health Interventions codes that are current in the release this IG is built against. Codes WHO has withdrawn are inactive in the code system and excluded here, so nothing new can be coded with one."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ichi-vs"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^compose.inactive = false
* include codes from system $ichi
