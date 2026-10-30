ValueSet: DeviceNameTypeVS
Id: device-name-type-vs
Title: "Device name type"
Description: "Device name types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-name-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceNameTypeCS)

* include codes from system $device-name-type