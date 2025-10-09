ValueSet: ObservationNormalValueVS
Id: observation-normal-value-vs
Title: "Observation normal value"
Description: "Observation normal value in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-normal-value-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ObservationNormalValueCS)

* include codes from system $observation-referencerange-normalvalue
