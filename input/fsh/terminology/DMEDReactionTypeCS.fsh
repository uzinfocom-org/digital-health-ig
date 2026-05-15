CodeSystem: DMEDReactionTypeCS
Id: dmed-reaction-type-cs
Title: "DMED Reaction Type Translations"
Description: "DMED Reaction Type Code with Uzbek and Russian translations"
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