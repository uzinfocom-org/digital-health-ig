CodeSystem: EncounterDischargeDispositionCS
Id: encounter-discharge-disposition-cs
Title: "Encounter discharge disposition translations"
Description: "Encounter discharge disposition codes with English and Russian translations"
* insert SupplementCodeSystem(encounter-discharge-disposition-cs, $encounter-discharge-disposition, 1.0.1)

* #home 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uyga"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Домой"
* #other-hcf 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa tibbiy muassasa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое медицинское учреждение"
* #oth "Boshqa"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"
