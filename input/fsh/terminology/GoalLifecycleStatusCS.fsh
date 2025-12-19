CodeSystem: GoalStatusCS
Id: goal-status-cs
Title: "Goal Lifecycle Status CS"
Description: "Code System for Goal Lifecycle Status translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(goal-status-cs, $goal-status, 5.0.0)
* ^experimental = true

* #proposed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предложена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Taklif qilingan"
* #planned
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запланирована"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rejalashtirilgan"
* #accepted
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принята"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qabul qilingan"
* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активна"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
* #on-hold
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приостановлена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'xtatib turilgan"
* #completed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Завершена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bajarilgan"
* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введена по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
* #rejected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отклонена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rad etilgan"