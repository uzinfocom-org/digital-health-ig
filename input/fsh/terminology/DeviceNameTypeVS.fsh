ValueSet: DeviceNameTypeVS
Id: device-name-type-vs
Title: "Device Name Type Value Set"
Description: "Device name types (registered-name, user-friendly-name, patient-reported-name), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-name-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceNameTypeCS)

* include codes from system $device-name-type