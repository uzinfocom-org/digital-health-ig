CodeSystem: RoleCodeCS
Id: role-code-cs
Title: "Role code"
Description: "Role code supplement with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/role-code-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $v3-RoleCode
* ^version = "3.0.0"
* ^language = #en

* #INTPRTER
  * ^designation[0].language = #ru
  * ^designation[=].value = "устный переводчик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "tarjimon"

* #MTH
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мать"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ona"
  
* #TPA //insurance-fund-administrator
  * ^designation[0].language = #ru
  * ^designation[=].value = "Администратор третьей стороны"
  * ^designation[+].language = #en
  * ^designation[=].value = "Uchinchi tomon administratori"

* #PAYOR //insurance-fund-employee
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контактная информация плательщика"
  * ^designation[+].language = #en
  * ^designation[=].value = "To'lovchi bilan bog'lanish"

* #ORG //department-employee
  * ^designation[0].language = #ru
  * ^designation[=].value = "Oрганизационные контакты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tashkiliy aloqa"

* #VALIDATOR //moderator
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уполномоченная организация, осуществляющая проверку информации для включения в запись."
  * ^designation[+].language = #en
  * ^designation[=].value = "Yozuvga kiritish uchun ma'lumotni tasdiqlash vakolatiga ega bo'lgan tashkilot"