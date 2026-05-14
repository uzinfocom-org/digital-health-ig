CodeSystem: PublicationStatusCS
Id: publication-status-cs
Title: "Publication Status CS"
Description: "Publication status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(publication-status-cs, $publication-status, 5.0.0)
* ^experimental = true

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
  * ^designation[=].value = "Arxivlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Архивировано"

* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
