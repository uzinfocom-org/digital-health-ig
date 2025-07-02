CodeSystem: ConsentStateCodesCS
Id: consent-state-codes-cs
Title: "Consent State Codes translations"
Description: "Consent State Codes supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/consent-state-codes-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $consent-state-codes
* ^version = "5.0.0"
* ^language = #en
* #draft
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ожидание"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kutilmoqda"
* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
* #inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неактивно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol emas"
* #not-done
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отказано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tashlab ketilgan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xatoda kiritilgan"
* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"
