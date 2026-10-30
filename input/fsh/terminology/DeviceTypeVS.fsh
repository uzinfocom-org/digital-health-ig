ValueSet: DeviceTypeVS
Id: device-type-vs
Title: "Device Type Value Set"
Description: "SNOMED CT device types, with Uzbek and Russian translations for contraceptive devices"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceTypeCS)

* include codes from system $sct where concept is-a #49062001 "Device"