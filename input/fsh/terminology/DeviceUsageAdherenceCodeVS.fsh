ValueSet: DeviceUsageAdherenceCodeVS
Id: deviceusage-adherence-code-vs
Title: "DeviceUsage adherence code"
Description: "How regularly a patient uses a device: always, sometimes or never, with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-adherence-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageAdherenceCodeCS)

* include codes from system $deviceusage-adherence-code
