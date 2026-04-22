CodeSystem: EncounterPriorityCS
Id: encounter-priority-cs
Title: "Encounter priority translations"
Description: "Encounter priority supplement with translations in Uzbek and Russian"
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
* #R 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rejalashtirilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запланированный"