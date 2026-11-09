CodeSystem: ChargeItemCodeCS
Id: charge-item-code-cs
Title: "Charge item code translations"
Description: "Charge item code supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(charge-item-code-cs, $sct, 2026.1.0)

* #373784005 "Dispensing medication"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выдача лекарств"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasini berish"
