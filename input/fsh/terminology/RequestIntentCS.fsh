CodeSystem: RequestIntentCS
Id: request-intent-cs
Title: "Request Intent CS"
Description: "Request intent supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(request-intent-cs, $request-intent, 5.0.0)
* ^experimental = true

* #proposal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Taklif"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предложение"

* #plan
  * ^designation[0].language = #uz
  * ^designation[=].value = "Reja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "План"

* #directive
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko'rsatma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Директива"

* #order
  * ^designation[0].language = #uz
  * ^designation[=].value = "Buyurtma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заказ"

* #option
  * ^designation[0].language = #uz
  * ^designation[=].value = "Variant"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вариант"
