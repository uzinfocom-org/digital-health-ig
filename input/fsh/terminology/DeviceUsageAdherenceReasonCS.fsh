CodeSystem: DeviceUsageAdherenceReasonCS
Id: device-usage-adherence-reason-cs
Title: "Device Usage Adherence Reason CodeSystem"
Description: "Codes for indicating the reason of device usage adherence with UZ/RU/EN designations."
* insert SupplementCodeSystemDraft(device-usage-adherence-reason-cs, $deviceusage-adherence-reason, 5.0.0)

* #lost "Lost"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yo‘qolgan"
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
  * ^designation[=].value = "O‘g‘irlangan"
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