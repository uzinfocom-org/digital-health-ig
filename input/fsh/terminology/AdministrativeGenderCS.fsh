CodeSystem: AdministrativeGenderCS
Id: administrative-gender-cs
Title: "Administrative gender translations"
Description: "Administrative gender supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(administrative-gender-cs, $administrative-gender, 5.0.0)

* #male
  * ^designation[0].language = #ru
  * ^designation[=].value = "мужской"
  * ^designation[+].language = #uz
  * ^designation[=].value = "erkak"
* #female
  * ^designation[0].language = #ru
  * ^designation[=].value = "женский"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ayol"
* #other
  * ^designation[0].language = #ru
  * ^designation[=].value = "другой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "boshqa"
* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "noma'lum"