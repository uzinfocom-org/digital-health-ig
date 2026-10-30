CodeSystem: DeviceUsageAdherenceCodeCS
Id: deviceusage-adherence-code-cs
Title: "DeviceUsage adherence code translations"
Description: "DeviceUsage adherence code supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(deviceusage-adherence-code-cs, $deviceusage-adherence-code, 5.0.0)

* #always "Always"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Doimiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Всегда"

* #sometimes "Sometimes"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ba'zan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Иногда"

* #never "Never"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Hech qachon"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Никогда"
