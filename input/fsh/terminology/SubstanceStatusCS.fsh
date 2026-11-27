CodeSystem: SubstanceStatusCS
Id: substance-status-cs
Title: "Substance status translations"
Description: "Substance status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(substance-status-cs, $substance-status, 5.0.0)

* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"

* #inactive
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol emas"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неактивный"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено по ошибке"
