CodeSystem: RequestTypeCS
Id: request-type-cs
Title: "Supply request types"
Description: "Types of supply requests in Uzbekistan"
* insert OriginalCodeSystemDraft(request-type-cs)

* #req-type-0001-0001 "Zaxira"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запас"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stock replenishment"

* #req-type-0001-0002 "Shaxsiy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Именная"
  * ^designation[+].language = #en
  * ^designation[=].value = "Named (patient-specific)"

* #req-type-0001-0003 "Muassasalar o'rtasida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Между учреждениями"
  * ^designation[+].language = #en
  * ^designation[=].value = "Between institutions"
