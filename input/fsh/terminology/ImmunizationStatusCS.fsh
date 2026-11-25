CodeSystem: ImmunizationStatusCS
Id: immunization-status-cs
Title: "Immunization status translations"
Description: "Immunization status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(immunization-status-cs, $event-status, 5.0.0)

* #entered-in-error "Entered in Error"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato bilan kiritildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено с ошибкой"

* #completed "Completed"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yakunlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершенный"

* #not-done "Not Done"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bajarilmagan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не сделано"