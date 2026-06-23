ValueSet: ActionParticipantTypeVS
Id: action-participant-type-vs
Title: "Action Participant Type VS"
Description: "Action participant type ValueSet with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-participant-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionParticipantTypeCS)

* include codes from system $action-participant-type
