CodeSystem: ActionCodeCS
Id: action-code-cs
Title: "Action code translations"
Description: "Action code supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystem(action-code-cs, $action-code, 5.0.0)

* #send-message
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xabar yuborish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отправить сообщение"

* #recommend-immunization
  * ^designation[0].language = #uz
  * ^designation[=].value = "Emlashni tavsiya qilish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рекомендовать вакцинацию"

* #collect-information
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ma’lumotlarni yig‘ish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Cбор информации"