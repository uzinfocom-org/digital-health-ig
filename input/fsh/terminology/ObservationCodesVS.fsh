ValueSet: ObservationCodesVS
Id: observation-codes
Title: "Observation codes"
Description: "Observation codes in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-codes"
* ^experimental = true

* include codes from system $lab-panels
* include codes from system $lab-analytes
* include codes from system $lab-hepatitis
* include codes from system $loinc
//* include codes from valueset $obs-loinc-vs
