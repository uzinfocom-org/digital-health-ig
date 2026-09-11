ValueSet: DeviceAvailabilityStatusVS
Id: device-availability-status-vs
Title: "Device Availability Status Value Set"
Description: "Value set of device availability statuses (lost, damaged etc.), with UZ/RU/EN designations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-availability-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceAvailabilityStatusCS)

* include codes from system $device-availability-status