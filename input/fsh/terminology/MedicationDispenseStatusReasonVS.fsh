ValueSet: MedicationDispenseStatusReasonVS
Id: medicationdispense-status-reason-vs
Title: "MedicationDispenseReasons Status"
Description: "Allowed HL7 MedicationDispense status codes with Uzbek/Russian display translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationdispense-status-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationDispenseStatusReasonCS)


* include codes from system $medicationdispense-status-reason