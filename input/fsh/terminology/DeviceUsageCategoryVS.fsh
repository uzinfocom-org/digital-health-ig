ValueSet: DeviceUsageCategoryVS
Id: deviceusage-category-vs
Title: "DeviceUsage category"
Description: "DeviceUsage categories. The HL7 medicationrequest-admin-location setting codes are reused on purpose: UZ Core MedicationRequest.category uses the same codes, and they already carry Uzbek and Russian translations. FHIR R5 has no code system of its own for DeviceUsage.category."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(MedicationRequestAdminLocationCS)

* include codes from system $medicationrequest-admin-location
