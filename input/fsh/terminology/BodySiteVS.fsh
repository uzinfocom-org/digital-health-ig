ValueSet: BodySiteVS
Id: body-site-vs
Title: "Body Site VS"
Description: "ValueSet for body site codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/body-site-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BodySiteCS)

* include $sct#368210008
* include $sct#368211007
* include $sct#368225008
* include $sct#368224007