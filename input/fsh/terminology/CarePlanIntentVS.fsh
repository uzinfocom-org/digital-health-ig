ValueSet: CarePlanIntentVS
Id: careplan-intent-vs
Title: "CarePlan Intent VS"
Description: "CarePlan intent codes with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/careplan-intent-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestIntentCS)

* $request-intent#proposal
* $request-intent#plan
* $request-intent#order
* $request-intent#option
* $request-intent#directive
