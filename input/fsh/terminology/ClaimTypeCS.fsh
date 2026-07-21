CodeSystem: ClaimTypeCS
Id: claim-type-cs
Title: "Claim Type CS"
Description: "Claim type supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(claim-type-cs, $claim-type, 1.0.1)

* #institutional 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Statsionar davolanish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Стационарное лечение"

* #oral 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Stomatologik xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Стоматологические услуги"

* #pharmacy 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Farmatsevtik xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фармацевтические услуги"

* #professional 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ambulator tibbiy xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Амбулаторные медицинские услуги"

* #vision 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oftalmologik xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Офтальмологические услуги"