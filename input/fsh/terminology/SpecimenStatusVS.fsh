ValueSet: SpecimenStatusVS
Id: specimen-status-vs
Title: "Specimen Status"
Description: "Uzbekistan local specimen status types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/specimen-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SpecimenStatusCS)

* include codes from system $specimen-status
