ValueSet: MedicationRequestIntentVS
Id: medicationrequest-intent-vs
Title: "MedicationRequest Intent ValueSet"
Description: "A value set defining the intent of a medication order (proposal, plan, order, etc.) with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-intent-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestIntentCS)

* include codes from system $medicationrequest-intent
