ValueSet: ObservationLoincVS
Id: observation-loinc-codes
Title: "Observation LOINC codes"
Description: "Observation LOINC codes with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-loinc-codes"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ObservationLoincCS)

* include codes from system $loinc
