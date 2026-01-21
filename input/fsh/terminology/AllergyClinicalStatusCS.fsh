CodeSystem: AllergyClinicalStatusCS
Id: allergy-clinical-status-cs
Title: "Allergy clinical status"
Description: "Allergy clinical status supplement with translations in uzbek and russian"
* insert SupplementCodeSystemDraft(allergy-clinical-status-cs, $allergy-clinical, 1.0.1)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активная"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
* #inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неактивная"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nofaol"
* #resolved
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устранена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bartaraf etilgan"
