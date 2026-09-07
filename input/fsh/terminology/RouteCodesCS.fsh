CodeSystem: RouteCodesCS
Id: route-codes-cs
Title: "Route Codes CodeSystem"
Description: "Routes of administration used in Uzbekistan that SNOMED CT does not cover. Everything SNOMED CT covers is taken from SNOMED CT instead - see route-code-vs."
* insert OriginalCodeSystemDraft(route-codes-cs)

* #pharm-0001-0009 "Implantatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Имплантация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Implantation"

// SNOMED CT 58731000052100 "Intestinal route" was inactivated in the 2023-12-01 release
* #pharm-0001-0011 "Intestinal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Интестинальный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intestinal"

* #pharm-0001-0026 "Intraputaminal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Интрапутаминальный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intraputaminal"

* #pharm-0001-0035 "Ionoforez"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ионофорез"
  * ^designation[+].language = #en
  * ^designation[=].value = "Iontophoresis"

* #pharm-0001-0039 "Laringofaringeal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ларингофарингеальный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laryngopharyngeal"

// SNOMED CT 447202000 "Parenteral route" is a navigational concept, so it is not part of the route hierarchy
* #pharm-0001-0052 "Parenteral"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Парентеральный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Parenteral"

* #pharm-0001-0069 "Teri skarifikatsiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кожная скарификация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Skin scarification"

* #pharm-0001-0074 "Transmammar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трансмаммарный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Transmammary"
