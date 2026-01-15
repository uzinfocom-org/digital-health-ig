CodeSystem: AllergyCategoryCS
Id: allergy-category-cs
Title: "Allergy category"
Description: "Allergy category supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(allergy-category-cs, $allergy-category, 5.0.0)

* #food
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пища"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oziq-ovqat"
* #medication
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лекарства"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dorilar"
* #environment
  * ^designation[0].language = #ru
  * ^designation[=].value = "Окружающий среда"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Atrof-muhit"
* #biologic
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биологическая вещества"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Biologik moddalar"
