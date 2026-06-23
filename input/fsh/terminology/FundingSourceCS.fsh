CodeSystem: FundingSourceCS
Id: funding-source-cs
Title: "Immunization Funding Source translations"
Description: "Immunization Funding Source supplement with Uzbek and Russian translations"
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