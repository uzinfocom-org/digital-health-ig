CodeSystem: FlagStatusCS
Id: flag-status-cs
Title: "Flag status translations"
Description: "Flag status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(flag-status-cs, $flag-status, 5.0.0)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"

* #inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неактивный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nofaol"
