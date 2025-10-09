CodeSystem: ParticipantTypeCS
Id: participanttype-cs
Title: "Participant type translations"
Description: "Participant type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(participanttype-cs, $participant-type, 0.5.0)

* #translator
  * ^designation[0].language = #ru
  * ^designation[=].value = "переводчик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "tarjimon"

* #emergency
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экстренный контакт"
  * ^designation[+].language = #uz
  * ^designation[=].value = "favqulodda aloqa"
