ValueSet: ServiceRequestLocationVS
Id: service-request-location-vs
Title: "ServiceRequest location"
Description: "ServiceRequest locations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-location-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RoleCodeCS)

* include codes from system $v3-RoleCode where concept descendent-of #_ServiceDeliveryLocationRoleType
