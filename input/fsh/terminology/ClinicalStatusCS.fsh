CodeSystem: ClinicalStatusCS
Id: clinical-status-cs
Title: "Clinical status translations"
Description: "Clinical status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(clinical-status-cs, $condition-clinical, 3.0.0)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
* #recurrence
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повторение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Takrorlanish"
* #relapse
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рецидив"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retsidiv"
* #inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неактивный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol emas"
* #remission
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ремиссия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Remissiya"
* #resolved
  * ^designation[0].language = #ru
  * ^designation[=].value = "Решено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hal qilindi"
* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"
