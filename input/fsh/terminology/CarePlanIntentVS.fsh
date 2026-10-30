ValueSet: CarePlanIntentVS
Id: careplan-intent-vs
Title: "CarePlan intent"
Description: "CarePlan intents"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/careplan-intent-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestIntentCS)

* $request-intent#proposal
* $request-intent#plan
* $request-intent#order
* $request-intent#option
* $request-intent#directive
