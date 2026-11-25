CodeSystem: AppointmentTypeCS
Id: appointment-type-cs
Title: "Appointment type translations"
Description: "Appointment type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(appointment-type-cs, $v2-0276, 3.0.0)

* #ROUTINE
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плановый приём"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rejali qabul"

* #WALKIN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приём без предварительной записи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oldindan yozilmasdan qabul"

* #CHECKUP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профилактический осмотр"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Profilaktik ko'rik"

* #FOLLOWUP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повторный приём"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Takroriy qabul"

* #EMERGENCY
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экстренный приём"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shoshilinch qabul"
