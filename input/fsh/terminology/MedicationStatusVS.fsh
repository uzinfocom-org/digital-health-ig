ValueSet: MedicationStatusVS
Id: medication-status-vs
Title: "Medication status type"
Description: "Medication status types in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationStatusCS)

* include codes from system $medication-status
