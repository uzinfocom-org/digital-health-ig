ValueSet: ConsentProvisionTypeVS
Id: consent-provision-type-vs
Title: "Consent provision type"
Description: "Determines the type of consent"
* ^url = "https://terminology.medcore.uz/ValueSet/consent-provision-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ConsentProvisionTypeCS)
* ^version = "5.0.0"

* include $consent-provision-type#deny
* include $consent-provision-type#permit
