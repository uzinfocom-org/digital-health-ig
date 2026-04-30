CodeSystem: EncounterDischargeDispositionCS
Id: encounter-discharge-disposition-cs
Title: "Encounter discharge disposition translations"
Description: "Encounter discharge disposition supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(encounter-discharge-disposition-cs, $encounter-discharge-disposition, 1.0.1)

* #home "Home"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uyga"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Домой"
* #other-hcf "Other healthcare facility"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa tibbiy muassasasiga o'tkazildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Переведено ругое медицинское учреждение"
* #oth "Other"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"
* #exp "Expired"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Vafot Etdi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Умер"

