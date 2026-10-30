ValueSet: GTSAbbreviationVS
Id: v3-gts-abbreviation-vs
Title: "v3 GTS abbreviation"
Description: "v3 GTS abbreviations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/v3-gts-abbreviation-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GTSAbbreviationCS)

* include codes from system $v3-gts-abbreviation