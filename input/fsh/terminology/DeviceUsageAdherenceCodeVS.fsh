ValueSet: DeviceUsageAdherenceCodeVS
Id: deviceusage-adherence-code-vs
Title: "Device usage adherence code"
Description: "Device usage adherence codes (always, sometimes, never), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-adherence-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageAdherenceCodeCS)

* include codes from system $deviceusage-adherence-code
