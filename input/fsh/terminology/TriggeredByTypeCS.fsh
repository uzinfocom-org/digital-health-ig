CodeSystem: TriggeredByTypeCS
Id: triggered-bytype-cs
Title: "Triggered by type translations"
Description: "Triggered by type words with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(triggered-bytype-cs, $triggered-by-type, 5.0.0)

* #reflex
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рефлекс"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Refleks"
* #repeat
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повторение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Takrorlash"
* #re-run
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перезапуск"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qaytadan ishga tushirish"
