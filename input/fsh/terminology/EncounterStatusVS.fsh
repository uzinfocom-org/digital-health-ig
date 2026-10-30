ValueSet: EncounterStatusVS
Id: encounter-status-vs
Title: "Encounter status"
Description: "Encounter statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterStatusCS)

* include codes from system $encounter-status
