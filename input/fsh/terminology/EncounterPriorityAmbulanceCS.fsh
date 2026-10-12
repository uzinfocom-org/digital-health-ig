CodeSystem: EncounterPriorityAmbulanceCS
Id: encounter-priority-ambulance-cs
Title: "Encounter Priority Ambulance"
Description: "Priority codes for ambulance encounters, with UZ/RU/EN designations."
* insert OriginalCodeSystemDraft(encounter-priority-ambulance-cs)

* #emer5-0005-1 "Tez tibbiy yordam"
  * ^designation[0].language = #en
  * ^designation[=].value = "Emergency Care"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Экстренная помощь"

* #emer5-0005-2 "Urgent yordam"
  * ^designation[0].language = #en
  * ^designation[=].value = "Urgent Care"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Срочная помощь"

* #emer5-0005-3 "Shoshilinch tibbiy yordam"
  * ^designation[0].language = #en
  * ^designation[=].value = "Emergency Care"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неотложная помощь"  