CodeSystem: EncounterTypeAmbulanceSCTCS
Id: encounter-type-ambulance-sct-cs
Title: "Encounter type ambulance SNOMED CT translations"
Description: "Encounter type ambulance SNOMED CT supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(encounter-type-ambulance-sct-cs, $sct, 2026.1.0)

* #715537001 "Transportation by ambulance"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перевозка машиной скорой медицинской помощи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tez tibbiy yordam transportida tashish"