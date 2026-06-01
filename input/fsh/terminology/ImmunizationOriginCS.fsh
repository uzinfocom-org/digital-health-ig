CodeSystem: ImmunizationOriginCS
Id: immunization-origin-cs
Title: "Immunization Origin translations"
Description: "Immunization Origin supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(immunization-origin-cs, $immunization-origin, 1.0.1)

* #provider "Other Provider"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa tibbiy xizmat ko‘rsatuvchi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другой поставщик"

* #record "Written Record"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yozma qayd"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Письменная запись"

* #recall "Parent/Guardian/Patient Recall"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qayta chaqiruv / Eslatma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Консультативные"

* #school "School Record"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Maktab yozuvi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Школьная запись"
