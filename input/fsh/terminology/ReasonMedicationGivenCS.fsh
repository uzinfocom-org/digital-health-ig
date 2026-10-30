CodeSystem: ReasonMedicationGivenCS
Id: reason-medication-given-cs
Title: "Reason medication given translations"
Description: "Reason medication given supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(reason-medication-given-cs, $reason-medication-given-codes, 1.0.1)

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

* #c
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shoshilinch"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Экстренно"
