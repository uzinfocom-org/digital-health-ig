CodeSystem: NameUseCS
Id: name-use-cs
Title: "possible name uses translations"
Description: "Types of possible name uses supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/name-use-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $name-use
* ^version = "5.0.0"
* ^language = #en
* #usual
  * ^designation[0].language = #ru
  * ^designation[=].value = "обычный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "odatiy"
* #official
  * ^designation[0].language = #ru
  * ^designation[=].value = "официальный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "rasmiy"
* #temp
  * ^designation[0].language = #ru
  * ^designation[=].value = "временный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "vaqtincha"
* #nickname
  * ^designation[0].language = #ru
  * ^designation[=].value = "прозвище"
  * ^designation[+].language = #uz
  * ^designation[=].value = "taxallus"
* #anonymous
  * ^designation[0].language = #ru
  * ^designation[=].value = "анонимный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "anonim"
* #old
  * ^designation[0].language = #ru
  * ^designation[=].value = "старый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "eski"
* #maiden
  * ^designation[0].language = #ru
  * ^designation[=].value = "девичий"
  * ^designation[+].language = #uz
  * ^designation[=].value = "qizlikdagi ismi"
