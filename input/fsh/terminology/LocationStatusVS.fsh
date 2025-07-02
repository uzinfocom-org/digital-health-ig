ValueSet: LocationStatusVS
Id: location-status-vs
Title: "Location status"
Description: "Defines type of Location `status` in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/location-status-vs"
* ^experimental = true
* include $location-status#active
  * ^designation[0].language = #ru
  * ^designation[=].value = "активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "faol"
* include $location-status#inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "неактивный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yharakatsiz"
* include $location-status#suspended
  * ^designation[0].language = #ru
  * ^designation[=].value = "приостановленный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "to'xtatilgan"
