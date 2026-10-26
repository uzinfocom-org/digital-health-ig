ValueSet: MedicationAdministrationStatusVS
Id: medicationadministration-status-vs
Title: "MedicationAdministration status"
Description: "Statuses of a medication administration, with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationadministration-status-vs"

* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationAdministrationStatusCS)
* include codes from system $medication-administration-status-codes
