ValueSet: ObservationStatusVS
Id: observation-status-vs
Title: "Observation status"
Description: "Observation status in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ObservationStatusCS)

* include codes from system $observation-status
