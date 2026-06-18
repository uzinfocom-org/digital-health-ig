CodeSystem: TaskStatusCS
Id: task-status-cs
Title: "Task Status codes translations"
Description: "Codes identifying the lifecycle stage of a task"
* insert SupplementCodeSystem(task-status-cs, $task-status, 5.0.0)

* #draft "Draft"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Черновик"

* #requested "Requested"
  * ^designation[0].language = #uz
  * ^designation[=].value = "So'ralgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запрошено"

* #received "Received"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qabul qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Получено"

* #accepted "Accepted"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qabul qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Принято"

* #rejected "Rejected"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rad etilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отклонено"

* #ready "Ready"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tayyor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Готово"

* #cancelled "Cancelled"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменено"

* #in-progress "In Progress"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Jarayonda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В процессе"

* #on-hold "On Hold"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kutishda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Приостановлено"

* #failed "Failed"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Muvaffaqiyatsiz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неудачно"

* #completed "Completed"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bajarildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершено"

* #entered-in-error "Entered in Error"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xatolik bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено с ошибкой"