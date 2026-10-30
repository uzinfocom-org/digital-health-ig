ValueSet: DeviceAvailabilityStatusVS
Id: device-availability-status-vs
Title: "Device availability status"
Description: "Device availability statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-availability-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceAvailabilityStatusCS)

* include codes from system $device-availability-status