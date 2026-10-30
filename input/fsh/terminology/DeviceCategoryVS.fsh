ValueSet: DeviceCategoryVS
Id: device-category-vs
Title: "Device Category Value Set"
Description: "Device category codes (active, communicating, dme etc.), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceCategoryCS)

* include codes from system $device-category