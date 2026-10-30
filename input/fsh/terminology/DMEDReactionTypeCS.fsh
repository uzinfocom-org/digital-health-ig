CodeSystem: DMEDReactionTypeCS
Id: dmed-reaction-type-cs
Title: "DMED reaction type"
Description: "DMED reaction types"
* insert OriginalCodeSystemDraft(dmed-reaction-type-cs)

* #none
  * ^designation[+].language = #ru
  * ^designation[=].value = "Реакция отсутствует"

* #general
  * ^designation[+].language = #ru
  * ^designation[=].value = "Общая реакция"

* #local
  * ^designation[+].language = #ru
  * ^designation[=].value = "Местная реакция"