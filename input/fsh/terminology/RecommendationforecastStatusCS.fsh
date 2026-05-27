CodeSystem: RecommendationforecastStatusCS
Id: recommendation-forecast-status-cs
Title: "Immunization recommendation forecast status translations"
Description: "Immunization recommendation forecast status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(recommendation-forecast-status-cs, $immunization-recommendation-status, 0.1.0)

* #due "Due"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подлежит вакцинации."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Emlash vaqti keldi."
* #overdue "Overdue"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подлежит вакцинации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muddati o‘tib ketgan."
* #immune "Immune"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Иммунитет сформирован."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Immunitet shakllangan"
* #contraindicated "Contraindicated"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Противопоказано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qarshi ko‘rsatma mavjud"