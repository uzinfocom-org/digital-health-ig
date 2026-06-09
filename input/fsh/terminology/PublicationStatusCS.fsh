CodeSystem: PublicationStatusCS
Id: publication-status-cs
Title: "Publication status translations"
Description: "Publication status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(publication-status-cs, $publication-status, 5.0.0)

* #draft
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Черновик"

* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"

* #retired
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol emas (yakunlangan)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выведен из эксплуатации"

* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
