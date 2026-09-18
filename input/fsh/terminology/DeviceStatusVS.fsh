ValueSet: DeviceStatusVS
Id: device-status-vs
Title: "Device Status Value Set"
Description: "Value set of device status codes (active, inactive, entered-in-error), with UZ/RU/EN designations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceStatusCS)

* include codes from system $device-status