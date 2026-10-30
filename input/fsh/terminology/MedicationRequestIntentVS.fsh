ValueSet: MedicationRequestIntentVS
Id: medicationrequest-intent-vs
Title: "MedicationRequest intent"
Description: "MedicationRequest intents"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-intent-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestIntentCS)

* include codes from system $medicationrequest-intent
