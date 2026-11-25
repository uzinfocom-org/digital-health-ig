ValueSet: MedicationDispenseStatusVS
Id: medicationdispense-status-vs
Title: "MedicationDispense status"
Description: "MedicationDispense statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationdispense-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationDispenseStatusCS)


* include codes from system $medicationdispense-status