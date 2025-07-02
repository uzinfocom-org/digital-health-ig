CodeSystem: LocationStatusCS
Id: location-status-cs
Title: "Location status translations"
Description: "Location status supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/location-status-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $location-status
* ^version = "5.0.0"
* ^language = #en
* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "faol"
* #inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "неактивный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yharakatsiz"
* #suspended
  * ^designation[0].language = #ru
  * ^designation[=].value = "приостановленный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "to'xtatilgan"
