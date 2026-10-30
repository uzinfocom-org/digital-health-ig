CodeSystem: DeviceUsageAdherenceReasonCS
Id: deviceusage-adherence-reason-cs
Title: "Device usage adherence reason translations"
Description: "Uzbek and Russian translations of the device usage adherence reason codes (lost, broken, forgot etc.)"
* insert SupplementCodeSystemDraft(deviceusage-adherence-reason-cs, $deviceusage-adherence-reason, 5.0.0)

* #lost "Lost"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yo'qolgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Потерян"

* #broken "Broken"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Buzilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сломан"

* #forgot "Forgot"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Unutgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Забыл"

* #stolen "Stolen"
  * ^designation[0].language = #uz
  * ^designation[=].value = "O'g'irlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Украден"

* #prescribed "Prescribed"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tayinlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Назначен"

* #burned "Burned"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yonib ketgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сожжен"
