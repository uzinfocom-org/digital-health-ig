CodeSystem: ActionParticipantTypeCS
Id: action-participant-type-cs
Title: "Action Participant Type CS"
Description: "Action participant type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(action-participant-type-cs, $action-participant-type, 5.0.0)
* ^experimental = true

* #careteam
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tibbiy jamoa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская команда"

* #device
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qurilma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Устройство"

* #group
  * ^designation[0].language = #uz
  * ^designation[=].value = "Guruh"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Группа"

* #healthcareservice
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tibbiy xizmat"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская услуга"

* #location
  * ^designation[0].language = #uz
  * ^designation[=].value = "Joylashuv"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Место"

* #organization
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tashkilot"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Организация"

* #patient
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пациент"

* #practitioner
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shifokor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Врач"

* #practitionerrole
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shifokor roli"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Роль врача"

* #relatedperson
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qarindosh"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Связанное лицо"
