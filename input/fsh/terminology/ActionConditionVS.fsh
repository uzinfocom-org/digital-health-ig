ValueSet: ActionConditionVS
Id: action-condition-vs
Title: "Action condition translations"
Description: "Action condition codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-condition-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionConditionCS)

* include $action-condition-kind#applicability
* include $action-condition-kind#start
* include $action-condition-kind#stop