CodeSystem: AllergyTypesCS
Id: allergy-types-cs
Title: "Allergy types"
Description: "Allergy types supplement with translations in uzbek and russian"
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
