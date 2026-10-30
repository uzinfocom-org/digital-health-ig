ValueSet: DeviceUsageStatusVS
Id: deviceusage-status-vs
Title: "Device usage status"
Description: "Device usage status codes (active, completed, not-done etc.), with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageStatusCS)

* include codes from system $deviceusage-status
