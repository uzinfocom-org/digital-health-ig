CodeSystem: LocationStatusCS
Id: location-status-cs
Title: "Location status translations"
Description: "Location status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(location-status-cs, $location-status, 5.0.0)
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
