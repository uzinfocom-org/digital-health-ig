ValueSet: ObservationCodesVS
Id: observation-codes-vs
Title: "Observation codes"
Description: "Observation codes in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-codes-vs"
* ^experimental = true

* include codes from system $lab-research
* include codes from system $lab-diagnostic
* include codes from system $loinc
