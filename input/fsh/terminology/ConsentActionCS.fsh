CodeSystem: ConsentActionCS
Id: consent-action-cs
Title: "Possible consent actions translations"
Description: "Possible consent actions supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/consent-action-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $consent-action
* ^version = "5.0.0"
* ^language = #en
* #collect
  * ^designation[0].language = #ru
  * ^designation[=].value = "Собирать"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'plash"
* #access
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доступ"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kirish"
* #use
  * ^designation[0].language = #ru
  * ^designation[=].value = "Использовать"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Foydalanish"
* #disclose
  * ^designation[0].language = #ru
  * ^designation[=].value = "Раскрыть (Передать)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kengaytirish (Transfer)"
* #correct
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доступ и исправление"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kirish va tuzatish"
