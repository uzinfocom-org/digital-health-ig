CodeSystem: ParticipantResourceTypeCS
Id: participant-resource-type-cs
Title: "Participant resource type translations"
Description: "Participant resource type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(participant-resource-type-cs, $resource-types, 5.0.0)

* #Patient
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor"

* #Practitioner
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинский работник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifokor / Mutaxassis"

* #RelatedPerson
  * ^designation[0].language = #ru
  * ^designation[=].value = "Связанное лицо"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aloqador shaxs"