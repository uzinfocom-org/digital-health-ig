ValueSet: ReactionTypeVS
Id: reaction-type-vs
Title: "Reaction Type ValueSet"
Description: "Reaction type codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/reaction-type-vs"
* ^experimental = true
* ^publisher = "Uzinfocom"

* $sct#260389003 "No reaction"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Reaksiya yo'q"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Реакция отсутствует"

* $sct#281647001 "Adverse reaction"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Umumiy reaksiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Общая реакция"

* $sct#95376002 "Injection site disorder"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mahalliy / Tana a'zosi reaksiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Местная реакция"