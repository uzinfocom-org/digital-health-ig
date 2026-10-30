ValueSet: DeviceStatusVS
Id: device-status-vs
Title: "Device Status Value Set"
Description: "Device status codes (active, inactive, entered-in-error), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceStatusCS)

* include codes from system $device-status