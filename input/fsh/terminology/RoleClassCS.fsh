CodeSystem: RoleClassCS
Id: role-class-cs
Title: "Role class"
Description: "Provides localized definitions of role class codes in Uzbek and Russian."
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/role-class-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $v3-RoleClass
* ^version = "4.0.0"
* ^language = #en

* #NOT
  * ^designation[0].language = #ru
  * ^designation[=].value = "нотариус"
  * ^designation[+].language = #uz
  * ^designation[=].value = "notarius"
* #ECON
  * ^designation[0].language = #ru
  * ^designation[=].value = "экстренный контакт"
  * ^designation[+].language = #uz
  * ^designation[=].value = "emergency contact"
* #NOK
  * ^designation[0].language = #ru
  * ^designation[=].value = "ближайший родственник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "yaqin qarindosh"
* #EMP
  * ^designation[0].language = #ru
  * ^designation[=].value = "сотрудник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "xodim"
