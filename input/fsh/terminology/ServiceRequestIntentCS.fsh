CodeSystem: ServiceRequestIntentCS
Id: service-request-intent-cs
Title: "Service Request intent translations"
Description: "Service request intent with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(service-request-intent-cs, $service-request-intent, 5.0.0)

* #proposal
  * ^designation[0].language = #ru
  * ^designation[=].value = "предложение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "taklif"
* #plan
  * ^designation[0].language = #ru
  * ^designation[=].value = "план"
  * ^designation[+].language = #uz
  * ^designation[=].value = "reja"
* #directive
  * ^designation[0].language = #ru
  * ^designation[=].value = "распоряжение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ko'rsatma"
* #order
  * ^designation[0].language = #ru
  * ^designation[=].value = "назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "tayinlash"
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
