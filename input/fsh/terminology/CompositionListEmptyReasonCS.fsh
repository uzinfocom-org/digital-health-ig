CodeSystem: CompositionListEmptyReasonCS
Id: list-empty-reason-cs
Title: "Composition list empty reason"
Description: "Composition list empty reason supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(list-empty-reason-cs, $composition-list-empty-reason, 1.0.1)

* #nilknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ничего не известно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"
* #notasked
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не спрашивалось"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'ralmagan"
* #withheld
  * ^designation[0].language = #ru
  * ^designation[=].value = "Информация удержана"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Maxfiylik sababli berilmagan"
* #unavailable
  * ^designation[0].language = #ru
  * ^designation[=].value = "Недоступно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mavjud emas"   
* #notstarted
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не начато"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshlanmagan"
* #closed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Закрыто"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yopilgan"
