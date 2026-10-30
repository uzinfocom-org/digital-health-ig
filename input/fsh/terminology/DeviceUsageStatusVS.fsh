ValueSet: DeviceUsageStatusVS
Id: deviceusage-status-vs
Title: "DeviceUsage status"
Description: "DeviceUsage statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/deviceusage-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceUsageStatusCS)

* include codes from system $deviceusage-status
