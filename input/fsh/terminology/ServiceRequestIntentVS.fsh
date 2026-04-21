ValueSet: ServiceRequestIntentVS
Id: service-request-intent-vs
Title: "Service request intent"
Description: "Defines the set of allowed intent codes for ServiceRequest used to indicate the purpose and level of commitment of a service request within the DHP ecosystem."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-intent-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ServiceRequestIntentCS)

* include codes from system $service-request-intent
