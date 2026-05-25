CodeSystem: ActionParticipantTypeCS
Id: action-participant-type-cs
Title: "Action Participant Type CS"
Description: "Action participant type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(action-participant-type-cs, $action-participant-type, 5.0.0)
* ^experimental = true

* #patient
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor"

* #practitioner
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинский работник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifokor / Mutaxassis"

* #practitionerrole
  * ^designation[0].language = #ru
  * ^designation[=].value = "Роль медицинского работника"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mutaxassis roli"

* #relatedperson
  * ^designation[0].language = #ru
  * ^designation[=].value = "Связанное лицо"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aloqador shaxs"