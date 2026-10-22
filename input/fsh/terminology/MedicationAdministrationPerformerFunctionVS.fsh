ValueSet: MedicationAdministrationPerformerFunctionVS
Id: medicationadministration-performer-function-vs
Title: "MedicationAdministration performer function"
Description: "Roles a performer plays in a medication administration: performer, verifier or witness, with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationadministration-performer-function-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationAdministrationPerformerFunctionCS)
* include codes from system $medication-administration-performer-function-codes
