CodeSystem: RelationshipTypeCS
Id: relationship-type-cs
Title: "Relationship type"
Description: "Relationship types in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/relationship-type-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true
* #WIT "guvoh"
  * ^designation[0].language = #ru
  * ^designation[=].value = "cвидетель"
  * ^designation[+].language = #en
  * ^designation[=].value = "witness"
* #NOT "notarius"
  * ^designation[0].language = #ru
  * ^designation[=].value = "нотариус"
  * ^designation[+].language = #en
  * ^designation[=].value = "notary public"
* #ECON "favqulodda kontakt"
  * ^designation[0].language = #ru
  * ^designation[=].value = "экстренный контакт"
  * ^designation[+].language = #en
  * ^designation[=].value = "emergency contact"
* #NOK "yaqin qarindosh"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ближайший родственник"
  * ^designation[+].language = #en
  * ^designation[=].value = "next of kin"
* #EMP "xodim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "сотрудник"
  * ^designation[+].language = #en
  * ^designation[=].value = "employee"
* #E "ish beruvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "работодатель"
  * ^designation[+].language = #en
  * ^designation[=].value = "employer"
* #O "boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "другой"
  * ^designation[+].language = #en
  * ^designation[=].value = "other"
* #U "noma’lum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "неизвестный"
  * ^designation[+].language = #en
  * ^designation[=].value = "unknown"
* #INTPRTER "tarjimon"
  * ^designation[0].language = #ru
  * ^designation[=].value = "устный переводчик"
  * ^designation[+].language = #en
  * ^designation[=].value = "interpreter"
