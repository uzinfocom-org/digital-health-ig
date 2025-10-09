ValueSet: EncounterStatusVS
Id: encounter-status-vs
Title: "Encounter status translations"
Description: "Encounter status codes with English and Russian translations" 
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterStatusCS)

* include $encounter-status#planned
* include $encounter-status#in-progress
* include $encounter-status#completed
* include $encounter-status#cancelled
* include $encounter-status#entered-in-error
* include $encounter-status#unknown
