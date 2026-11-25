ValueSet: RequestPriorityVS
Id: request-priority-vs
Title: "Request priority"
Description: "Request priorities"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-priority-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestPriorityCS)

* include codes from system $request-priority
