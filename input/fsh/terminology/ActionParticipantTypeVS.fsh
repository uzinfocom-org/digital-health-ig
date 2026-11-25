ValueSet: ActionParticipantTypeVS
Id: action-participant-type-vs
Title: "Action participant type"
Description: "Action participant types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-participant-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionParticipantTypeCS)

* include codes from system $action-participant-type
