CodeSystem: PlanDefinitionTypeCS
Id: plan-definition-type-cs
Title: "UZ Core Plan Definition Type"
Description: "Codes defining the types of PlanDefinition artifacts used in clinical decision support and immunization planning."
* insert OriginalCodeSystemDraft(plan-definition-type-cs)

* #pd-type-0001-00001 "Yosh bo‘yicha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Age-based"
  * ^designation[+].language = #ru
  * ^designation[=].value = "возрастной" 

* #pd-type-0001-00002 "Mavsumiy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Seasonal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "сезонный"


* #pd-type-0001-00003 "Xavf guruhi bo‘yicha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Risk-based"
  * ^designation[+].language = #ru
  * ^designation[=].value = "риск"


* #pd-type-0001-00004 "Kampaniya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Campaign"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кампания"
