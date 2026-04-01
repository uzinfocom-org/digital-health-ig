CodeSystem: SpecimenStatusCS
Id: specimen-status-cs
Title: "Specimen status translations"
Description: "Specimen status, supplemented with translations in Uzbek and Russian "
* insert SupplementCodeSystemDraft(specimen-status-cs, $specimen-status, 5.0.0)

* #available
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрирован"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Registratsiya qilingan"
* #unavailable
  * ^designation[0].language = #ru
  * ^designation[=].value = "Недоступно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mavjud emas"
* #unsatisfactory
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неудовлетворительно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qoniqarsiz"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
