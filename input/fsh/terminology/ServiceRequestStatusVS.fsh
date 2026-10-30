ValueSet: ServiceRequestStatusVS
Id: service-request-status-vs
Title: "ServiceRequest status"
Description: "ServiceRequest statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ServiceRequestStatusCS)

* include codes from system $service-request-status
