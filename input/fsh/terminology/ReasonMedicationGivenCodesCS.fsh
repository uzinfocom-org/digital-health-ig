CodeSystem: ReasonMedicationGivenCodesCS
Id: reason-medication-given-codes-cs
Title: "Reason Medication Given CS"
Description: "Reason Medication Given with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(reason-medication-given-codes-cs, $reason-medication-given-codes, 5.0.0)

* #a
  * ^designation[0].language = #uz
  * ^designation[=].value = "Belgilanmagan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не указано"

* #b
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tayinlovga muvofiq berilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дано в соответствии с назначением"

* #c "Emergency"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shoshilinch"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Экстренно"