CodeSystem: EncounterLocalSubjectStatusCS
Id: encounter-local-subject-status-cs
Title: "Patient status when receiving care inpatient"
Description: "Patient status when receiving care inpatient with English and Russian translations"
* insert OriginalCodeSystemDraft(encounter-local-subject-status-cs)

* #loc-cs-001 "Tuzaldi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Recovered"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выздоровел"

* #loc-cs-002 "Ijobiy o'zgarish bilan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Improved"
  * ^designation[+].language = #ru
  * ^designation[=].value = "С положительной динамикой"

* #loc-cs-003 "O'zgarishsiz"
  * ^designation[0].language = #en
  * ^designation[=].value = "Unchanged"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Без изменений"

* #loc-cs-004 "Og'irlashdi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Worsened"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ухудшился"
