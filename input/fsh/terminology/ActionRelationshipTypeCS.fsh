CodeSystem: ActionRelationshipTypeCS
Id: action-relationship-type-cs
Title: "Action relationship type translations"
Description: "Action relationship type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(action-relationship-type-cs, $action-relationship-type, 5.0.0)

* #after
  * ^designation[0].language = #ru
  * ^designation[=].value = "после"
  * ^designation[+].language = #uz
  * ^designation[=].value = "keyin"

* #after-start
  * ^designation[0].language = #ru
  * ^designation[=].value = "после начала"
  * ^designation[+].language = #uz
  * ^designation[=].value = "boshlanishidan keyin"

* #after-end
  * ^designation[0].language = #ru
  * ^designation[=].value = "после завершения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "tugashidan keyin"