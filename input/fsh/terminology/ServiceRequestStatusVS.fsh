ValueSet: ServiceRequestStatusVS
Id: service-request-status-vs
Title: "Service request status"
Description: "Defines the set of allowed status codes for ServiceRequest used to represent the current state of a laboratory referral or order within the DHP ecosystem."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ServiceRequestStatusCS)

* include codes from system $service-request-status
