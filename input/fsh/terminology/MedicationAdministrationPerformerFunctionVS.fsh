ValueSet: MedicationAdministrationPerformerFunctionVS
Id: medicationadministration-performer-function-vs
Title: "MedicationAdministration performer function"
Description: "MedicationAdministration performer functions"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationadministration-performer-function-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationAdministrationPerformerFunctionCS)
* include codes from system $medication-administration-performer-function-codes
