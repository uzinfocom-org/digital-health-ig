CodeSystem: TaskIntentCS
Id: task-intent-cs
Title: "Task Intent codes translations"
Description: "Codes indicating the level of authority or intention of a task"
* insert SupplementCodeSystem(task-intent-cs, $task-intent, 5.0.0)

* #unknown "Unknown"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
