CodeSystem: RequestTypeCS
Id: request-type-cs
Title: "Supply Request Types"
Description: "Types of supply requests in Uzbekistan"
* insert OriginalCodeSystemDraft(request-type-cs)

* #stock "Zaxira"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запас"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stock replenishment"

* #named "Shaxsiy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Именная"
  * ^designation[+].language = #en
  * ^designation[=].value = "Named (patient-specific)"

* #interinstitutional "Muassasalar o'rtasida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Между учреждениями"
  * ^designation[+].language = #en
  * ^designation[=].value = "Between institutions"


