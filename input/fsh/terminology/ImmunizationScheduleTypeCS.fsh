CodeSystem: ImmunizationScheduleTypeCS
Id: immunization-schedule-type-cs
Title: "UZ Core Immunization Schedule Type"
Description: "Codes defining the types of ImmunizationSchedule artifacts used in clinical decision support and immunization planning."
* insert OriginalCodeSystemDraft(immunization-schedule-type-cs)

* #pd-type-0001-00001 "Yosh bo'yicha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Age-based"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Возрастной" 

* #pd-type-0001-00002 "Mavsumiy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Seasonal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сезонный"

* #pd-type-0001-00003 "Xavf guruhi bo'yicha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Risk-based"
  * ^designation[+].language = #ru
  * ^designation[=].value = "По группам риска"

* #pd-type-0001-00004 "Kampaniya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Campaign"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Кампания"
