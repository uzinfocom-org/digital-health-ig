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

* #directive
  * ^designation[0].language = #ru
  * ^designation[=].value = "распоряжение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ko'rsatma"

* #original-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "первичное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "birlamchi tayinlash"
* #reflex-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "рефлексное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "refleks tayinlash"
* #filler-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "назначение исполнителя"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ijrochi tayinlashi"
* #instance-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "конкретное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "aniq tayinlash"
* #option
  * ^designation[0].language = #ru
  * ^designation[=].value = "вариант"
  * ^designation[+].language = #uz
  * ^designation[=].value = "variant"