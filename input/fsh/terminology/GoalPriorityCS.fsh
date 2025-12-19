CodeSystem: GoalPriorityCS
Id: goal-priority-cs
Title: "Goal Priority CS"
Description: "Code System for Goal Priority translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(goal-priority-cs, $goal-Priority, 0.1.0)
* ^experimental = true

* #high-priority
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий приоритет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yuqori ustuvorlik"
* #medium-priority
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний приоритет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'rta ustuvorlik"
* #low-priority
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий приоритет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Past ustuvorlik"