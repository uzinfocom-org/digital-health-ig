CodeSystem: EncounterAdmitSourceAmbulanceCS
Id: encounter-admit-source-ambulance-cs
Title: "Encounter Admit Source Ambulance Codes"
Description: "Defines Encounetr Admit SOurce Ambulance codes in Uzbek, Russian and English"
* insert OriginalCodeSystemDraft(encounter-admit-source-ambulance-cs)

* #emer1-005-8 "Tibbiy tashkilot"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинская организация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical Organization"

* #emer1-005-15 "Temir yo'l stansiyasi, Metro, Aeroport"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вокзал, метро, аэропорт"
  * ^designation[+].language = #en
  * ^designation[=].value = "Train Station, Metro, Airport"
