CodeSystem: CommunicationCategoryCS
Id: communication-category-cs
Title: "Communication category translations"
Description: "Communication category supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(communication-category-cs, $communication-category, 1.0.1)

* #alert
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оповещение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ogohlantirish"

* #notification
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уведомление"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bildirishnoma"

* #reminder
  * ^designation[0].language = #ru
  * ^designation[=].value = "Напоминание"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Eslatma"

* #instruction
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инструкция"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'rsatma"
