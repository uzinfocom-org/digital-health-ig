ValueSet: DeviceTypeVS
Id: device-type-vs
Title: "Device Type Value Set"
Description: "Value set of device types (intrauterine contraceptive device, condom etc.), with UZ/RU/EN designations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceTypeCS)

* include codes from system device-type-cs