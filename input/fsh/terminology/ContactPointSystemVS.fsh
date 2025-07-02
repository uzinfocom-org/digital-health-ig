ValueSet: ContactPointSystemVS
Id: contact-point-system-vs
Title: "Types of possible contact points"
Description: "Defines the contact point `system` types ub Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/contact-point-system-vs"
* ^experimental = true
* include $contact-point-system#phone
  * ^designation[0].language = #ru
  * ^designation[=].value = "телефон"
  * ^designation[+].language = #uz
  * ^designation[=].value = "telefon"
* include $contact-point-system#fax
  * ^designation[0].language = #ru
  * ^designation[=].value = "факс"
  * ^designation[+].language = #uz
  * ^designation[=].value = "faks"
* include $contact-point-system#email
  * ^designation[0].language = #ru
  * ^designation[=].value = "электронная почта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "elektron pochta"
* include $contact-point-system#pager
  * ^designation[0].language = #ru
  * ^designation[=].value = "пейджер"
  * ^designation[+].language = #uz
  * ^designation[=].value = "peyjer"
* include $contact-point-system#url
  * ^designation[0].language = #ru
  * ^designation[=].value = "url"
  * ^designation[+].language = #uz
  * ^designation[=].value = "url"
* include $contact-point-system#sms
  * ^designation[0].language = #ru
  * ^designation[=].value = "смс"
  * ^designation[+].language = #uz
  * ^designation[=].value = "SMS"
* include $contact-point-system#other
  * ^designation[0].language = #ru
  * ^designation[=].value = "другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "boshqa"
