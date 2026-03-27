ValueSet: ObservationLoincVS
Id: observation-loinc-codes
Title: "Observation loinc codes"
Description: "Observation loinc codes translation with Uzbek and Russian languages"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/observation-loinc-codes"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ObservationLoincCS)

* include codes from system $loinc
