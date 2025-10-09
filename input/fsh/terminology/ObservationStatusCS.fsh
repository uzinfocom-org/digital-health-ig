CodeSystem: ObservationStatusCS
Id: observation-status-cs
Title: "Observation status translations"
Description: "Observation status with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(observation-status-cs, $observation-status, 5.0.0)

* #registered
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрирован"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Registratsiya qilingan"
* #preliminary
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предварительный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki"
* #final
  * ^designation[0].language = #ru
  * ^designation[=].value = "Финал"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Final"
* #amended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'zgartirildi"
* #corrected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исправлено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'g'rilangan"
* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено с ошибкой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato bilan kiritilgan"
* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"

