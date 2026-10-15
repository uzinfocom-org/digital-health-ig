CodeSystem: EncounterTypeAmbulanceCS
Id: encounter-type-ambulance-cs
Title: "Encounter Type Ambulance"
Description: "Encounter type codes for ambulance encounters, with UZ/RU/EN designations."
* insert OriginalCodeSystemDraft(encounter-type-ambulance-cs)

* #emer5-0006-4 "Ambulatroriya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Emergency Care"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Экстренная помощь"

* #emer5-0006-1 "Birlamchi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Primary"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Первичный"

* #emer5-0006-6 "Shoshilinch holatlar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Emergencies"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Чрезвычайные ситуации"

* #emer5-0006-11 "Konsultatsiya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Consultation"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Консультация"

* #emer154 "Shaxsiy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Personal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На себя"

* #emer5-0007-7 "Transport"
  * ^designation[0].language = #en
  * ^designation[=].value = "Transportation"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Перевозка"

* #emer5-0006-7 "Yo'lda"
  * ^designation[0].language = #en
  * ^designation[=].value = "En route"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В пути"