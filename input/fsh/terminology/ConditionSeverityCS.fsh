CodeSystem: ConditionSeverityCS
Id: condition-severity-cs
Title: "Condition severity translations"
Description: "Condition severity supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(
    condition-severity-cs,
    $sct,
    2026.1.0
)

* #255604002 "Mild"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Легкая степень"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yengil daraja"

* #6736007 "Moderate severity"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средняя степень тяжести"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'rtacha og'irlik darajasi"

* #24484000 "Severe"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тяжелая степень"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Og'ir daraja"