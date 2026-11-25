CodeSystem: FundingSourceCS
Id: funding-source-cs
Title: "Immunization funding source translations"
Description: "Immunization funding source supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(funding-source-cs, $immunization-funding-source, 1.0.1)

* #private "Private"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xo‘jalik hisobida"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пациент платит сам / коммерческая услуга"

* #public "Public"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Davlat budjeti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Оплата государством, госбюджет"