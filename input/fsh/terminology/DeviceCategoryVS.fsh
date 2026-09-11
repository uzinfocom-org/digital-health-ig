ValueSet: DeviceCategoryVS
Id: device-category-vs
Title: "Device Status Value Set"
Description: "Value set of device category codes (active, communicating, dme etc.), with UZ/RU/EN designations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceCategoryCS)

* include codes from system $device-category