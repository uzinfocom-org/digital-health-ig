CodeSystem: TelecomUseCS
Id: telecom-use-cs
Title: "Telecom use"
Description: "Telecom use type supplement with translation in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/telecom-use-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $telecom-use
* ^version = "5.0.0"
* ^language = #en

* #home
  * ^designation[0].language = #ru
  * ^designation[=].value = "дом"
  * ^designation[+].language = #uz
  * ^designation[=].value = "uy"
* #work
  * ^designation[0].language = #ru
  * ^designation[=].value = "работа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "work"
* #temp
  * ^designation[0].language = #ru
  * ^designation[=].value = "временный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "vaqtincha"
* #old
  * ^designation[0].language = #ru
  * ^designation[=].value = "старый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "old"
* #mobile
  * ^designation[0].language = #ru
  * ^designation[=].value = "мобильный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "mobil"
