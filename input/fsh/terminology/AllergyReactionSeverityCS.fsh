CodeSystem: AllergyReactionSeverityCS
Id: allergy-reaction-severity-cs
Title: "Allergy reaction severity translations"
Description: "Allergy reaction severity supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(allergy-reaction-severity-cs, $allergy-reaction-severity, 5.0.0)

* #mild
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лёгкая"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yengil"
* #moderate
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умеренная"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'rtacha"
* #severe
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тяжёлая"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Og'ir"
