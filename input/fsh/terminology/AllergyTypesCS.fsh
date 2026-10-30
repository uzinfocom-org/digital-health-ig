CodeSystem: AllergyTypesCS
Id: allergy-types-cs
Title: "Allergy type translations"
Description: "Allergy type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(allergy-types-cs, $allergy-intolerance-type, 5.0.0)
* #allergy
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аллергия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Allergiya"
* #intolerance
  * ^designation[0].language = #ru
  * ^designation[=].value = "Непереносимость"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Toqat qilmaslik"
