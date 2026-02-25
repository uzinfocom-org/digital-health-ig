ValueSet: ObservationCodesVS
Id: observation-codes-vs
Title: "Observation codes"
Description: "Observation codes for laboratory results, vital signs, and quantitative clinical measurements in Uzbekistan. Includes LOINC and DHP custom laboratory codes."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-codes-vs"
* ^experimental = true

* include codes from system ObservationLabResearchCodesCS
* include codes from system $loinc
