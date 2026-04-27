CodeSystem: EncounterPriorityCS
Id: encounter-priority-cs
Title: "Encounter priority translations"
Description: "Encounter priority supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(encounter-priority-cs, $v3ActPriority, 3.0.0)

* #EM "emergency"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Favqulodda vaziyat"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Чрезвычайная ситуация"
* #P "preop"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Operatsiyadan oldingi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предоперационный"   
* #PRN "as needed"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Zaruratga qarab"
  * ^designation[+].language = #ru
  * ^designation[=].value = "По мере необходимости"




* #A "ASAP"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Как можно скорее"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Iloji boricha tez"

* #CR "callback results"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обратный вызов по результатам"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Natija bo‘yicha qayta aloqa"

* #EL "elective"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плановый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rejalashtirilgan"

* #R "routine"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рутинный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oddiy"

* #RR "rush reporting"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Срочная отчетность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shoshilinch hisobot"

* #S "stat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Немедленно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Darhol"

* #T "timing critical"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Критично по времени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vaqtga sezgir"

* #UD "use as directed"
  * ^designation[0].language = #ru
  * ^designation[=].value = "По назначению врача"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifokor ko‘rsatmasiga binoan"

* #UR "urgent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Срочный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shoshilinch"
