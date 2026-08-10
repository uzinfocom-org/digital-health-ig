CodeSystem: CoverageKindCS
Id: coverage-kind-cs
Title: "Coverage Kind Supplement"
Description: "Coverage kind supplement with translations in uzbek and russian"
* insert SupplementCodeSystemDraft(coverage-kind-cs, $coverage-kind, 5.0.0)

* #insurance 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Страхование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sug'urta"

* #self-pay 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Самооплата"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shaxsiy to'lov"

* #other 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa"
