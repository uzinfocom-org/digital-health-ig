CodeSystem: ContactPointSystemCS
Id: contact-point-system-cs
Title: "possible contact points translations"
Description: "Types of possible contact points supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/contact-point-system-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $contact-point-system
* ^version = "5.0.0"
* ^language = #en
* #phone
  * ^designation[0].language = #ru
  * ^designation[=].value = "телефон"
  * ^designation[+].language = #uz
  * ^designation[=].value = "telefon"
* #fax
  * ^designation[0].language = #ru
  * ^designation[=].value = "факс"
  * ^designation[+].language = #uz
  * ^designation[=].value = "faks"
* #email
  * ^designation[0].language = #ru
  * ^designation[=].value = "электронная почта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "elektron pochta"
* #pager
  * ^designation[0].language = #ru
  * ^designation[=].value = "пейджер"
  * ^designation[+].language = #uz
  * ^designation[=].value = "peyjer"
* #url
  * ^designation[0].language = #ru
  * ^designation[=].value = "url"
  * ^designation[+].language = #uz
  * ^designation[=].value = "url"
* #sms
  * ^designation[0].language = #ru
  * ^designation[=].value = "смс"
  * ^designation[+].language = #uz
  * ^designation[=].value = "SMS"
* #other
  * ^designation[0].language = #ru
  * ^designation[=].value = "другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "boshqa"
