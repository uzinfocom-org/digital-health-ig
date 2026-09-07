CodeSystem: MedicationRequestIntentCS
Id: medicationrequest-intent-cs
Title: "Medication Request Intent"
Description: "Uzbek and Russian translations for the MedicationRequest intent codes."
* insert SupplementCodeSystemDraft(medicationrequest-intent-cs, $medicationrequest-intent, 5.0.0)

* #proposal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Taklif/talab"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предложение/Требование"

* #plan
  * ^designation[0].language = #uz
  * ^designation[=].value = "Reja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "План"

* #order
  * ^designation[0].language = #uz
  * ^designation[=].value = "Buyurtma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заказ"

* #original-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "Asl buyurtma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Оригинальный заказ"

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