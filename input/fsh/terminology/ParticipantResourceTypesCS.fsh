CodeSystem: ParticipantResourceTypesCS
Id: participant-resource-types-cs
Title: "Participant resource types translations"
Description: "Participant resource types supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(participant-resource-types-cs, $action-participant-type, 5.0.0)

* #patient "Patient" 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пациент"

* #practitioner "Practitioner"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tibbiyot xodimi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинский работник"

* #relatedperson "RelatedPerson" 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qarindosh (ota-ona yoki vasiy)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Родитель / опекун"