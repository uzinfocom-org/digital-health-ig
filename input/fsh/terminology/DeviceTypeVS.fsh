ValueSet: DeviceTypeVS
Id: device-type-vs
Title: "Device type"
Description: "SNOMED CT devices (descendants of 49062001 Device) that can be used to administer a medication"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-type-vs"
* ^experimental = true

* include codes from system $sct where concept is-a #49062001 "Device"