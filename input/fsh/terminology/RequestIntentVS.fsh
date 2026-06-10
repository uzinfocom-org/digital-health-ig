ValueSet: RequestIntentVS
Id: request-intent-vs
Title: "Request Intent VS"
Description: "Request intent ValueSet with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-intent-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestIntentCS)

* include codes from system $request-intent
