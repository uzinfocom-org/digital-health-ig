ValueSet: BodySiteVS
Id: body-site-vs
Title: "Body site"
Description: "Body sites"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/body-site-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(BodySiteCS)

// * include codes from system $sct
* include codes from system $sct where concept is-a #123037004

// * include $sct#368210008
// * include $sct#368211007
// * include $sct#368225008
// * include $sct#368224007