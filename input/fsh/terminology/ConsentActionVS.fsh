ValueSet: ConsentActionVS
Id: consent-action-vs
Title: "Possible consent actions"
Description: "Determines the actions that can be taken with consent"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/consent-action-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ConsentActionCS)

* include $consent-action#collect
* include $consent-action#access
* include $consent-action#use
* include $consent-action#disclose
* include $consent-action#correct
