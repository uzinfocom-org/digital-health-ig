ValueSet: ActionCodeVS
Id: action-code-vs
Title: "Action code translations"
Description: "Action code codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-code-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionCodeCS)

* include $action-code#send-message
* include $action-code#recommend-immunization
* include $action-code#collect-information