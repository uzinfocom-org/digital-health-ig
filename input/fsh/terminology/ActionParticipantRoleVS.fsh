ValueSet: ActionParticipantRoleVS
Id: action-participant-role-vs
Title: "Action Participant Role VS"
Description: "Value Set for Action Participant Role"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/action-participant-role-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActionParticipantRoleCS)



// Enumerated to match the supplement, which translates exactly these two roles.
* include $sct#309343006
* include $sct#106292003
