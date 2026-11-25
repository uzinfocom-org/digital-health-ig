ValueSet: LocationStatusVS
Id: location-status-vs
Title: "Location status"
Description: "Location statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/location-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(LocationStatusCS)

* include codes from system $location-status
