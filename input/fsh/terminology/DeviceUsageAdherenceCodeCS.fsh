CodeSystem: DeviceUsageAdherenceCodeCS
Id: device-usage-adherence-code-cs
Title: "Device Usage Adherence Code"
Description: "Codes for indicating the adherence of device usage  with UZ/RU/EN designations."

* insert SupplementCodeSystemDraft(device-usage-adherence-code-cs, $device-usage-adherence, 5.0.0)

* #always "Always"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Doimiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Всегда"

* #sometimes "Sometimes"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ba’zan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Иногда"

* #never "Never"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Hech qachon"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Никогда"