ValueSet: ProcedureEventStatusVS
Id: procedure-event-status-vs
Title: "Procedure Event Status translations"
Description: "Procedure event status ValueSet with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-event-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureEventStatusCS)

* include codes from system $event-status