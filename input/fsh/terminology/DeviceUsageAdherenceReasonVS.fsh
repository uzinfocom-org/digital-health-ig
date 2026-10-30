ValueSet: DeviceUsageAdherenceReasonVS
Id: deviceusage-adherence-reason-vs
Title: "Device usage adherence reason"
Description: "Device usage adherence reason codes (lost, broken, forgot etc.), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-adherence-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageAdherenceReasonCS)

* include codes from system $deviceusage-adherence-reason
