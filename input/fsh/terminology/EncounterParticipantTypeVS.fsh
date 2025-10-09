ValueSet: EncounterParticipantTypeVS
Id: encounter-participant-type-vs
Title: "Encounter participant type translations"
Description: "Encounter participant type codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-participant-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ParticipantTypeCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ParticipationTypeCS)

* include $v3-ParticipationType#ADM
* include $v3-ParticipationType#ATND
* include $v3-ParticipationType#CALLBCK
* include $v3-ParticipationType#CON
* include $v3-ParticipationType#DIS
* include $v3-ParticipationType#ESC
* include $v3-ParticipationType#REF
* include $participant-type#translator
* include $participant-type#emergency
