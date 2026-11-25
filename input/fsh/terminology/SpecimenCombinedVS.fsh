ValueSet: SpecimenCombinedVS
Id: specimen-combined-vs
Title: "Specimen combined status"
Description: "Specimen combined statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/specimen-combined-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SpecimenCombinedCS)

* include codes from system $specimen-combined
