CodeSystem: ProcedureOutcomeCS
Id: procedure-outcome-cs
Title: "Procedure Outcome Supplement CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for procedure outcome codes used in Uzbekistan."

* insert SupplementCodeSystemDraft(
    procedure-outcome-cs,
    $sct,
    2026.1.0
)

* #385669000 "Successful"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Успешный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muvaffaqiyatli"

* #385670004 "Partially successful"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Частично успешный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qisman muvaffaqiyatli"

* #385671000 "Unsuccessful"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуспешный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muvaffaqiyatsiz"