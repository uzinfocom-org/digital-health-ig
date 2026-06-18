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

* #proposal "Proposal"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Taklif"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предложение"

* #plan "Plan"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Reja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "План"

* #order "Order"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Buyurtma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заказ"

* #original-order "Original Order"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Asl buyurtma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Первоначальный заказ"

* #reflex-order "Reflex Order"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Refleks buyurtma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рефлекторный заказ"

* #filler-order "Filler Order"
  * ^designation[0].language = #uz
  * ^designation[=].value = "To'ldiruvchi buyurtma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заказ на пополнение"

* #instance-order "Instance Order"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Nusxa buyurtmasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заказ экземпляра"

* #option "Option"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tanlov"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опция"