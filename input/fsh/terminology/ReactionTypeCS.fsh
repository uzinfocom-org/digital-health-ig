CodeSystem: ReactionTypeCS
Id: reaction-type-cs
Title: "Reaction type translations"
Description: "Reaction type supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(
    reaction-type-cs,
    $sct,
    2026.1.0
)
* #260389003 "No reaction"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Reaksiya yo'q"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Реакция отсутствует"

* #281647001 "Adverse reaction"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Umumiy reaksiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Общая реакция"

* #95376002 "Injection site disorder"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mahalliy / Tana a'zosi reaksiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Местная реакция"