CodeSystem: EncounterTypeAmbulanceCS
Id: encounter-type-ambulance-cs
Title: "Encounter Type Ambulance"
Description: "Encounter type codes for ambulance encounters, with UZ/RU/EN designations."
* insert OriginalCodeSystemDraft(encounter-type-ambulance-cs)

* #emer5-0006-4 "Ambulatoriya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Outpatient"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Амбулаторно"

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

* #emer5-0006-8 "Shaxsiy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Personal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На себя"

* #emer5-0006-7 "Yo'lda"
  * ^designation[0].language = #en
  * ^designation[=].value = "En route"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В пути"

* #emer6-0001-00001 "Ahvoli og'ir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тяжёлое состояние"
  * ^designation[+].language = #en
  * ^designation[=].value = "Severe condition"

* #emer6-0001-00002 "Baxtsiz hodisa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Несчастный случай"
  * ^designation[+].language = #en
  * ^designation[=].value = "Accident"

* #emer6-0001-00003 "Surunkali kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хроническое заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chronic disease"

* #emer6-0001-00004 "To'satdan yuz bergan kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внезапно возникшее заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sudden onset of illness"

* #emer6-0001-00005 "Tug'gruq va homiladorlik patologiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Патология беременности и родов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pregnancy and childbirth complications"

* #emer6-0001-00006 "Feldsherlik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фельдшерский осмотр"
  * ^designation[+].language = #en
  * ^designation[=].value = "Paramedic examination"