CodeSystem: BloodRhCS
Id: blood-rh-cs
Title: "RhD type translations"
Description: "RhD type supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(blood-rh-cs, $sct, 2026.1.0)

* #165747007
  * ^designation[0].language = #ru
  * ^designation[=].value = "Резус-положительный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rezus-musbat"

* #165746003
  * ^designation[0].language = #ru
  * ^designation[=].value = "Резус-отрицательный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rezus-manfiy"