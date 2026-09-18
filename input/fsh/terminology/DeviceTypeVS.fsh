ValueSet: DeviceTypeVS
Id: device-type-vs
Title: "DeviceType"
Description: "Codes used to identify medical devices. Includes concepts from SNOMED CT (http://www.snomed.org/) where concept is-a 49062001 (Device) and is provided as a suggestive example."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-type-vs"
* ^experimental = true

* include codes from system $sct where concept is-a #49062001 "Device"