ValueSet: ConsentProvisionTypeVS
Id: consent-provision-type-vs
Title: "Consent provision type"
Description: "Determines the type of consent"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/consent-provision-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ConsentProvisionTypeCS)

* include $consent-provision-type#deny
* include $consent-provision-type#permit
