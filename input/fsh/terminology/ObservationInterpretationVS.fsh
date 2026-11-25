ValueSet: ObservationInterpretationVS
Id: observation-interpretation-vs
Title: "Observation interpretation"
Description: "Observation interpretations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-interpretation-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ObservationInterpretationCS)
* include codes from system $observation-interpretation
