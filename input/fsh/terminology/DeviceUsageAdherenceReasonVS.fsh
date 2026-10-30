ValueSet: DeviceUsageAdherenceReasonVS
Id: deviceusage-adherence-reason-vs
Title: "DeviceUsage adherence reason"
Description: "DeviceUsage adherence reasons"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-adherence-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageAdherenceReasonCS)

* include codes from system $deviceusage-adherence-reason
