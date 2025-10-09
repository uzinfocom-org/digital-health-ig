CodeSystem: ObservationCategoryCS
Id: observation-category-cs
Title: "Observation category translations"
Description: "Observation category with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(observation-category-cs, $observation-category, 5.0.0)

* #social-history
  * ^designation[0].language = #ru
  * ^designation[=].value = "Социальная история"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ijtimoiy tarix"
* #vital-signs
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жизненно важные показатели"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hayotiy muhim ko'rsatkichlar"
* #imaging
  * ^designation[0].language = #ru
  * ^designation[=].value = "Визуализация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasvirlash"
* #laboratory
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лаборатория"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Laboratoriya"
* #procedure
  * ^designation[0].language = #ru
  * ^designation[=].value = "Процедура"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muolaja"
* #survey
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опрос/анкетирование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'rov"
* #exam
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клинический осмотр"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Klinik ko'rik"
* #therapy
  * ^designation[0].language = #ru
  * ^designation[=].value = "Терапия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Terapiya"
* #activity
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faollik"
