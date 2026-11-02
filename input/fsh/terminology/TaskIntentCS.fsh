CodeSystem: TaskIntentCS
Id: task-intent-cs
Title: "Task intent translations"
Description: "Task intent supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(task-intent-cs, $task-intent, 5.0.0)

* #unknown "Unknown"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
