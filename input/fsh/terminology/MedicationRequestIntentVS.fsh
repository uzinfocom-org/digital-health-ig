ValueSet: MedicationRequestIntentVS
Id: medicationrequest-intent-vs
Title: "Medication Request Intent ValueSet"
Description: "A value set defining the intent of a medication order (proposal, plan, order, etc.) with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/ValueSet/medicationrequest-intent"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[0].valueCanonical = Canonical(MedicationRequestIntentCS)

* include codes from system $medicationrequest-intent