ValueSet: MedicationDispenseStatusVS
Id: medicationdispense-status-vs
Title: "MedicationDispense Status"
Description: "Allowed HL7 MedicationDispense status codes with Uzbek/Russian display translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationdispense-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationDispenseStatusCS)


* include codes from system $medicationdispense-status