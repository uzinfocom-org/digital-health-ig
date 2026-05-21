CodeSystem: EncounterPriorityLocalCS
Id: encounter-local-priority-cs
Title: "Encounter local priority translations"
Description: "Defines the local priority types in Uzbek and Russian"
* insert OriginalCodeSystemDraft(encounter-local-priority-cs)


* #transferred "Boshqa muassasadan ko‘chirilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Transferred from another facility"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Переведен из другого учреждения"

* #mandatory-treatment "Majburiy davolanish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Mandatory treatment"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Принудительное лечение"

* #involuntary-hospitalization "G‘ayriixtiyoriy gospitalizatsiya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Involuntary hospitalization"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Недобровольная госпитализация"