ValueSet: DeviceAvailabilityStatusVS
Id: device-availability-status-vs
Title: "Device Availability Status Value Set"
Description: "Device availability statuses (lost, damaged, destroyed, available), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-availability-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceAvailabilityStatusCS)

* include codes from system $device-availability-status