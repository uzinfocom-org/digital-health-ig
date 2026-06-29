CodeSystem: DMEDRouteCodeCS
Id: dmed-route-code-cs
Title: "DMED Route Codes"
Description: "Defines routes of administration in Uzbek, Russian and English"
* insert OriginalCodeSystemDraft(dmed-route-code-cs)

* #subcutaneously "Inyektsiya, teri ostiga yuborish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подкожно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Subcutaneously"

* #intramuscularly "Inyektsiya, mushakka yuborish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутримышечно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intramuscularly"

* #intradermally "Inyektsiya, teri ichiga yuborish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутрикожно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intradermally"

* #orally "Yutish, og'iz orqali"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перорально"
  * ^designation[+].language = #en
  * ^designation[=].value = "Orally"

* #intranasally "Intranazal yuborish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Интраназально"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intranasally"