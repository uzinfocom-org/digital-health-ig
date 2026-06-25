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
  * ^designation[=].value = "Распоряжение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'rsatma"

* #original-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Birlamchi tayinlash"

* #reflex-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рефлексное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Refleks tayinlash"

* #filler-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение исполнителя"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ijrochi tayinlashi"

* #instance-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Конкретное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aniq tayinlash"

* #option
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вариант"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Variant"
