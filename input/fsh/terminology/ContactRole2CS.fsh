CodeSystem: ContactRole2CS
Id: contact-role2-cs
Title: "Secondary Contact Role Definitions"
Description: "Provides additional contact role codes with translations in Uzbek and Russian for use in specific contexts or implementations."
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/contact-role2-cs"
* ^status = #active
* ^experimental = true
* ^content = #supplement
* ^supplements = $v2-0131
* ^version = "2.0.0"
* ^language = #en

* #E
  * ^designation[0].language = #ru
  * ^designation[=].value = "работодатель"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ish beruvchi"
* #O
  * ^designation[0].language = #ru
  * ^designation[=].value = "другой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "boshqa"
* #U
  * ^designation[0].language = #ru
  * ^designation[=].value = "неизвестный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "noma'lum"
