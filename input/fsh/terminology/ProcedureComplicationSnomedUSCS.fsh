CodeSystem: ProcedureComplicationSnomedUSCS
Id: procedure-complication-snomed-us-cs
Title: "Procedure complication US Edition translations"
Description: "Procedure complication US Edition supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(procedure-complication-snomed-us-cs, $sct, 2025.9.1)
* ^supplements = "http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20250901"

* #435001000124103 "Febrile transfusion reaction without hemolysis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фебрильная трансфузионная реакция без гемолиза"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Gemolizsiz febril transfuzion reaksiya"
