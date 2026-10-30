CodeSystem: ProcedureCodeCS
Id: procedure-code-cs
Title: "Procedure code translations"
Description: "Procedure code supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystem(procedure-code-cs, $sct, 2026.1.0)

* #33879002 "Active immunization"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol immunizatsiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активная иммунизация"

* #20135006 "Screening procedure"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Skrining tekshiruvi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Скрининговое исследование"

* #25179006 "Blood donation"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qon donorligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Донорство крови"
