ValueSet: ObservationCodesVS
Id: observation-codes
Title: "Observation codes"
Description: "Observation codes in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-codes"
* ^experimental = true


//this laboratory codes migrated to integration-ig
//* include codes from system $lab-panels ssv inpatient laboratory codes include analitys with panels
//* include codes from system $lab-analytes ssv 1200 draft loinc codes
//* include codes from system $lab-hepatitis 
//* include codes from valueset $obs-loinc-vs 30000 loinc codes in uzbek language . This codes should upload to tx.fhir.org server
* include codes from system $loinc

