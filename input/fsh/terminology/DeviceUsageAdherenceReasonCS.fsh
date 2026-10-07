CodeSystem: DeviceUsageAdherenceReasonCS
Id: device-usage-adherence-reason-cs
Title: "Device usage adherence reason translations"
Description: "Device usage adherence reason supplement with translations in Uzbek and Russian"
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