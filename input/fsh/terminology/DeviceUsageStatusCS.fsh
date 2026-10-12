CodeSystem: DeviceUsageStatusCS
Id: device-usage-status-cs
Title: "Device Usage Status"
Description: "Status codes for device usage (active, completed, not-done, entered-in-error, intended, stopped, on-hold), with UZ/RU/EN designations."

* insert SupplementCodeSystemDraft(device-usage-status-cs, $device-usage-status, 5.0.0)

* #active "Active"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"

* #completed "Completed"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tugallangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершённый"

* #not-done "Not Done"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bajarilmagan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не выполнено"

* #entered-in-error "Entered in Error"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введённый ошибочно"

* #intended "Intended"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rejalashtirilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запланированный"

* #stopped "Stopped"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Прекращённый"

* #on-hold "On Hold"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vaqtinchalik to'xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Приостановленный"
