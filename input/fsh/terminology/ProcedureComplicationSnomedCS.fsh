CodeSystem: ProcedureComplicationSnomedCS
Id: procedure-complication-snomed-cs
Title: "Procedure complication translations"
Description: "Procedure complication supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(procedure-complication-snomed-cs, $sct, 2026.1.0)

* #271594007
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обморок"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hushdan ketish"

* #27942005
  * ^designation[0].language = #ru
  * ^designation[=].value = "Коллапс"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kollaps"

* #194828000
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приступ стенокардии"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Stenokardiya xuruji"

* #735173007
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анафилактический шок"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Anafilaktik shok"
