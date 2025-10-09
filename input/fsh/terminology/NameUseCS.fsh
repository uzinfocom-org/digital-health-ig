CodeSystem: NameUseCS
Id: name-use-cs
Title: "Possible name uses translations"
Description: "Types of possible name uses supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(name-use-cs, $name-use, 5.0.0)
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
  * ^designation[=].value = "псевдоним"
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
  * ^designation[=].value = "nikoh uchun ism o'zgartirildi"
