ValueSet: DeviceUsageAdherenceReasonVS
Id: deviceusage-adherence-reason-vs
Title: "DeviceUsage adherence reason"
Description: "Reasons a patient does or does not use a device as intended, such as lost, broken or forgot, with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-adherence-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageAdherenceReasonCS)

* include codes from system $deviceusage-adherence-reason
