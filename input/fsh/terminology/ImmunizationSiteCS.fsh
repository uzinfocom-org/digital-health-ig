CodeSystem: ImmunizationSiteCS
Id: immunization-site-cs
Title: "Immunization Site translations"
Description: "Immunization Site supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(immunization-site-cs, $v3-ActSite,4.0.0) 

* #LA "Left arm"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Chap qo‘l"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Левая рука"

* #RA "Right arm"
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘ng qo‘l"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Правая рука"

* #LT "Left thigh"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Chap son"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Левое бедро"

* #RT "Right thigh"
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘ng son"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Правое бедро"

