CodeSystem: ClaimResponseTypeCS
Id: claim-response-type-cs
Title: "Claim Response Type CS"
Description: "Claim response type supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(claim-response-type-cs, $claim-response-type, 5.0.0)

* #institutional "Institutional"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Statsionar davolanish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Стационарное лечение"

* #oral "Oral"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Stomatologik xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Стоматологические услуги"

* #pharmacy "Pharmacy"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Farmatsevtik xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фармацевтические услуги"

* #professional "Professional"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ambulator tibbiy xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Амбулаторные медицинские услуги"

* #vision "Vision"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oftalmologik xizmatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Офтальмологические услуги"
