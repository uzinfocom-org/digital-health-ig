CodeSystem: ActionParticipantRoleCS
Id: action-participant-role-cs
Title: "Action Participant Role CS"
Description: "Action participant role supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(action-participant-role-cs, $sct, 5.0.0)


* #309343006
  * ^designation[0].language = #ru
  * ^designation[=].value = "Врач"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifokor"

* #106292003
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профессиональная медсестра"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Professional hamshira"