CodeSystem: RequestIntentCS
Id: request-intent-cs
Title: "Request Intent CS"
Description: "Request intent supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(request-intent-cs, $request-intent, 5.0.0)
* ^experimental = true

* #proposal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предложение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Taklif"

* #plan
  * ^designation[0].language = #ru
  * ^designation[=].value = "План"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Reja"

* #order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение / Приказ"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Buyruq / Tayinlash"