ValueSet: DeviceCategoryVS
Id: device-category-vs
Title: "Device category"
Description: "Device categories"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceCategoryCS)

* include codes from system $device-category