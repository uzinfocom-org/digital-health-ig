CodeSystem: CoverageKindCS
Id: coverage-kind-cs
Title: "Coverage Kind Code System"
Description: "Kind of financing or coverage source for a healthcare service in Uzbekistan"
* insert OriginalCodeSystemDraft(coverage-kind-cs)

* #state-insurance "Davlat sug'urtasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Государственное страхование"
  * ^designation[+].language = #en
  * ^designation[=].value = "State Insurance"
* #insurance "Sug'urta"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Страхование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Insurance"
* #self-pay "Shaxsiy to'lov"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Самооплата"
  * ^designation[+].language = #en
  * ^designation[=].value = "Self-pay"
* #other "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"