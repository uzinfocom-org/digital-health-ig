ValueSet: DeviceUsageAdherenceCodeVS
Id: deviceusage-adherence-code-vs
Title: "DeviceUsage adherence code"
Description: "DeviceUsage adherence codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-adherence-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageAdherenceCodeCS)

* include codes from system $deviceusage-adherence-code
