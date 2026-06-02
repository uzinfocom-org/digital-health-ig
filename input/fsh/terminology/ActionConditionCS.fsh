CodeSystem: ActionConditionCS
Id: action-condition-cs
Title: "Action condition translations"
Description: "Action condition supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystem(action-condition-cs, $action-condition-kind, 5.0.0)

* #applicability
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qo‘llanilish sharti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Условие применимости"

* #start
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshlanish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Начало"

* #stop
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tugash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершение"