CodeSystem: EncounterPriorityCS
Id: encounter-priority-cs
Title: "Encounter priority translations"
Description: "Encounter priority codes with English and Russian translations"
* insert SupplementCodeSystem(encounter-priority-cs, $v3ActPriority, 3.0.0)

* #EM 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Favqulodda vaziyat"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Чрезвычайная ситуация"
* #P 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Operatsiyadan oldingi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предоперационный"   
* #PRN 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Zaruratga qarab"
  * ^designation[+].language = #ru
  * ^designation[=].value = "По мере необходимости"
