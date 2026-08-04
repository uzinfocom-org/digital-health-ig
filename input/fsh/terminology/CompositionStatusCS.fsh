CodeSystem: CompositionStatusCS
Id: composition-status-cs
Title: "Composition status"
Description: "Composition status supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(composition-status-cs, $composition-status, 5.0.0)

* #registered
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрирован"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tgan"
* #partial
  * ^designation[0].language = #ru
  * ^designation[=].value = "Частичный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qisman"
* #preliminary
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предварительный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki"
* #final
  * ^designation[0].language = #ru
  * ^designation[=].value = "Окончательный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakuniy"
* #amended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменённый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'zgartirilgan"
* #corrected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исправленный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tuzatilgan"
* #appended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Добавленный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo'shilgan"
* #cancelled
  * ^designation[0].language = #ru      
  * ^designation[=].value = "Отмененный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введенный по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xatolik bilan kiritilgan"
* #deprecated
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устаревший"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muddati o'tgan"
* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"
