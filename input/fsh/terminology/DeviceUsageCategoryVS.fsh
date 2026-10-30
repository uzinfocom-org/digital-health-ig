ValueSet: DeviceUsageCategoryVS
Id: deviceusage-category-vs
Title: "DeviceUsage category"
Description: "The setting in which a device is used: inpatient, outpatient or community. It reuses the HL7 medicationrequest-admin-location codes on purpose: they are the same setting codes UZ Core MedicationRequest.category uses, and they already carry Uzbek and Russian translations. FHIR R5 has no code system of its own for DeviceUsage.category."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestAdminLocationCS)

* include codes from system $medicationrequest-admin-location
