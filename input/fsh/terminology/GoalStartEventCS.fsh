CodeSystem: GoalStartEventCS
Id: goal-start-event-cs
Title: "Goal Start Event Supplement CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for goal start event codes used in Uzbekistan."

* insert SupplementCodeSystemDraft(
    goal-start-event-cs,
    $sct,
    2026.1.0
)

* #32485007 "Admission to hospital"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Госпитализация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifoxonaga yotqizish"

* #308283009 "Discharge from hospital"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выписка из больницы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifoxonadan chiqarish"

* #442137000 "Completion time of procedure"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Время завершения процедуры"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muolajani yakunlash vaqti"

* #386216000 "Childbirth"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Роды"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tug‘ruq"