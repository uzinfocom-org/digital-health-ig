ValueSet: ParticipantResourceTypesVS
Id: participant-resource-types-vs
Title: "Participant resource types translations"
Description: "Participant resource types codes with Uzbek and Russian translations"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/participant-resource-types-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ParticipantResourceTypesCS)

* include codes from system $action-participant-type
