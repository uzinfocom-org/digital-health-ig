ValueSet: RequestPriorityVS
Id: request-priority-vs
Title: "Request Priority VS"
Description: "Request priority ValueSet with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-priority-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestPriorityCS)

* include codes from system $request-priority
