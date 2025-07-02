ValueSet: ConsentActionVS
Id: consent-action-vs
Title: "Possible consent actions"
Description: "Determines the actions that can be taken with consent"
* ^url = "https://terminology.medcore.uz/ValueSet/consent-action-vs"
* ^status = #active
* ^experimental = true
* ^language = #en
* $consent-action#collect
* $consent-action#collect ^designation[0].language = #ru
* $consent-action#collect ^designation[=].value = "Собирать"
* $consent-action#collect ^designation[+].language = #uz
* $consent-action#collect ^designation[=].value = "To'plash"
* $consent-action#access
* $consent-action#access ^designation[0].language = #ru
* $consent-action#access ^designation[=].value = "Доступ"
* $consent-action#access ^designation[+].language = #uz
* $consent-action#access ^designation[=].value = "Kirish"
* $consent-action#use
* $consent-action#use ^designation[0].language = #ru
* $consent-action#use ^designation[=].value = "Использовать"
* $consent-action#use ^designation[+].language = #uz
* $consent-action#use ^designation[=].value = "Foydalanish"
* $consent-action#disclose
* $consent-action#disclose ^designation[0].language = #ru
* $consent-action#disclose ^designation[=].value = "Раскрыть (Передать)"
* $consent-action#disclose ^designation[+].language = #uz
* $consent-action#disclose ^designation[=].value = "Kengaytirish (Transfer)"
* $consent-action#correct
* $consent-action#correct ^designation[0].language = #ru
* $consent-action#correct ^designation[=].value = "Доступ и исправление"
* $consent-action#correct ^designation[+].language = #uz
* $consent-action#correct ^designation[=].value = "Kirish va tuzatish"
