ValueSet: ImmunizationSiteVS
Id: immunization-site-vs
Title: "Immunization site value set"
Description: "Immunization site codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/immunization-site-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ImmunizationSiteCS)

* $v3-ActSite#LA "Left arm"
* $v3-ActSite#RA "Right arm"
* $v3-ActSite#LT "Left thigh"
* $v3-ActSite#RT "Right thigh"